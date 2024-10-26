import 'dart:convert';
import 'dart:typed_data';

import 'flac_metadata_block_header.dart';
import 'flac_metadata_block.dart';
import 'utils.dart';

class FlacMetadataBlockPicture extends FlacMetadataBlock {
  static const pictureTypeOther = 0;
  //32x32 pixels 'file icon' (PNG only)
  static const pictureTypeFileIcon32x32 = 1;
  static const pictureTypeOtherFileIcon = 2;
  static const pictureTypeCoverFront = 3;
  static const pictureTypeCoverBack = 4;
  static const pictureTypeLeafletPage = 5;
  // Media (e.g. label side of CD)
  static const pictureTypeMedia = 6;
  // Lead artist/lead performer/soloist
  static const pictureTypeLead = 7;
  // Artist/performer
  static const pictureTypeArtist = 8;
  static const pictureTypeConductor = 9;
  // Band/Orchestra
  static const pictureTypeBand = 10;
  static const pictureTypeComposer = 11;
  // Lyricist/text writer
  static const pictureTypeLyricist = 12;
  static const pictureTypeRecordingLocation = 13;
  static const pictureTypeDuringRecording = 14;
  static const pictureTypeDuringPerformance = 15;
  static const pictureTypeVideoScreenCapture = 16;
  // A bright coloured fish
  static const pictureTypeBrightColouredFish = 17;
  static const pictureTypeIllustration = 18;
  // Band/artist logotype
  static const pictureTypeArtistLogotype = 19;
  // Publisher/Studio logotype
  static const pictureTypePublisherLogotype = 20;

  // <32> The picture type according to the ID3v2 APIC frame:
  final int pictureType;
  // <32>	The length of the MIME type string in bytes.
  // <n*8>	The MIME type string, in printable ASCII characters 0x20-0x7e. The MIME type may also be --> to signify that the data part is a URL of the picture instead of the picture data itself.
  final String mimeType;
  // <32>	The length of the description string in bytes.
  // <n*8>	The description of the picture, in UTF-8.
  final String description;
  // <32>	The width of the picture in pixels.
  final int width;
  // <32>	The height of the picture in pixels.
  final int height;
  // <32>	The color depth of the picture in bits-per-pixel.
  final int bitsPerPixel;
  // <32>	For indexed-color pictures (e.g. GIF), the number of colors used, or 0 for non-indexed pictures.
  final int indexedColors;
  // <32>	The length of the picture data in bytes.
  // <n*8>	The binary picture data.
  final Uint8List data;

  FlacMetadataBlockPicture(
      super.header,
      this.pictureType,
      this.mimeType,
      this.description,
      this.width,
      this.height,
      this.bitsPerPixel,
      this.indexedColors,
      this.data);

  factory FlacMetadataBlockPicture.parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    int offset = 0;
    // <32> The picture type according to the ID3v2 APIC frame:
    int pictureType = bytesToInt(buff, offset, 4);
    offset += 4;
    // <32>	The length of the MIME type string in bytes.
    // <n*8>	The MIME type string, in printable ASCII characters 0x20-0x7e. The MIME type may also be --> to signify that the data part is a URL of the picture instead of the picture data itself.
    int mimeTypeLen = bytesToInt(buff, offset, 4);
    offset += 4;
    String mimeType =
        latin1.decode(Uint8List.view(buff.buffer, offset, mimeTypeLen));
    offset += mimeTypeLen;
    // <32>	The length of the description string in bytes.
    int descriptionLen = bytesToInt(buff, offset, 4);
    offset += 4;
    // <n*8>	The description of the picture, in UTF-8.
    String description =
        latin1.decode(Uint8List.view(buff.buffer, offset, descriptionLen));
    offset += descriptionLen;
    // <32>	The width of the picture in pixels.
    int width = bytesToInt(buff, offset, 4);
    offset += 4;
    // <32>	The height of the picture in pixels.
    int height = bytesToInt(buff, offset, 4);
    offset += 4;
    // <32>	The color depth of the picture in bits-per-pixel.
    int bitsPerPixel = bytesToInt(buff, offset, 4);
    offset += 4;
    // <32>	For indexed-color pictures (e.g. GIF), the number of colors used, or 0 for non-indexed pictures.
    int indexedColors = bytesToInt(buff, offset, 4);
    offset += 4;
    // <32>	The length of the picture data in bytes.
    int dataLen = bytesToInt(buff, offset, 4);
    offset += 4;
    // <n*8>	The binary picture data.
    Uint8List data = Uint8List.view(buff.buffer, offset, dataLen);
    return FlacMetadataBlockPicture(header, pictureType, mimeType, description,
        width, height, bitsPerPixel, indexedColors, data);
  }

  @override
  String toString() {
    return 'FlacMetadataBlockPicture(pictureType: $pictureType, mimeType: $mimeType, description: $description, width: $width, height: $height, bitsPerPixel: $bitsPerPixel, indexedColors: $indexedColors, data: [${data.length}])';
  }
}
