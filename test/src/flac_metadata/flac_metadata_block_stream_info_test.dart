import 'package:audio_metadata_extractor/src/extensions/list_extension.dart';
import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_header.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_stream_info.dart';
import 'package:test/test.dart';

void main() {
  test('flac metadata block stream info ...', () {
    var raw =
        "1000100000081f001efe0ac442f0005cef0819a81dc82a58221e7b11c8df1dc6cae2"
            .fromHexString();
    var streamInfo =
        FlacMetadataBlockStreamInfo.parse(FlacMetadataBlockHeader.empty(), raw);
    expect(streamInfo.minBlockSize, 4096);
    expect(streamInfo.maxBlockSize, 4096);
    expect(streamInfo.minFrameSize, 2079);
    expect(streamInfo.maxFrameSize, 7934);
    expect(streamInfo.sampleRate, 44100);
    expect(streamInfo.numberOfChannels, 2);
    expect(streamInfo.bitsPerSample, 16);
    expect(streamInfo.totalSamplesInStream, 6090504);
    expect(streamInfo.md5Signature.toHexString(),
        "19a81dc82a58221e7b11c8df1dc6cae2");
    expect(streamInfo.durationMs(), 138106);
  });
}
