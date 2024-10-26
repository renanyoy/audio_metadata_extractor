# audio_metadata

Extremely fast (Dart Language) and easy-to-use metadata extractor from mp3, m4a, m4bm, aac, mp4, flac audio files. Optimized for network operation (minimum number of file reads).


## Examples

1. Extract metadata from file.

```dart
void main() async {
    final file = File("./audio.flac");
    final metadata = await AudioMetadata.extract(file);
    if (metadata != null) {
        print("album: ${metadata.album}");
        print("firstArtists: ${metadata.firstArtists}");
        print("secondArtists: ${metadata.secondArtists}");
        print("trackName: ${metadata.trackName}");
        print("composer: ${metadata.composer}");
        print("cover: ${metadata.coverData?.length}");
    }
}
```

2. Extract metadata from url.

```dart
void main() async {
    // File format must be determined
    final filename = "01.mp3";
    final url = Uri.parse("https://downloader.disk.bestaudio.music/path/to/your/file/?id=[file_id]");
    final metadata = await AudioMetadata.extractFromUri(url, filename: filename);
    if (metadata != null) {
        print("album: ${metadata.album}");
        print("firstArtists: ${metadata.firstArtists}");
        print("secondArtists: ${metadata.secondArtists}");
        print("trackName: ${metadata.trackName}");
        print("composer: ${metadata.composer}");
        print("cover: ${metadata.coverData?.length}");
    }
}
```

3. Extract metadata from any other source like samba or ftp file. You need implement `RandomAccessFile`.

```dart
void main() async {
    // File format must be determined
    final filename = "01.mp3";
    RandomAccessFile file = CustomRandomAccessFile();
    final metadata = await AudioMetadata.extractFromRandomAccessFile(file, filename: filename);
    if (metadata != null) {
        print("album: ${metadata.album}");
        print("firstArtists: ${metadata.firstArtists}");
        print("secondArtists: ${metadata.secondArtists}");
        print("trackName: ${metadata.trackName}");
        print("composer: ${metadata.composer}");
        print("cover: ${metadata.coverData?.length}");
    }
}
```
