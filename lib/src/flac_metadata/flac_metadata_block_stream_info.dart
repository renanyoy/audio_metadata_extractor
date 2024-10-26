import 'dart:io';
import 'dart:typed_data';

import 'flac_metadata_block_header.dart';
import 'flac_metadata_block.dart';
import 'utils.dart';

class FlacMetadataBlockStreamInfo extends FlacMetadataBlock {
  // <16>	The minimum block size (in samples) used in the stream.
  final int minBlockSize;
  // <16>	The maximum block size (in samples) used in the stream. (Minimum blocksize == maximum blocksize) implies a fixed-blocksize stream.
  final int maxBlockSize;
  // <24>	The minimum frame size (in bytes) used in the stream. May be 0 to imply the value is not known.
  final int minFrameSize;
  // <24>	The maximum frame size (in bytes) used in the stream. May be 0 to imply the value is not known.
  final int maxFrameSize;
  // <20>	Sample rate in Hz. Though 20 bits are available, the maximum sample rate is limited by the structure of frame headers to 655350Hz. Also, a value of 0 is invalid.
  final int sampleRate;
  // <3>	(number of channels)-1. FLAC supports from 1 to 8 channels
  final int numberOfChannels;
  // <5>	(bits per sample)-1. FLAC supports from 4 to 32 bits per sample.
  final int bitsPerSample;
  // <36>	Total samples in stream. 'Samples' means inter-channel sample, i.e. one second of 44.1Khz audio will have 44100 samples regardless of the number of channels. A value of zero here means the number of total samples is unknown.
  final int totalSamplesInStream;
  // <128>	MD5 signature of the unencoded audio data. This allows the decoder to determine if an error exists in the audio data even when the error does not result in an invalid bitstream.
  final Uint8List md5Signature;

  FlacMetadataBlockStreamInfo(
      super.header,
      this.minBlockSize,
      this.maxBlockSize,
      this.minFrameSize,
      this.maxFrameSize,
      this.sampleRate,
      this.numberOfChannels,
      this.bitsPerSample,
      this.totalSamplesInStream,
      this.md5Signature);

  int durationMs() {
    return (1000 * totalSamplesInStream) ~/ sampleRate;
  }

  static Future<FlacMetadataBlockStreamInfo> read(
      FlacMetadataBlockHeader header, RandomAccessFile file) async {
    // <16>	The minimum block size (in samples) used in the stream.
    int minimumBlockSize = bytesToInt(await file.read(2), 0, 2);

    // <16>	The maximum block size (in samples) used in the stream. (Minimum blocksize == maximum blocksize) implies a fixed-blocksize stream.
    int maximumBlockSize = bytesToInt(await file.read(2), 0, 2);

    // <24>	The minimum frame size (in bytes) used in the stream. May be 0 to imply the value is not known.
    int minimumFrameSize = bytesToInt(await file.read(3), 0, 3);

    // <24>	The maximum frame size (in bytes) used in the stream. May be 0 to imply the value is not known.
    int maximumFrameSize = bytesToInt(await file.read(3), 0, 3);

    var buff = await file.read(8);
    // <20>	Sample rate in Hz. Though 20 bits are available, the maximum sample rate is limited by the structure of frame headers to 655350Hz. Also, a value of 0 is invalid.
    int sampleRate = bitsToInt(buff, 0, 20);

    // <3>	(number of channels)-1. FLAC supports from 1 to 8 channels
    int numberOfChannels = bitsToInt(buff, 20, 3);

    // <5>	(bits per sample)-1. FLAC supports from 4 to 32 bits per sample.
    int bitsPerSample = bitsToInt(buff, 23, 5);

    // <36>	Total samples in stream. 'Samples' means inter-channel sample, i.e. one second of 44.1Khz audio will have 44100 samples regardless of the number of channels. A value of zero here means the number of total samples is unknown.
    int totalSamplesInStream = bitsToInt(buff, 28, 36);

    // <128>	MD5 signature of the unencoded audio data. This allows the decoder to determine if an error exists in the audio data even when the error does not result in an invalid bitstream.
    Uint8List md5Signature = await file.read(16);
    return FlacMetadataBlockStreamInfo(
        header,
        minimumBlockSize,
        maximumBlockSize,
        minimumFrameSize,
        maximumFrameSize,
        sampleRate,
        numberOfChannels,
        bitsPerSample,
        totalSamplesInStream,
        md5Signature);
  }

  static FlacMetadataBlockStreamInfo parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    // <16>	The minimum block size (in samples) used in the stream.
    int minimumBlockSize = bytesToInt(buff, 0, 2); //await file.read(2), 0, 2);

    // <16>	The maximum block size (in samples) used in the stream. (Minimum blocksize == maximum blocksize) implies a fixed-blocksize stream.
    int maximumBlockSize = bytesToInt(buff, 2, 2); //await file.read(2), 0, 2);

    // <24>	The minimum frame size (in bytes) used in the stream. May be 0 to imply the value is not known.
    int minimumFrameSize = bytesToInt(buff, 4, 3); //await file.read(3), 0, 3);

    // <24>	The maximum frame size (in bytes) used in the stream. May be 0 to imply the value is not known.
    int maximumFrameSize = bytesToInt(buff, 7, 3); //await file.read(3), 0, 3);

    // var buff = await file.read(8);
    // <20>	Sample rate in Hz. Though 20 bits are available, the maximum sample rate is limited by the structure of frame headers to 655350Hz. Also, a value of 0 is invalid.
    int sampleRate = bitsToInt(buff, 10 * 8 + 0, 20);

    // <3>	(number of channels)-1. FLAC supports from 1 to 8 channels
    int numberOfChannels = bitsToInt(buff, 10 * 8 + 20, 3) + 1;

    // <5>	(bits per sample)-1. FLAC supports from 4 to 32 bits per sample.
    int bitsPerSample = bitsToInt(buff, 10 * 8 + 23, 5) + 1;

    // <36>	Total samples in stream. 'Samples' means inter-channel sample, i.e. one second of 44.1Khz audio will have 44100 samples regardless of the number of channels. A value of zero here means the number of total samples is unknown.
    int totalSamplesInStream = bitsToInt(buff, 10 * 8 + 28, 36);

    // <128>	MD5 signature of the unencoded audio data. This allows the decoder to determine if an error exists in the audio data even when the error does not result in an invalid bitstream.
    Uint8List md5Signature =
        Uint8List.view(buff.buffer, 18, 16); // await file.read(16);
    return FlacMetadataBlockStreamInfo(
        header,
        minimumBlockSize,
        maximumBlockSize,
        minimumFrameSize,
        maximumFrameSize,
        sampleRate,
        numberOfChannels,
        bitsPerSample,
        totalSamplesInStream,
        md5Signature);
  }

  @override
  String toString() {
    return 'FlacMetadataBlockStreamInfo(minimumBlockSize: $minBlockSize, maximumBlockSize: $maxBlockSize, minimumFrameSize: $minFrameSize, maximumFrameSize: $maxFrameSize, sampleRate: $sampleRate, numberOfChannels: $numberOfChannels, bitsPerSample: $bitsPerSample, totalSamplesInStream: $totalSamplesInStream, md5Signature: $md5Signature)';
  }
}
