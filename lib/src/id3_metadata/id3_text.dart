import 'dart:typed_data';

import 'id3_context.dart';
import 'id3_tag.dart';

/// If nothing else is said a string is represented as ISO-8859-1 = latin1
class ID3Text extends ID3Tag {
  final ID3Context context;
  // $FF FE or $FE FF
  final int encodingByte;

  ID3Text(
      this.context, super.buff, super.tagId, super.dataOffset, super.dataLength)
      : encodingByte = dataLength > 0 ? buff[dataOffset] : 0;

  String get value =>
      context.decode(buff, encodingByte, dataOffset + 1, dataLength - 1);
  // .getEncoding(encodingByte)
  // .decode(Uint8List.view(buff.buffer, dataOffset + 1, dataLength - 0));
  Uint8List get valueRaw =>
      buff.sublist(dataOffset + 1, dataOffset + dataLength);

  @override
  String toString() =>
      'ID3Text(tagId: $tagId, encodingByte: $encodingByte, value: "$value")'; //, data: $valueRaw)';

  static const List<String> tags = [
    "TPE1", // The ‘Lead artist(s)/Lead performer(s)/Soloist(s)/Performing group’
    "TPE2", // The ‘Band/Orchestra/Accompaniment’
    "TPE3", // The ‘Conductor’
    "TPE4", // The ‘Interpreted, remixed, or otherwise modified by’
    "TIT1", // The ‘Content group description’
    "TIT2", // The ‘Title/Songname/Content description’
    "TIT3", // The ‘Subtitle/Description refinement’
    "TALB", // The ‘Album/Movie/Show title’
    "TYER", // The ‘Year’ frame is a numeric string with a year of the recording.
    "TRCK", // The ‘Track number/Position in set’
    "TCON", // The ‘Content type’
    "TENC", // The ‘Encoded by’
    "TPOS", // The ‘Part of a set’ frame is a numeric string that describes which part of a set the audio came from. This frame is used if the source described in the “TALB” frame is divided into several mediums, e.g. a double CD. The value may be extended with a “/” character and a numeric string containing the total number of parts in the set. E.g. “1/2”.
    "TCOM", // Composer(s)
    "TCOP", // Copyright message
    "TLAN", // The ‘Language(s)’
    "TLEN", // The ‘Length’ frame contains the length of the audiofile in milliseconds, represented as a numeric string.
    "TPUB", // The ‘Publisher’
    "TDAT", // The ‘Date’ frame is a numeric string in the DDMM format containing the date for the recording.
    "TPE3", // The ‘Conductor’ frame is used for the name of the conductor.
    "TRSN", // The ‘Internet radio station name’
    "TPE4", // The ‘Interpreted, remixed, or otherwise modified by’
    "TFLT", // The ‘File type’ frame indicates which type of audio this tag defines.
    "TDRC", //
    "TMED", // The ‘Media type’ frame describes from which media the sound originated.
    "TEXT", // The ‘Lyricist(s)/Text writer(s)’
    "TBPM", // The ‘BPM’ frame contains the number of beats per minute in the mainpart of the audio.
    "TDLY", // The ‘Playlist delay’ defines the numbers of milliseconds of silence between every song in a playlist.
    "TIME", // The ‘Time’ frame is a numeric string in the HHMM format containing the time for the recording.
    "TKEY", // The ‘Initial key’ frame contains the musical key in which the sound starts.
    "TOAL", // The ‘Original album/movie/show title’
    "TOFN", // The ‘Original filename’
    "TOLY", // The ‘Original lyricist(s)/text writer(s)’
    "TOPE", // The ‘Original artist(s)/performer(s)’
    "TORY", // The ‘Original release year’
    "TOWN", // The ‘File owner/licensee’
    "TRDA", // The ‘Recording dates’
    "TRSO", // The ‘Internet radio station owner’
    "TSIZ", // The ‘Size’
    "TSRC", // The ‘ISRC’ frame should contain the International Standard Recording Code [ISRC] (12 characters).
    "TSSE", // The ‘Software/Hardware and settings used for encoding’
  ];
}
