// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:typed_data';
import 'package:audio_metadata_extractor/src/aac_metadata/aac_atom_names.dart';
import 'package:audio_metadata_extractor/src/aac_metadata/aac_key_value_atom.dart';
import 'package:audio_metadata_extractor/src/aac_metadata/atoms_reader.dart';
import 'package:audio_metadata_extractor/src/extensions/list_extension.dart';

class AacMetaAtom {
  final List<AacKeyValueAtom> atoms;

  AacMetaAtom(this.atoms);

  AacKeyValueAtom? getAtom(String name) =>
      atoms.findFirst((atom) => atom.atomType == name);

  String? getText(List<String> names) => names
      .mapFirst(
          (name) => atoms.findFirst((atom) => atom.atomType == name)?.dataAtom)
      ?.valueStr;

  @override
  String toString() => 'AacMetaAtom(atoms: ${atoms.map((e) => e.atomType)})';

  // https://developer.apple.com/documentation/quicktime-file-format/metadata_item_list_atom
  static const metaAtomILST = "ilst";

  static AacMetaAtom? parse(Uint8List buff, int offset, int length) {
    // print("Parse 'meta'");
    List<AacKeyValueAtom> atoms = [];
    var reader = AtomsReader(buff, offset, length);
    reader.skip(4); // ???
    while (reader.next()) {
      // print(reader.atomType);
      if (reader.atomType == metaAtomILST) {
        var reader2 = reader.childs();
        while (reader2.next()) {
          if (!aacIgnoreAtomNames.contains(reader2.atomType)) {
            atoms.add(reader2.asTextAtom());
          }
          // switch (reader2.atomType) {
          //   case '----':
          //     // ignore
          //     break;
          //   case "covr": // cover artwork, list of MP4Cover objects (which are tagged strs)
          //     // var covr = reader2.asTextAtom();
          //     // var rawValue = covr.dataAtom?.valueRaw;
          //     // if (rawValue != null) {
          //     //   var file = File("./covr.jpg");
          //     //   if (file.existsSync()) {
          //     //     file.deleteSync();
          //     //   }
          //     //   var writer = file.openSync(mode: FileMode.write);
          //     //   writer.writeFromSync(rawValue);
          //     // }
          //     // print("${covr.atomType} -- [${covr.dataAtom?.rawValueLength}]");
          //     break;
          //   case aacAtomNameLyrics: // lyrics
          //   case "©nam": // track title
          //   case "©ART": // artist
          //   case "aART": // album artist
          //   case "©alb": // album
          //   case "©day": // year
          //   case "keyw": // podcast keywords
          //   case "©too": // encoded by
          //   case "©gen": // genre
          //   case "©com": //	Composer
          //   case "©aut": // Author
          //   case "©des": // Description
          //   case "©pub": // Publisher
          //   case "©st3": // Subtitle
          //   case "©trk": // Track
          //   case "©wrt": // Composer
          //   case "purd": // PurchaseDate -- ignore?
          //   case "sonm": // title sort order
          //   case "soar": // artist sort order
          //   case "soal": // album sort order
          //   case "cprt": // copyright
          //   case "apID": // AppleStoreAccount
          //   case "©grp": // Grouping
          //     // string
          //     atoms.add(reader2.asTextAtom());
          //     break;
          //   // Tuples of ints (multiple values per key are supported):
          //   case "trkn": // track number, total tracks
          //   case "disk": // disc number, total discs
          //     // var trkn = reader2.asTextAtom();
          //     // print("${trkn.atomType} -- ${trkn.dataAtom?.valueInts}");
          //     atoms.add(reader2.asTextAtom());
          //     break;
          //   case "cpil": // part of a compilation
          //   case "pgap": // part of a gapless album
          //   case "pcst": // podcast (iTunes reads this only on import)
          //     // var b = reader2.asTextAtom();
          //     // print(
          //     //     "${b.atomType} -- ${b.dataAtom?.valueBool} -- ${b.dataAtom?.valueInt}");
          //     break;
          //   case "tmpo": // tempo/BPM
          //   case "rtng": // Content Rating (0 = none, 1 = Explicit, 2 = Clean, 4 = Explicit (old))
          //   case "tves": // TV Episode
          //   case "tvsn": // TV Season
          //   case "cnID": // AppleStoreCatalogID
          //   case "atID": // ArtistID
          //   case "cmID": // ComposerID
          //   case "plID": // AlbumID
          //   case "geID": // GenreID
          //   case "sfID": // AppleStoreCountry
          //   case "akID": // AppleStoreAccountType (0 = iTunes, 1 = AOL)
          //   case "chpl": // TODO: ChapterList
          //   case "stik": // TODO: MediaType ->
          // 0 = Movie (old)
          // 1 = Normal (Music)
          // 2 = Audiobook
          // 5 = Whacked Bookmark
          // 6 = Music Video
          // 9 = Movie	  	10 = TV Show
          // 11 = Booklet
          // 14 = Ringtone
          // 21 = Podcast
          // 23 = iTunes U
          //     // var numb = reader2.asTextAtom();
          //     // print("${numb.atomType} -- ${numb.dataAtom?.valueInt}");
          //     atoms.add(reader2.asTextAtom());
          //     break;
          //   case "gnre": // ID3v1 genre
          //     var gnre = reader2.asTextAtom();
          //     print("\t\t${gnre.atomType} -- ${gnre.dataAtom?.valueInt}");
          //     var reader3 = reader2.childs();
          //     while (reader3.next()) {
          //       print(
          //           "${reader3.atomType} -- ${reader3.atomData.toHexString()}");
          //     }
          //     break;
          //   default:
          //     var text = reader2.asTextAtom();
          //     print(text.atomType);
          //     print(
          //         "\t${text.atomType} --[${text.dataLength},${text.dataAtom?.rawValueLength}] \"${text.dataAtom?.valueStr}\"");
          //     break;
          // }
        }
      }
    }
    return AacMetaAtom(atoms);
  }
}
