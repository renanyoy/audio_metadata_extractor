import 'dart:convert';
import 'dart:typed_data';

import 'utils.dart';
import 'id3_tag.dart';

class ID3Picture extends ID3Tag {
  final String mimeType;
  final String description;
  final int pictureType;
  final int pictureOffset;
  final int pictureLength;

  ID3Picture(
      super.buff,
      super.tagId,
      super.dataOffset,
      super.dataLength,
      this.mimeType,
      this.description,
      this.pictureType,
      this.pictureOffset,
      this.pictureLength);

  Uint8List get pictureData =>
      Uint8List.view(buff.buffer, pictureOffset, pictureLength);

  static ID3Picture? parse(
      Uint8List buff, String tagId, int dataOffset, int dataLength) {
    int offset = dataOffset;
    // <Header for ‘Attached picture’, ID: “APIC”>
    // Text encoding $xx
    offset++;
    // MIME type <text string>
    var mimeType = parseString(buff, offset, 64, latin1);
    // offset += mimeType.length;
    offset = mimeType.$2;
    // $00
    offset++;
    // Picture type
    int pictureType = buff[offset];
    offset++;
    // $xx
    // offset++;
    // Description <text string according to encoding>
    var description = parseString(buff, offset, 64, latin1);
    offset = description.$2;
    // $00 (00)
    offset++;
    // Picture data <binary data>
    return ID3Picture(
        buff,
        tagId,
        dataOffset,
        dataLength,
        mimeType.$1,
        description.$1,
        pictureType,
        offset,
        dataLength - (offset - dataOffset));
  }

  @override
  String toString() {
    return 'ID3Picture(mimeType: $mimeType, description: $description, pictureOffset: $pictureOffset, pictureLength: $pictureLength)';
  }

  static const String tagIdAPIC = "APIC";

  static const pictureTypeOther = 0x00; // Other
  static const pictureTypeFileIcon =
      0x01; // 32x32 pixels ‘file icon’ (PNG only)
  static const pictureTypeOtherFileIcon = 0x02; // Other file icon
  static const pictureTypeCoverFront = 0x03; // Cover (front)
  static const pictureTypeCoverBack = 0x04; // Cover (back)
  static const pictureTypeLeafletPage = 0x05; // Leaflet page
  static const pictureTypeMedia = 0x06; // Media (e.g. lable side of CD)
  static const pictureTypeLeadArtist =
      0x07; // Lead artist/lead performer/soloist
  static const pictureTypeArtist = 0x08; // Artist/performer
  static const pictureTypeConductor = 0x09; // Conductor
  static const pictureTypeBand = 0x0A; // Band/Orchestra
  static const pictureTypeComposer = 0x0B; // Composer
  static const pictureTypeLyricist = 0x0C; // Lyricist/text writer
  static const pictureTypeRecordingLocation = 0x0D; // Recording Location
  static const pictureTypeDuringRecording = 0x0E; // During recording
  static const pictureTypeDuringPerformance = 0x0F; // During performance
  static const pictureTypeVideoCapture = 0x10; // Movie/video screen capture
  static const pictureTypeBrightColouredFish = 0x11; // A bright coloured fish
  static const pictureTypeIllustration = 0x12; // Illustration
  static const pictureTypeArtistLogotype = 0x13; // Band/artist logotype
  static const pictureTypePublisherLogotype = 0x14; // Publisher/Studio logotype
}
