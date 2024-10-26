import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_header.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_vorbis_comment.dart';
import 'package:test/test.dart';

void main() {
  test('flac metadata block vorbis comment ...', () {
    var raw =
        "200000007265666572656e6365206c6962464c414320312e322e312032303037303931370b0000001e000000414c42554d3d54686520466162756c6f7573204a6f686e6e79204361736817000000414c42554d4152544953543d4a6f686e6e792043617368120000004152544953543d4a6f686e6e79204361736808000000434f4d4d454e543d09000000434f4d504f5345523d09000000444154453d313935380d00000047454e52453d436f756e7472790a000000504552464f524d45523d1a0000005449544c453d4672616e6b69652773204d616e204a6f686e6e790e000000746f74616c747261636b733d31320d000000747261636b6e756d6265723d32"
            .fromHexString();
    var block = FlacMetadataBlockVorbisComment.parse(
        FlacMetadataBlockHeader.empty(), raw);
    expect(block.vendorString, "reference libFLAC 1.2.1 20070917");
    expect(block.comments.length, 11);
    expect(block.comments[0], "ALBUM=The Fabulous Johnny Cash");
    expect(block.comments[2], "ARTIST=Johnny Cash");
    expect(block.comments[10], "tracknumber=2");
  });
}
