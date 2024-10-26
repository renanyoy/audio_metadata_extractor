import 'dart:typed_data';

import 'flac_metadata_block_header.dart';
import 'flac_metadata_block.dart';
import 'utils.dart';

class FlacMetadataBlockCuesheet extends FlacMetadataBlock {
  // <128*8>	Media catalog number, in ASCII printable characters 0x20-0x7e. In general, the media catalog number may be 0 to 128 bytes long; any unused characters should be right-padded with NUL characters. For CD-DA, this is a thirteen digit number, followed by 115 NUL bytes.
  final Uint8List mediaCatalogNumber;
  // <64>	The number of lead-in samples. This field has meaning only for CD-DA cuesheets; for other uses it should be 0. For CD-DA, the lead-in is the TRACK 00 area where the table of contents is stored; more precisely, it is the number of samples from the first sample of the media to the first sample of the first index point of the first track. According to the Red Book, the lead-in must be silence and CD grabbing software does not usually store it; additionally, the lead-in must be at least two seconds but may be longer. For these reasons the lead-in length is stored here so that the absolute position of the first track can be computed. Note that the lead-in stored here is the number of samples up to the first index point of the first track, not necessarily to INDEX 01 of the first track; even the first track may have INDEX 00 data.
  final int numberOfSamples;
  // <1>	1 if the CUESHEET corresponds to a Compact Disc, else 0.
  final bool isCD;
  // <7+258*8>	Reserved. All bits must be set to zero.
  // <8>	The number of tracks. Must be at least 1 (because of the requisite lead-out track). For CD-DA, this number must be no more than 100 (99 regular tracks and one lead-out track).
  final int numberOfTracks;
  // CUESHEET_TRACK+	One or more tracks. A CUESHEET block is required to have a lead-out track; it is always the last track in the CUESHEET. For CD-DA, the lead-out track number must be 170 as specified by the Red Book, otherwise is must be 255.
  final List<FlacMetadataCuesheetTrack> tracks;

  FlacMetadataBlockCuesheet(super.header, this.mediaCatalogNumber,
      this.numberOfSamples, this.isCD, this.numberOfTracks, this.tracks);

  factory FlacMetadataBlockCuesheet.parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    Uint8List mediaCatalogNumber = Uint8List.view(buff.buffer, 0, 128);
    int numberOfSamples = bytesToInt(buff, 128, 8);
    bool isCD = bitsToInt(buff, (128 + 8) * 8, 1) == 1;
    int numberOfTracks = bytesToInt(buff, 395, 1);
    List<FlacMetadataCuesheetTrack> tracks = [];
    int offset = 396;
    for (var i = 0; i < numberOfTracks; i++) {
      //
      int trackOffsetInSamples = bytesToInt(buff, offset, 8);
      offset += 8;
      int trackNumber = bytesToInt(buff, offset, 1);
      offset += 1;
      var trackISRC = Uint8List.view(buff.buffer, offset, 12);
      offset += 12;
      var trackType = bitsToInt(buff, offset * 8 + 0, 1) == 1;
      var preEmphasis = bitsToInt(buff, offset + 22 * 8 + 1, 1) == 1;
      offset += 14;
      int numberOfTrackIndexPoints = bytesToInt(buff, offset, 1);
      offset += 1;
      List<FlacMetadataCuesheetTrackIndex> indices = [];
      for (var i = 0; i < numberOfTrackIndexPoints; i++) {
        indices.add(FlacMetadataCuesheetTrackIndex(
          bytesToInt(buff, offset + 0, 8),
          bytesToInt(buff, offset + 8, 1),
        ));
        offset += 9;
      }
      tracks.add(FlacMetadataCuesheetTrack(
          trackOffsetInSamples,
          trackNumber,
          trackISRC,
          trackType,
          preEmphasis,
          numberOfTrackIndexPoints,
          indices));
    }
    return FlacMetadataBlockCuesheet(header, mediaCatalogNumber,
        numberOfSamples, isCD, numberOfTracks, tracks);
  }

  @override
  String toString() {
    return 'FlacMetadataBlockCuesheet(mediaCatalogNumber: $mediaCatalogNumber, numberOfSamples: $numberOfSamples, isCD: $isCD, numberOfTracks: $numberOfTracks, tracks: $tracks)';
  }
}

