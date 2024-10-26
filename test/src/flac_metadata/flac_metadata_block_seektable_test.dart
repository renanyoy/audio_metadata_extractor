import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_header.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_seektable.dart';
import 'package:test/test.dart';

void main() {
  test('parse flac metadata block seektable ...', () {
    var raw =
        "000000000000000000000000000000001000000000000006b00000000000000a6a22100000000000000d70000000000000154641100000000000001420000000000000202dab100000000000001ae00000000000002af50b1000000000000021a000000000000036035a10000000000000285000000000000040cc43100000000000002f100000000000004c02081000000000000035d0000000000000570473100000000000003c8000000000000061fb391000000000000043400000000000006d1fe9100000000000004a00000000000000781d101000000000000050b0000000000000830d591000000000000057700000000000008e208a1000"
            .fromHexString();
    var block =
        FlacMetadataBlockSeektable.parse(FlacMetadataBlockHeader.empty(), raw);

    expect(block.seekpoints.length, 14);
    var first = block.seekpoints.first;
    var last = block.seekpoints.last;

    expect(first.sampleNumber, 0);
    expect(first.streamOffset, 0);
    expect(first.numberOfSamples, 4096);

    expect(last.sampleNumber, 5730304);
    expect(last.streamOffset, 9314442);
    expect(last.numberOfSamples, 4096);
  });
}
