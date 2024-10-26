import 'dart:convert';
import 'dart:typed_data';

import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';

import 'flac_metadata_block.dart';
import 'flac_metadata_block_header.dart';
import 'utils.dart';

/// <n>	Also known as FLAC tags, the contents of a vorbis comment packet as
/// specified here (without the framing bit). Note that the vorbis comment
/// spec allows for on the order of 2 ^ 64 bytes of data where as the FLAC
/// metadata block is limited to 2 ^ 24 bytes. Given the stated purpose of
/// vorbis comments, i.e. human-readable textual information, this limit is
/// unlikely to be restrictive. Also note that the 32-bit field lengths are
/// little-endian coded according to the vorbis spec, as opposed to the usual
/// big-endian coding of fixed-length integers in the rest of FLAC.
class FlacMetadataBlockVorbisComment extends FlacMetadataBlock {
  final String vendorString;
  final List<String> comments;
  final Map<String, String> values = {};

  FlacMetadataBlockVorbisComment(
      super.header, this.vendorString, this.comments) {
    for (var s in comments) {
      if (s.contains("=")) {
        values[s.beforeToken("=").toLowerCase()] = s.afterToken("=");
      }
    }
  }

  String? getValue(String s) {
    return values[s.toLowerCase()];
  }

  factory FlacMetadataBlockVorbisComment.parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    List<String> comments = [];
    // https://www.xiph.org/vorbis/doc/v-comment.html
    // The comment header is decoded as follows:
    // 1) [vendor_length] = read an unsigned integer of 32 bits
    int vendorLength = bytesToIntLE(buff, 0, 4);
    // 2) [vendor_string] = read a UTF-8 vector as [vendor_length] octets
    String vendorString =
        utf8.decode(Uint8List.view(buff.buffer, 4, vendorLength));
    int offset = 4 + vendorLength;
    // 3) [user_comment_list_length] = read an unsigned integer of 32 bits
    int userCommentListLength = bytesToIntLE(buff, offset, 4);
    offset += 4;
    // 4) iterate [user_comment_list_length] times {
    for (var i = 0; i < userCommentListLength; i++) {
      // 5) [length] = read an unsigned integer of 32 bits
      int length = bytesToIntLE(buff, offset, 4);
      offset += 4;
      // 6) this iteration's user comment = read a UTF-8 vector as [length] octets
      String s = utf8.decode(Uint8List.view(buff.buffer, offset, length));
      comments.add(s);
      offset += length;
    }
    // 7) [framing_bit] = read a single bit as boolean
    // 8) if ( [framing_bit] unset or end of packet ) then ERROR
    // 9) done.
    return FlacMetadataBlockVorbisComment(header, vendorString, comments);
  }
}