class FlacMetadataCuesheetTrack {
  // <64>	Track offset in samples, relative to the beginning of the FLAC audio stream. It is the offset to the first index point of the track. (Note how this differs from CD-DA, where the track's offset in the TOC is that of the track's INDEX 01 even if there is an INDEX 00.) For CD-DA, the offset must be evenly divisible by 588 samples (588 samples = 44100 samples/sec * 1/75th of a sec).
  final int trackOffsetInSamples;
  // <8>	Track number. A track number of 0 is not allowed to avoid conflicting with the CD-DA spec, which reserves this for the lead-in. For CD-DA the number must be 1-99, or 170 for the lead-out; for non-CD-DA, the track number must for 255 for the lead-out. It is not required but encouraged to start with track 1 and increase sequentially. Track numbers must be unique within a CUESHEET.
  final int trackNumber;
  // <12*8>	Track ISRC. This is a 12-digit alphanumeric code; see here and here. A value of 12 ASCII NUL characters may be used to denote absence of an ISRC.
  final Uint8List trackISRC;
  // <1>	The track type: 0 for audio, 1 for non-audio. This corresponds to the CD-DA Q-channel control bit 3.
  final bool trackType;
  // <1>	The pre-emphasis flag: 0 for no pre-emphasis, 1 for pre-emphasis. This corresponds to the CD-DA Q-channel control bit 5; see here.
  final bool preEmphasis;
  // <6+13*8>	Reserved. All bits must be set to zero.
  // <8>	The number of track index points. There must be at least one index in every track in a CUESHEET except for the lead-out track, which must have zero. For CD-DA, this number may be no more than 100.
  final int numberOfTrackIndexPoints;
  // CUESHEET_TRACK_INDEX+	For all tracks except the lead-out track, one or more track index points.
  final List<FlacMetadataCuesheetTrackIndex> indices;

  factory FlacMetadataCuesheetTrack.parse(Uint8List buff) {
    int trackOffsetInSamples = bytesToInt(buff, 0, 8);
    int trackNumber = bytesToInt(buff, 9, 1);
    var trackISRC = Uint8List.view(buff.buffer, 10, 12);
    var trackType = bitsToInt(buff, 22 * 8 + 0, 1) == 1;
    var preEmphasis = bitsToInt(buff, 22 * 8 + 1, 1) == 1;
    int numberOfTrackIndexPoints = bytesToInt(buff, 36, 1);
    List<FlacMetadataCuesheetTrackIndex> indices = [];
    int offset = 37;
    for (var i = 0; i < numberOfTrackIndexPoints; i++) {
      indices.add(FlacMetadataCuesheetTrackIndex(
        bytesToInt(buff, offset, 8),
        bytesToInt(buff, offset, 1),
      ));
      offset += 9;
    }
    return FlacMetadataCuesheetTrack(trackOffsetInSamples, trackNumber,
        trackISRC, trackType, preEmphasis, numberOfTrackIndexPoints, indices);
  }

  FlacMetadataCuesheetTrack(
      this.trackOffsetInSamples,
      this.trackNumber,
      this.trackISRC,
      this.trackType,
      this.preEmphasis,
      this.numberOfTrackIndexPoints,
      this.indices);

  @override
  String toString() {
    return 'FlacMetadataCuesheetTrack(trackOffsetInSamples: $trackOffsetInSamples, trackNumber: $trackNumber, trackISRC: $trackISRC, trackType: $trackType, preEmphasis: $preEmphasis, numberOfTrackIndexPoints: $numberOfTrackIndexPoints, indices: $indices)';
  }
}

class FlacMetadataCuesheetTrackIndex {
  // <64>	Offset in samples, relative to the track offset, of the index point. For CD-DA, the offset must be evenly divisible by 588 samples (588 samples = 44100 samples/sec * 1/75th of a sec). Note that the offset is from the beginning of the track, not the beginning of the audio data.
  final int offsetInSamples;
  // <8>	The index point number. For CD-DA, an index number of 0 corresponds to the track pre-gap. The first index in a track must have a number of 0 or 1, and subsequently, index numbers must increase by 1. Index numbers must be unique within a track.
  final int indexPointNumber;
  // <3*8>	Reserved. All bits must be set to zero.
  FlacMetadataCuesheetTrackIndex(this.offsetInSamples, this.indexPointNumber);

  @override
  String toString() =>
      'FlacMetadataCuesheetTrackIndex(offsetInSamples: $offsetInSamples, indexPointNumber: $indexPointNumber)';
}
