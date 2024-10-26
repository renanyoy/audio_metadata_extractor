// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:audio_metadata_extractor/src/flac_metadata/utils.dart';

class AacMvhdAtom {
  final int version; //1
  final int flags; //3
  final int creationTime; //4
  final int modificationTime; //4
  final int timeScale; // 4
  final int duration; //4
  final int preferredRate; //4
  final int preferredVolume; //2
// final int matrixStructure ;//36
  final int previewTime; // 4
  final int previewDuration; // 4
  final int posterTime; //4
  final int selectionTime; // 4
  final int selectionDuration; // 4
  final int currentTime; // 4
  final int nextTrackID; //4

  double calcDuration() => duration / timeScale;

  AacMvhdAtom(
      this.version,
      this.flags,
      this.creationTime,
      this.modificationTime,
      this.timeScale,
      this.duration,
      this.preferredRate,
      this.preferredVolume,
      this.previewTime,
      this.previewDuration,
      this.posterTime,
      this.selectionTime,
      this.selectionDuration,
      this.currentTime,
      this.nextTrackID);

  factory AacMvhdAtom.parse(Uint8List buff, int offset, int size) {
    final int version = bytesToInt(buff, offset, 1);
    offset += 1;
    final int flags = bytesToInt(buff, offset, 3);
    offset += 3;
    final int creationTime = bytesToInt(buff, offset, 4);
    offset += 4;
    final int modificationTime = bytesToInt(buff, offset, 4);
    offset += 4;
    final int timeScale = bytesToInt(buff, offset, 4);
    offset += 4;
    final int duration = bytesToInt(buff, offset, 4);
    offset += 4;
    final int preferredRate = bytesToInt(buff, offset, 4);
    offset += 4;
    final int preferredVolume = bytesToInt(buff, offset, 2);
    offset += 2;
    // final int matrixStructure ;//36
    offset += 36;
    final int previewTime = bytesToInt(buff, offset, 4);
    offset += 4;
    final int previewDuration = bytesToInt(buff, offset, 4);
    offset += 4;
    final int posterTime = bytesToInt(buff, offset, 4);
    offset += 4;
    final int selectionTime = bytesToInt(buff, offset, 4);
    offset += 4;
    final int selectionDuration = bytesToInt(buff, offset, 4);
    offset += 4;
    final int currentTime = bytesToInt(buff, offset, 4);
    offset += 4;
    final int nextTrackID = bytesToInt(buff, offset, 4);
    offset += 4;

    return AacMvhdAtom(
        version,
        flags,
        creationTime,
        modificationTime,
        timeScale,
        duration,
        preferredRate,
        preferredVolume,
        previewTime,
        previewDuration,
        posterTime,
        selectionTime,
        selectionDuration,
        currentTime,
        nextTrackID);
  }

  @override
  String toString() {
    return 'AacMvhdAtom(version: $version, flags: $flags, creationTime: $creationTime, modificationTime: $modificationTime, timeScale: $timeScale, duration: $duration, preferredRate: $preferredRate, preferredVolume: $preferredVolume, previewTime: $previewTime, previewDuration: $previewDuration, posterTime: $posterTime, selectionTime: $selectionTime, selectionDuration: $selectionDuration, currentTime: $currentTime, nextTrackID: $nextTrackID)';
  }
}
