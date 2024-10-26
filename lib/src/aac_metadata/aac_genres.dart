enum AacGenreKind {
  music,
  fitnessMusic,
  musicVideos,
  tones,
  tvShows,
  movies,
  podcasts,
  audiobooks,
  books,
  textbooks,
  iTunesU,
  appStore,
  macAppStore
}

typedef AacGenre = ({AacGenreKind kind, String genre});

const Map<int, AacGenre> aacGenres = {
  2: (kind: AacGenreKind.music, genre: "Blues"),
  3: (kind: AacGenreKind.music, genre: "Comedy"),
  4: (kind: AacGenreKind.music, genre: "Children's Music"),
  5: (kind: AacGenreKind.music, genre: "Classical"),
  6: (kind: AacGenreKind.music, genre: "Country"),
  7: (kind: AacGenreKind.music, genre: "Electronic"),
  8: (kind: AacGenreKind.music, genre: "Holiday"),
  9: (kind: AacGenreKind.music, genre: "Classical|Opera"),
  10: (kind: AacGenreKind.music, genre: "Singer/Songwriter"),
  11: (kind: AacGenreKind.music, genre: "Jazz"),
  12: (kind: AacGenreKind.music, genre: "Latino"),
  13: (kind: AacGenreKind.music, genre: "New Age"),
  14: (kind: AacGenreKind.music, genre: "Pop"),
  15: (kind: AacGenreKind.music, genre: "R&B/Soul"),
  16: (kind: AacGenreKind.music, genre: "Soundtrack"),
  17: (kind: AacGenreKind.music, genre: "Dance"),
  18: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap"),
  19: (kind: AacGenreKind.music, genre: "World"),
  20: (kind: AacGenreKind.music, genre: "Alternative"),
  21: (kind: AacGenreKind.music, genre: "Rock"),
  22: (kind: AacGenreKind.music, genre: "Christian & Gospel"),
  23: (kind: AacGenreKind.music, genre: "Vocal"),
  24: (kind: AacGenreKind.music, genre: "Reggae"),
  25: (kind: AacGenreKind.music, genre: "Easy Listening"),
  26: (kind: AacGenreKind.podcasts, genre: ""),
  27: (kind: AacGenreKind.music, genre: "J-Pop"),
  28: (kind: AacGenreKind.music, genre: "Enka"),
  29: (kind: AacGenreKind.music, genre: "Anime"),
  30: (kind: AacGenreKind.music, genre: "Kayokyoku"),
  31: (kind: AacGenreKind.musicVideos, genre: ""),
  32: (kind: AacGenreKind.tvShows, genre: ""),
  33: (kind: AacGenreKind.movies, genre: ""),
  34: (kind: AacGenreKind.music, genre: ""),
// 35: (kind: AacGenreKind.iPod, genre: "Games"),
  36: (kind: AacGenreKind.appStore, genre: ""),
  37: (kind: AacGenreKind.tones, genre: ""),
  38: (kind: AacGenreKind.books, genre: ""),
  39: (kind: AacGenreKind.macAppStore, genre: ""),
  40: (kind: AacGenreKind.textbooks, genre: ""),
  50: (kind: AacGenreKind.music, genre: "Fitness & Workout"),
  51: (kind: AacGenreKind.music, genre: "Pop|K-Pop"),
  52: (kind: AacGenreKind.music, genre: "Karaoke"),
  53: (kind: AacGenreKind.music, genre: "Instrumental"),
  74: (kind: AacGenreKind.audiobooks, genre: "News"),
  75: (kind: AacGenreKind.audiobooks, genre: "Programs & Performances"),
  500: (kind: AacGenreKind.fitnessMusic, genre: ""),
  501: (kind: AacGenreKind.fitnessMusic, genre: "Pop"),
  502: (kind: AacGenreKind.fitnessMusic, genre: "Dance"),
  503: (kind: AacGenreKind.fitnessMusic, genre: "Hip-Hop"),
  504: (kind: AacGenreKind.fitnessMusic, genre: "Rock"),
  505: (kind: AacGenreKind.fitnessMusic, genre: "Alt/Indie"),
  506: (kind: AacGenreKind.fitnessMusic, genre: "Latino"),
  507: (kind: AacGenreKind.fitnessMusic, genre: "Country"),
  508: (kind: AacGenreKind.fitnessMusic, genre: "World"),
  509: (kind: AacGenreKind.fitnessMusic, genre: "New Age"),
  510: (kind: AacGenreKind.fitnessMusic, genre: "Classical"),
  1001: (kind: AacGenreKind.music, genre: "Alternative|College Rock"),
  1002: (kind: AacGenreKind.music, genre: "Alternative|Goth Rock"),
  1003: (kind: AacGenreKind.music, genre: "Alternative|Grunge"),
  1004: (kind: AacGenreKind.music, genre: "Alternative|Indie Rock"),
  1005: (kind: AacGenreKind.music, genre: "Alternative|New Wave"),
  1006: (kind: AacGenreKind.music, genre: "Alternative|Punk"),
  1007: (kind: AacGenreKind.music, genre: "Blues|Chicago Blues"),
  1009: (kind: AacGenreKind.music, genre: "Blues|Classic Blues"),
  1010: (kind: AacGenreKind.music, genre: "Blues|Contemporary Blues"),
  1011: (kind: AacGenreKind.music, genre: "Blues|Country Blues"),
  1012: (kind: AacGenreKind.music, genre: "Blues|Delta Blues"),
  1013: (kind: AacGenreKind.music, genre: "Blues|Electric Blues"),
  1014: (kind: AacGenreKind.music, genre: "Children's Music|Lullabies"),
  1015: (kind: AacGenreKind.music, genre: "Children's Music|Sing-Along"),
  1016: (kind: AacGenreKind.music, genre: "Children's Music|Stories"),
  1017: (kind: AacGenreKind.music, genre: "Classical|Avant-Garde"),
  1018: (kind: AacGenreKind.music, genre: "Classical|Baroque Era"),
  1019: (kind: AacGenreKind.music, genre: "Classical|Chamber Music"),
  1020: (kind: AacGenreKind.music, genre: "Classical|Chant"),
  1021: (kind: AacGenreKind.music, genre: "Classical|Choral"),
  1022: (kind: AacGenreKind.music, genre: "Classical|Classical Crossover"),
  1023: (kind: AacGenreKind.music, genre: "Classical|Early Music"),
  1024: (kind: AacGenreKind.music, genre: "Classical|Impressionist"),
  1025: (kind: AacGenreKind.music, genre: "Classical|Medieval Era"),
  1026: (kind: AacGenreKind.music, genre: "Classical|Minimalism"),
  1027: (kind: AacGenreKind.music, genre: "Classical|Modern Era"),
  1028: (kind: AacGenreKind.music, genre: "Classical|Opera"),
  1029: (kind: AacGenreKind.music, genre: "Classical|Orchestral"),
  1030: (kind: AacGenreKind.music, genre: "Classical|Renaissance"),
  1031: (kind: AacGenreKind.music, genre: "Classical|Romantic Era"),
  1032: (kind: AacGenreKind.music, genre: "Classical|Wedding Music"),
  1033: (kind: AacGenreKind.music, genre: "Country|Alternative Country"),
  1034: (kind: AacGenreKind.music, genre: "Country|Americana"),
  1035: (kind: AacGenreKind.music, genre: "Country|Bluegrass"),
  1036: (kind: AacGenreKind.music, genre: "Country|Contemporary Bluegrass"),
  1037: (kind: AacGenreKind.music, genre: "Country|Contemporary Country"),
  1038: (kind: AacGenreKind.music, genre: "Country|Country Gospel"),
  1039: (kind: AacGenreKind.music, genre: "Country|Honky Tonk"),
  1040: (kind: AacGenreKind.music, genre: "Country|Outlaw Country"),
  1041: (kind: AacGenreKind.music, genre: "Country|Traditional Bluegrass"),
  1042: (kind: AacGenreKind.music, genre: "Country|Traditional Country"),
  1043: (kind: AacGenreKind.music, genre: "Country|Urban Cowboy"),
  1044: (kind: AacGenreKind.music, genre: "Dance|Breakbeat"),
  1045: (kind: AacGenreKind.music, genre: "Dance|Exercise"),
  1046: (kind: AacGenreKind.music, genre: "Dance|Garage"),
  1047: (kind: AacGenreKind.music, genre: "Dance|Hardcore"),
  1048: (kind: AacGenreKind.music, genre: "Dance|House"),
  1049: (kind: AacGenreKind.music, genre: "Dance|Jungle/Drum'n'bass"),
  1050: (kind: AacGenreKind.music, genre: "Dance|Techno"),
  1051: (kind: AacGenreKind.music, genre: "Dance|Trance"),
  1052: (kind: AacGenreKind.music, genre: "Jazz|Big Band"),
  1053: (kind: AacGenreKind.music, genre: "Jazz|Bop"),
  1054: (kind: AacGenreKind.music, genre: "Easy Listening|Lounge"),
  1055: (kind: AacGenreKind.music, genre: "Easy Listening|Swing"),
  1056: (kind: AacGenreKind.music, genre: "Electronic|Ambient"),
  1057: (kind: AacGenreKind.music, genre: "Electronic|Downtempo"),
  1058: (kind: AacGenreKind.music, genre: "Electronic|Electronica"),
  1060: (kind: AacGenreKind.music, genre: "Electronic|IDM/Experimental"),
  1061: (kind: AacGenreKind.music, genre: "Electronic|Industrial"),
  1062: (kind: AacGenreKind.music, genre: "Singer/Songwriter|Alternative Folk"),
  1063: (
    kind: AacGenreKind.music,
    genre: "Singer/Songwriter|Contemporary Folk"
  ),
  1064: (
    kind: AacGenreKind.music,
    genre: "Singer/Songwriter|Contemporary Singer/Songwriter"
  ),
  1065: (kind: AacGenreKind.music, genre: "Singer/Songwriter|Folk-Rock"),
  1066: (kind: AacGenreKind.music, genre: "Singer/Songwriter|New Acoustic"),
  1067: (kind: AacGenreKind.music, genre: "Singer/Songwriter|Traditional Folk"),
  1068: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Alternative Rap"),
  1069: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Dirty South"),
  1070: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|East Coast Rap"),
  1071: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Gangsta Rap"),
  1072: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Hardcore Rap"),
  1073: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Hip-Hop"),
  1074: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Latin Rap"),
  1075: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Old School Rap"),
  1076: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Rap"),
  1077: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Underground Rap"),
  1078: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|West Coast Rap"),
  1079: (kind: AacGenreKind.music, genre: "Holiday|Chanukah"),
  1080: (kind: AacGenreKind.music, genre: "Holiday|Christmas"),
  1081: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Children's"),
  1082: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Classic"),
  1083: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Classical"),
  1084: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Jazz"),
  1085: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Modern"),
  1086: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Pop"),
  1087: (kind: AacGenreKind.music, genre: "Holiday|Christmas: R&B"),
  1088: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Religious"),
  1089: (kind: AacGenreKind.music, genre: "Holiday|Christmas: Rock"),
  1090: (kind: AacGenreKind.music, genre: "Holiday|Easter"),
  1091: (kind: AacGenreKind.music, genre: "Holiday|Halloween"),
  1092: (kind: AacGenreKind.music, genre: "Holiday|Holiday: Other"),
  1093: (kind: AacGenreKind.music, genre: "Holiday|Thanksgiving"),
  1094: (kind: AacGenreKind.music, genre: "Christian & Gospel|CCM"),
  1095: (kind: AacGenreKind.music, genre: "Christian & Gospel|Christian Metal"),
  1096: (kind: AacGenreKind.music, genre: "Christian & Gospel|Christian Pop"),
  1097: (kind: AacGenreKind.music, genre: "Christian & Gospel|Christian Rap"),
  1098: (kind: AacGenreKind.music, genre: "Christian & Gospel|Christian Rock"),
  1099: (
    kind: AacGenreKind.music,
    genre: "Christian & Gospel|Classic Christian"
  ),
  1100: (
    kind: AacGenreKind.music,
    genre: "Christian & Gospel|Contemporary Gospel"
  ),
  1101: (kind: AacGenreKind.music, genre: "Christian & Gospel|Gospel"),
  1103: (
    kind: AacGenreKind.music,
    genre: "Christian & Gospel|Praise & Worship"
  ),
  1104: (kind: AacGenreKind.music, genre: "Christian & Gospel|Southern Gospel"),
  1105: (
    kind: AacGenreKind.music,
    genre: "Christian & Gospel|Traditional Gospel"
  ),
  1106: (kind: AacGenreKind.music, genre: "Jazz|Avant-Garde Jazz"),
  1107: (kind: AacGenreKind.music, genre: "Jazz|Contemporary Jazz"),
  1108: (kind: AacGenreKind.music, genre: "Jazz|Crossover Jazz"),
  1109: (kind: AacGenreKind.music, genre: "Jazz|Dixieland"),
  1110: (kind: AacGenreKind.music, genre: "Jazz|Fusion"),
  1111: (kind: AacGenreKind.music, genre: "Jazz|Latin Jazz"),
  1112: (kind: AacGenreKind.music, genre: "Jazz|Mainstream Jazz"),
  1113: (kind: AacGenreKind.music, genre: "Jazz|Ragtime"),
  1114: (kind: AacGenreKind.music, genre: "Jazz|Smooth Jazz"),
  1115: (kind: AacGenreKind.music, genre: "Latino|Latin Jazz"),
  1116: (kind: AacGenreKind.music, genre: "Latino|Contemporary Latin"),
  1117: (kind: AacGenreKind.music, genre: "Latino|Pop Latino"),
  1118: (kind: AacGenreKind.music, genre: "Latino|Raices"),
  1119: (kind: AacGenreKind.music, genre: "Latino|Urbano latino"),
  1120: (kind: AacGenreKind.music, genre: "Latino|Baladas y Boleros"),
  1121: (kind: AacGenreKind.music, genre: "Latino|Rock y Alternativo"),
  1122: (kind: AacGenreKind.music, genre: "Brazilian"),
  1123: (kind: AacGenreKind.music, genre: "Latino|Musica Mexicana"),
  1124: (kind: AacGenreKind.music, genre: "Latino|Musica tropical"),
  1125: (kind: AacGenreKind.music, genre: "New Age|Environmental"),
  1126: (kind: AacGenreKind.music, genre: "New Age|Healing"),
  1127: (kind: AacGenreKind.music, genre: "New Age|Meditation"),
  1128: (kind: AacGenreKind.music, genre: "New Age|Nature"),
  1129: (kind: AacGenreKind.music, genre: "New Age|Relaxation"),
  1130: (kind: AacGenreKind.music, genre: "New Age|Travel"),
  1131: (kind: AacGenreKind.music, genre: "Pop|Adult Contemporary"),
  1132: (kind: AacGenreKind.music, genre: "Pop|Britpop"),
  1133: (kind: AacGenreKind.music, genre: "Pop|Pop/Rock"),
  1134: (kind: AacGenreKind.music, genre: "Pop|Soft Rock"),
  1135: (kind: AacGenreKind.music, genre: "Pop|Teen Pop"),
  1136: (kind: AacGenreKind.music, genre: "R&B/Soul|Contemporary R&B"),
  1137: (kind: AacGenreKind.music, genre: "R&B/Soul|Disco"),
  1138: (kind: AacGenreKind.music, genre: "R&B/Soul|Doo Wop"),
  1139: (kind: AacGenreKind.music, genre: "R&B/Soul|Funk"),
  1140: (kind: AacGenreKind.music, genre: "R&B/Soul|Motown"),
  1141: (kind: AacGenreKind.music, genre: "R&B/Soul|Neo-Soul"),
  1142: (kind: AacGenreKind.music, genre: "R&B/Soul|Quiet Storm"),
  1143: (kind: AacGenreKind.music, genre: "R&B/Soul|Soul"),
  1144: (kind: AacGenreKind.music, genre: "Rock|Adult Alternative"),
  1145: (kind: AacGenreKind.music, genre: "Rock|American Trad Rock"),
  1146: (kind: AacGenreKind.music, genre: "Rock|Arena Rock"),
  1147: (kind: AacGenreKind.music, genre: "Rock|Blues-Rock"),
  1148: (kind: AacGenreKind.music, genre: "Rock|British Invasion"),
  1149: (kind: AacGenreKind.music, genre: "Rock|Death Metal/Black Metal"),
  1150: (kind: AacGenreKind.music, genre: "Rock|Glam Rock"),
  1151: (kind: AacGenreKind.music, genre: "Rock|Hair Metal"),
  1152: (kind: AacGenreKind.music, genre: "Rock|Hard Rock"),
  1153: (kind: AacGenreKind.music, genre: "Rock|Metal"),
  1154: (kind: AacGenreKind.music, genre: "Rock|Jam Bands"),
  1155: (kind: AacGenreKind.music, genre: "Rock|Prog-Rock/Art Rock"),
  1156: (kind: AacGenreKind.music, genre: "Rock|Psychedelic"),
  1157: (kind: AacGenreKind.music, genre: "Rock|Rock & Roll"),
  1158: (kind: AacGenreKind.music, genre: "Rock|Rockabilly"),
  1159: (kind: AacGenreKind.music, genre: "Rock|Roots Rock"),
  1160: (kind: AacGenreKind.music, genre: "Rock|Singer/Songwriter"),
  1161: (kind: AacGenreKind.music, genre: "Rock|Southern Rock"),
  1162: (kind: AacGenreKind.music, genre: "Rock|Surf"),
  1163: (kind: AacGenreKind.music, genre: "Rock|Tex-Mex"),
  1165: (kind: AacGenreKind.music, genre: "Soundtrack|Foreign Cinema"),
  1166: (kind: AacGenreKind.music, genre: "Soundtrack|Musicals"),
  1167: (kind: AacGenreKind.music, genre: "Comedy|Novelty"),
  1168: (kind: AacGenreKind.music, genre: "Soundtrack|Original Score"),
  1169: (kind: AacGenreKind.music, genre: "Soundtrack|Soundtrack"),
  1171: (kind: AacGenreKind.music, genre: "Comedy|Standup Comedy"),
  1172: (kind: AacGenreKind.music, genre: "Soundtrack|TV Soundtrack"),
  1173: (kind: AacGenreKind.music, genre: "Vocal|Standards"),
  1174: (kind: AacGenreKind.music, genre: "Vocal|Traditional Pop"),
  1175: (kind: AacGenreKind.music, genre: "Jazz|Vocal Jazz"),
  1176: (kind: AacGenreKind.music, genre: "Vocal|Vocal Pop"),
  1177: (kind: AacGenreKind.music, genre: "African|Afro-Beat"),
  1178: (kind: AacGenreKind.music, genre: "African|Afro-Pop"),
  1179: (kind: AacGenreKind.music, genre: "World|Cajun"),
  1180: (kind: AacGenreKind.music, genre: "World|Celtic"),
  1181: (kind: AacGenreKind.music, genre: "World|Celtic Folk"),
  1182: (kind: AacGenreKind.music, genre: "World|Contemporary Celtic"),
  1183: (kind: AacGenreKind.music, genre: "Reggae|Modern Dancehall"),
  1184: (kind: AacGenreKind.music, genre: "World|Drinking Songs"),
  1185: (kind: AacGenreKind.music, genre: "Indian|Indian Pop"),
  1186: (kind: AacGenreKind.music, genre: "World|Japanese Pop"),
  1187: (kind: AacGenreKind.music, genre: "World|Klezmer"),
  1188: (kind: AacGenreKind.music, genre: "World|Polka"),
  1189: (kind: AacGenreKind.music, genre: "World|Traditional Celtic"),
  1190: (kind: AacGenreKind.music, genre: "World|Worldbeat"),
  1191: (kind: AacGenreKind.music, genre: "World|Zydeco"),
  1192: (kind: AacGenreKind.music, genre: "Reggae|Roots Reggae"),
  1193: (kind: AacGenreKind.music, genre: "Reggae|Dub"),
  1194: (kind: AacGenreKind.music, genre: "Reggae|Ska"),
  1195: (kind: AacGenreKind.music, genre: "World|Caribbean"),
  1196: (kind: AacGenreKind.music, genre: "World|South America"),
  1197: (kind: AacGenreKind.music, genre: "Arabic"),
  1198: (kind: AacGenreKind.music, genre: "World|North America"),
  1199: (kind: AacGenreKind.music, genre: "World|Hawaii"),
  1200: (kind: AacGenreKind.music, genre: "World|Australia"),
  1201: (kind: AacGenreKind.music, genre: "World|Japan"),
  1202: (kind: AacGenreKind.music, genre: "World|France"),
  1203: (kind: AacGenreKind.music, genre: "African"),
  1204: (kind: AacGenreKind.music, genre: "World|Asia"),
  1205: (kind: AacGenreKind.music, genre: "World|Europe"),
  1206: (kind: AacGenreKind.music, genre: "World|South Africa"),
  1207: (kind: AacGenreKind.music, genre: "Jazz|Hard Bop"),
  1208: (kind: AacGenreKind.music, genre: "Jazz|Trad Jazz"),
  1209: (kind: AacGenreKind.music, genre: "Jazz|Cool Jazz"),
  1210: (kind: AacGenreKind.music, genre: "Blues|Acoustic Blues"),
  1211: (kind: AacGenreKind.music, genre: "Classical|High Classical"),
  1220: (kind: AacGenreKind.music, genre: "Brazilian|Axe"),
  1221: (kind: AacGenreKind.music, genre: "Brazilian|Bossa Nova"),
  1222: (kind: AacGenreKind.music, genre: "Brazilian|Choro"),
  1223: (kind: AacGenreKind.music, genre: "Brazilian|Forro"),
  1224: (kind: AacGenreKind.music, genre: "Brazilian|Frevo"),
  1225: (kind: AacGenreKind.music, genre: "Brazilian|MPB"),
  1226: (kind: AacGenreKind.music, genre: "Brazilian|Pagode"),
  1227: (kind: AacGenreKind.music, genre: "Brazilian|Samba"),
  1228: (kind: AacGenreKind.music, genre: "Brazilian|Sertanejo"),
  1229: (kind: AacGenreKind.music, genre: "Brazilian|Baile Funk"),
  1230: (kind: AacGenreKind.music, genre: "Alternative|Chinese Alt"),
  1231: (kind: AacGenreKind.music, genre: "Alternative|Korean Indie"),
  1232: (kind: AacGenreKind.music, genre: "Chinese"),
  1233: (kind: AacGenreKind.music, genre: "Chinese|Chinese Classical"),
  1234: (kind: AacGenreKind.music, genre: "Chinese|Chinese Flute"),
  1235: (kind: AacGenreKind.music, genre: "Chinese|Chinese Opera"),
  1236: (kind: AacGenreKind.music, genre: "Chinese|Chinese Orchestral"),
  1237: (kind: AacGenreKind.music, genre: "Chinese|Chinese Regional Folk"),
  1238: (kind: AacGenreKind.music, genre: "Chinese|Chinese Strings"),
  1239: (kind: AacGenreKind.music, genre: "Chinese|Taiwanese Folk"),
  1240: (kind: AacGenreKind.music, genre: "Chinese|Tibetan Native Music"),
  1241: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Chinese Hip-Hop"),
  1242: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Korean Hip-Hop"),
  1243: (kind: AacGenreKind.music, genre: "Korean"),
  1244: (kind: AacGenreKind.music, genre: "Korean|Korean Classical"),
  1245: (kind: AacGenreKind.music, genre: "Korean|Korean Trad Song"),
  1246: (kind: AacGenreKind.music, genre: "Korean|Korean Trad Instrumental"),
  1247: (kind: AacGenreKind.music, genre: "Korean|Korean Trad Theater"),
  1248: (kind: AacGenreKind.music, genre: "Rock|Chinese Rock"),
  1249: (kind: AacGenreKind.music, genre: "Rock|Korean Rock"),
  1250: (kind: AacGenreKind.music, genre: "Pop|C-Pop"),
  1251: (kind: AacGenreKind.music, genre: "Pop|Cantopop/HK-Pop"),
  1252: (kind: AacGenreKind.music, genre: "Pop|Korean Folk-Pop"),
  1253: (kind: AacGenreKind.music, genre: "Pop|Mandopop"),
  1254: (kind: AacGenreKind.music, genre: "Pop|Tai-Pop"),
  1255: (kind: AacGenreKind.music, genre: "Pop|Malaysian Pop"),
  1256: (kind: AacGenreKind.music, genre: "Pop|Pinoy Pop"),
  1257: (kind: AacGenreKind.music, genre: "Pop|Original Pilipino Music"),
  1258: (kind: AacGenreKind.music, genre: "Pop|Manilla Sound"),
  1259: (kind: AacGenreKind.music, genre: "Pop|Indo Pop"),
  1260: (kind: AacGenreKind.music, genre: "Pop|Thai Pop"),
  1261: (kind: AacGenreKind.music, genre: "Vocal|Trot"),
  1262: (kind: AacGenreKind.music, genre: "Indian"),
  1263: (kind: AacGenreKind.music, genre: "Indian|Bollywood"),
  1264: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Tamil"),
  1265: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Telugu"),
  1266: (kind: AacGenreKind.music, genre: "Indian|Regional Indian"),
  1267: (kind: AacGenreKind.music, genre: "Indian|Devotional & Spiritual"),
  1268: (kind: AacGenreKind.music, genre: "Indian|Sufi"),
  1269: (kind: AacGenreKind.music, genre: "Indian|Indian Classical"),
  1270: (kind: AacGenreKind.music, genre: "Russian|Russian Chanson"),
  1271: (kind: AacGenreKind.music, genre: "World|Dini"),
  1272: (kind: AacGenreKind.music, genre: "Turkish|Halk"),
  1273: (kind: AacGenreKind.music, genre: "Turkish|Sanat"),
  1274: (kind: AacGenreKind.music, genre: "World|Dangdut"),
  1275: (kind: AacGenreKind.music, genre: "World|Indonesian Religious"),
  1276: (kind: AacGenreKind.music, genre: "World|Calypso"),
  1277: (kind: AacGenreKind.music, genre: "World|Soca"),
  1278: (kind: AacGenreKind.music, genre: "Indian|Ghazals"),
  1279: (kind: AacGenreKind.music, genre: "Indian|Indian Folk"),
  1280: (kind: AacGenreKind.music, genre: "Turkish|Arabesque"),
  1281: (kind: AacGenreKind.music, genre: "African|Afrikaans"),
  1282: (kind: AacGenreKind.music, genre: "World|Farsi"),
  1283: (kind: AacGenreKind.music, genre: "World|Israeli"),
  1284: (kind: AacGenreKind.music, genre: "Arabic|Khaleeji"),
  1285: (kind: AacGenreKind.music, genre: "Arabic|North African"),
  1286: (kind: AacGenreKind.music, genre: "Arabic|Arabic Pop"),
  1287: (kind: AacGenreKind.music, genre: "Arabic|Islamic"),
  1288: (kind: AacGenreKind.music, genre: "Soundtrack|Sound Effects"),
  1289: (kind: AacGenreKind.music, genre: "Folk"),
  1290: (kind: AacGenreKind.music, genre: "Orchestral"),
  1291: (kind: AacGenreKind.music, genre: "Marching"),
  1293: (kind: AacGenreKind.music, genre: "Pop|Oldies"),
  1294: (kind: AacGenreKind.music, genre: "Country|Thai Country"),
  1295: (kind: AacGenreKind.music, genre: "World|Flamenco"),
  1296: (kind: AacGenreKind.music, genre: "World|Tango"),
  1297: (kind: AacGenreKind.music, genre: "World|Fado"),
  1298: (kind: AacGenreKind.music, genre: "World|Iberia"),
  1299: (kind: AacGenreKind.music, genre: "Russian"),
  1300: (kind: AacGenreKind.music, genre: "Turkish"),
  1301: (kind: AacGenreKind.podcasts, genre: "Arts"),
  1302: (
    kind: AacGenreKind.podcasts,
    genre: "Society & Culture|Personal Journals"
  ),
  1303: (kind: AacGenreKind.podcasts, genre: "Comedy"),
  1304: (kind: AacGenreKind.podcasts, genre: "Education"),
  1305: (kind: AacGenreKind.podcasts, genre: "Kids & Family"),
  1306: (kind: AacGenreKind.podcasts, genre: "Arts|Food"),
  1307: (kind: AacGenreKind.podcasts, genre: "Health"),
  1309: (kind: AacGenreKind.podcasts, genre: "TV & Film"),
  1310: (kind: AacGenreKind.podcasts, genre: "Music"),
  1311: (kind: AacGenreKind.podcasts, genre: "News & Politics"),
  1314: (kind: AacGenreKind.podcasts, genre: "Religion & Spirituality"),
  1315: (kind: AacGenreKind.podcasts, genre: "Science & Medicine"),
  1316: (kind: AacGenreKind.podcasts, genre: "Sports & Recreation"),
  1318: (kind: AacGenreKind.podcasts, genre: "Technology"),
  1320: (
    kind: AacGenreKind.podcasts,
    genre: "Society & Culture|Places & Travel"
  ),
  1321: (kind: AacGenreKind.podcasts, genre: "Business"),
  1323: (kind: AacGenreKind.podcasts, genre: "Games & Hobbies"),
  1324: (kind: AacGenreKind.podcasts, genre: "Society & Culture"),
  1325: (kind: AacGenreKind.podcasts, genre: "Government & Organizations"),
  1337: (kind: AacGenreKind.musicVideos, genre: "Classical|Piano"),
  1401: (kind: AacGenreKind.podcasts, genre: "Arts|Literature"),
  1402: (kind: AacGenreKind.podcasts, genre: "Arts|Design"),
  1404: (kind: AacGenreKind.podcasts, genre: "Games & Hobbies|Video Games"),
  1405: (kind: AacGenreKind.podcasts, genre: "Arts|Performing Arts"),
  1406: (kind: AacGenreKind.podcasts, genre: "Arts|Visual Arts"),
  1410: (kind: AacGenreKind.podcasts, genre: "Business|Careers"),
  1412: (kind: AacGenreKind.podcasts, genre: "Business|Investing"),
  1413: (kind: AacGenreKind.podcasts, genre: "Business|Management & Marketing"),
  1415: (kind: AacGenreKind.podcasts, genre: "Education|K-12"),
  1416: (kind: AacGenreKind.podcasts, genre: "Education|Higher Education"),
  1417: (kind: AacGenreKind.podcasts, genre: "Health|Fitness & Nutrition"),
  1420: (kind: AacGenreKind.podcasts, genre: "Health|Self-Help"),
  1421: (kind: AacGenreKind.podcasts, genre: "Health|Sexuality"),
  1438: (
    kind: AacGenreKind.podcasts,
    genre: "Religion & Spirituality|Buddhism"
  ),
  1439: (
    kind: AacGenreKind.podcasts,
    genre: "Religion & Spirituality|Christianity"
  ),
  1440: (kind: AacGenreKind.podcasts, genre: "Religion & Spirituality|Islam"),
  1441: (kind: AacGenreKind.podcasts, genre: "Religion & Spirituality|Judaism"),
  1443: (kind: AacGenreKind.podcasts, genre: "Society & Culture|Philosophy"),
  1444: (
    kind: AacGenreKind.podcasts,
    genre: "Religion & Spirituality|Spirituality"
  ),
  1446: (kind: AacGenreKind.podcasts, genre: "Technology|Gadgets"),
  1448: (kind: AacGenreKind.podcasts, genre: "Technology|Tech News"),
  1450: (kind: AacGenreKind.podcasts, genre: "Technology|Podcasting"),
  1454: (kind: AacGenreKind.podcasts, genre: "Games & Hobbies|Automotive"),
  1455: (kind: AacGenreKind.podcasts, genre: "Games & Hobbies|Aviation"),
  1456: (kind: AacGenreKind.podcasts, genre: "Sports & Recreation|Outdoor"),
  1459: (kind: AacGenreKind.podcasts, genre: "Arts|Fashion & Beauty"),
  1460: (kind: AacGenreKind.podcasts, genre: "Games & Hobbies|Hobbies"),
  1461: (kind: AacGenreKind.podcasts, genre: "Games & Hobbies|Other Games"),
  1462: (kind: AacGenreKind.podcasts, genre: "Society & Culture|History"),
  1463: (
    kind: AacGenreKind.podcasts,
    genre: "Religion & Spirituality|Hinduism"
  ),
  1464: (kind: AacGenreKind.podcasts, genre: "Religion & Spirituality|Other"),
  1465: (
    kind: AacGenreKind.podcasts,
    genre: "Sports & Recreation|Professional"
  ),
  1466: (
    kind: AacGenreKind.podcasts,
    genre: "Sports & Recreation|College & High School"
  ),
  1467: (kind: AacGenreKind.podcasts, genre: "Sports & Recreation|Amateur"),
  1468: (
    kind: AacGenreKind.podcasts,
    genre: "Education|Educational Technology"
  ),
  1469: (kind: AacGenreKind.podcasts, genre: "Education|Language Courses"),
  1470: (kind: AacGenreKind.podcasts, genre: "Education|Training"),
  1471: (kind: AacGenreKind.podcasts, genre: "Business|Business News"),
  1472: (kind: AacGenreKind.podcasts, genre: "Business|Shopping"),
  1473: (
    kind: AacGenreKind.podcasts,
    genre: "Government & Organizations|National"
  ),
  1474: (
    kind: AacGenreKind.podcasts,
    genre: "Government & Organizations|Regional"
  ),
  1475: (
    kind: AacGenreKind.podcasts,
    genre: "Government & Organizations|Local"
  ),
  1476: (
    kind: AacGenreKind.podcasts,
    genre: "Government & Organizations|Non-Profit"
  ),
  1477: (
    kind: AacGenreKind.podcasts,
    genre: "Science & Medicine|Natural Sciences"
  ),
  1478: (kind: AacGenreKind.podcasts, genre: "Science & Medicine|Medicine"),
  1479: (
    kind: AacGenreKind.podcasts,
    genre: "Science & Medicine|Social Sciences"
  ),
  1480: (kind: AacGenreKind.podcasts, genre: "Technology|Software How-To"),
  1481: (kind: AacGenreKind.podcasts, genre: "Health|Alternative Health"),
  1482: (kind: AacGenreKind.podcasts, genre: "Arts|books"),
  1483: (kind: AacGenreKind.podcasts, genre: "Fiction"),
  1484: (kind: AacGenreKind.podcasts, genre: "Fiction|Drama"),
  1485: (kind: AacGenreKind.podcasts, genre: "Fiction|Science Fiction"),
  1486: (kind: AacGenreKind.podcasts, genre: "Fiction|Comedy Fiction"),
  1487: (kind: AacGenreKind.podcasts, genre: "History"),
  1488: (kind: AacGenreKind.podcasts, genre: "True Crime"),
  1489: (kind: AacGenreKind.podcasts, genre: "News"),
  1490: (kind: AacGenreKind.podcasts, genre: "News|Business News"),
  1491: (kind: AacGenreKind.podcasts, genre: "Business|Management"),
  1492: (kind: AacGenreKind.podcasts, genre: "Business|Marketing"),
  1493: (kind: AacGenreKind.podcasts, genre: "Business|Entrepreneurship"),
  1494: (kind: AacGenreKind.podcasts, genre: "Business|Non-Profit"),
  1495: (kind: AacGenreKind.podcasts, genre: "Comedy|Improv"),
  1496: (kind: AacGenreKind.podcasts, genre: "Comedy|Comedy Interviews"),
  1497: (kind: AacGenreKind.podcasts, genre: "Comedy|Stand-Up"),
  1498: (kind: AacGenreKind.podcasts, genre: "Education|Language Learning"),
  1499: (kind: AacGenreKind.podcasts, genre: "Education|How To"),
  1500: (kind: AacGenreKind.podcasts, genre: "Education|Self-Improvement"),
  1501: (kind: AacGenreKind.podcasts, genre: "Education|Courses"),
  1502: (kind: AacGenreKind.podcasts, genre: "Leisure"),
  1503: (kind: AacGenreKind.podcasts, genre: "Leisure|Automotive"),
  1504: (kind: AacGenreKind.podcasts, genre: "Leisure|Aviation"),
  1505: (kind: AacGenreKind.podcasts, genre: "Leisure|Hobbies"),
  1506: (kind: AacGenreKind.podcasts, genre: "Leisure|Crafts"),
  1507: (kind: AacGenreKind.podcasts, genre: "Leisure|Games"),
  1508: (kind: AacGenreKind.podcasts, genre: "Leisure|Home & Garden"),
  1509: (kind: AacGenreKind.podcasts, genre: "Leisure|Video Games"),
  1510: (kind: AacGenreKind.podcasts, genre: "Leisure|Animation & Manga"),
  1511: (kind: AacGenreKind.podcasts, genre: "Government"),
  1512: (kind: AacGenreKind.podcasts, genre: "Health & Fitness"),
  1513: (
    kind: AacGenreKind.podcasts,
    genre: "Health & Fitness|Alternative Health"
  ),
  1514: (kind: AacGenreKind.podcasts, genre: "Health & Fitness|Fitness"),
  1515: (kind: AacGenreKind.podcasts, genre: "Health & Fitness|Nutrition"),
  1516: (kind: AacGenreKind.podcasts, genre: "Health & Fitness|Sexuality"),
  1517: (kind: AacGenreKind.podcasts, genre: "Health & Fitness|Mental Health"),
  1518: (kind: AacGenreKind.podcasts, genre: "Health & Fitness|Medicine"),
  1519: (
    kind: AacGenreKind.podcasts,
    genre: "Kids & Family|Education for Kids"
  ),
  1520: (kind: AacGenreKind.podcasts, genre: "Kids & Family|Stories for Kids"),
  1521: (kind: AacGenreKind.podcasts, genre: "Kids & Family|Parenting"),
  1522: (kind: AacGenreKind.podcasts, genre: "Kids & Family|Pets & Animals"),
  1523: (kind: AacGenreKind.podcasts, genre: "Music|Music Commentary"),
  1524: (kind: AacGenreKind.podcasts, genre: "Music|Music History"),
  1525: (kind: AacGenreKind.podcasts, genre: "Music|Music Interviews"),
  1526: (kind: AacGenreKind.podcasts, genre: "News|Daily News"),
  1527: (kind: AacGenreKind.podcasts, genre: "News|Politics"),
  1528: (kind: AacGenreKind.podcasts, genre: "News|Tech News"),
  1529: (kind: AacGenreKind.podcasts, genre: "News|Sports News"),
  1530: (kind: AacGenreKind.podcasts, genre: "News|News Commentary"),
  1531: (kind: AacGenreKind.podcasts, genre: "News|Entertainment News"),
  1532: (
    kind: AacGenreKind.podcasts,
    genre: "Religion & Spirituality|Religion"
  ),
  1533: (kind: AacGenreKind.podcasts, genre: "Science"),
  1534: (kind: AacGenreKind.podcasts, genre: "Science|Natural Sciences"),
  1535: (kind: AacGenreKind.podcasts, genre: "Science|Social Sciences"),
  1536: (kind: AacGenreKind.podcasts, genre: "Science|Mathematics"),
  1537: (kind: AacGenreKind.podcasts, genre: "Science|Nature"),
  1538: (kind: AacGenreKind.podcasts, genre: "Science|Astronomy"),
  1539: (kind: AacGenreKind.podcasts, genre: "Science|Chemistry"),
  1540: (kind: AacGenreKind.podcasts, genre: "Science|Earth Sciences"),
  1541: (kind: AacGenreKind.podcasts, genre: "Science|Life Sciences"),
  1542: (kind: AacGenreKind.podcasts, genre: "Science|Physics"),
  1543: (kind: AacGenreKind.podcasts, genre: "Society & Culture|Documentary"),
  1544: (kind: AacGenreKind.podcasts, genre: "Society & Culture|Relationships"),
  1545: (kind: AacGenreKind.podcasts, genre: "Sports"),
  1546: (kind: AacGenreKind.podcasts, genre: "Sports|Soccer"),
  1547: (kind: AacGenreKind.podcasts, genre: "Sports|Football"),
  1548: (kind: AacGenreKind.podcasts, genre: "Sports|Basketball"),
  1549: (kind: AacGenreKind.podcasts, genre: "Sports|Baseball"),
  1550: (kind: AacGenreKind.podcasts, genre: "Sports|Hockey"),
  1551: (kind: AacGenreKind.podcasts, genre: "Sports|Running"),
  1552: (kind: AacGenreKind.podcasts, genre: "Sports|Rugby"),
  1553: (kind: AacGenreKind.podcasts, genre: "Sports|Golf"),
  1554: (kind: AacGenreKind.podcasts, genre: "Sports|Cricket"),
  1555: (kind: AacGenreKind.podcasts, genre: "Sports|Wrestling"),
  1556: (kind: AacGenreKind.podcasts, genre: "Sports|Tennis"),
  1557: (kind: AacGenreKind.podcasts, genre: "Sports|Volleyball"),
  1558: (kind: AacGenreKind.podcasts, genre: "Sports|Swimming"),
  1559: (kind: AacGenreKind.podcasts, genre: "Sports|Wilderness"),
  1560: (kind: AacGenreKind.podcasts, genre: "Sports|Fantasy Sports"),
  1561: (kind: AacGenreKind.podcasts, genre: "TV & Film|TV Reviews"),
  1562: (kind: AacGenreKind.podcasts, genre: "TV & Film|After Shows"),
  1563: (kind: AacGenreKind.podcasts, genre: "TV & Film|Film Reviews"),
  1564: (kind: AacGenreKind.podcasts, genre: "TV & Film|Film History"),
  1565: (kind: AacGenreKind.podcasts, genre: "TV & Film|Film Interviews"),
  1602: (kind: AacGenreKind.musicVideos, genre: "Blues"),
  1603: (kind: AacGenreKind.musicVideos, genre: "Comedy"),
  1604: (kind: AacGenreKind.musicVideos, genre: "Children's Music"),
  1605: (kind: AacGenreKind.musicVideos, genre: "Classical"),
  1606: (kind: AacGenreKind.musicVideos, genre: "Country"),
  1607: (kind: AacGenreKind.musicVideos, genre: "Electronic"),
  1608: (kind: AacGenreKind.musicVideos, genre: "Holiday"),
  1609: (kind: AacGenreKind.musicVideos, genre: "Classical|Opera"),
  1610: (kind: AacGenreKind.musicVideos, genre: "Singer/Songwriter"),
  1611: (kind: AacGenreKind.musicVideos, genre: "Jazz"),
  1612: (kind: AacGenreKind.musicVideos, genre: "Latin"),
  1613: (kind: AacGenreKind.musicVideos, genre: "New Age"),
  1614: (kind: AacGenreKind.musicVideos, genre: "Pop"),
  1615: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul"),
  1616: (kind: AacGenreKind.musicVideos, genre: "Soundtrack"),
  1617: (kind: AacGenreKind.musicVideos, genre: "Dance"),
  1618: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap"),
  1619: (kind: AacGenreKind.musicVideos, genre: "World"),
  1620: (kind: AacGenreKind.musicVideos, genre: "Alternative"),
  1621: (kind: AacGenreKind.musicVideos, genre: "Rock"),
  1622: (kind: AacGenreKind.musicVideos, genre: "Christian & Gospel"),
  1623: (kind: AacGenreKind.musicVideos, genre: "Vocal"),
  1624: (kind: AacGenreKind.musicVideos, genre: "Reggae"),
  1625: (kind: AacGenreKind.musicVideos, genre: "Easy Listening"),
  1626: (kind: AacGenreKind.musicVideos, genre: "podcasts"),
  1627: (kind: AacGenreKind.musicVideos, genre: "J-Pop"),
  1628: (kind: AacGenreKind.musicVideos, genre: "Enka"),
  1629: (kind: AacGenreKind.musicVideos, genre: "Anime"),
  1630: (kind: AacGenreKind.musicVideos, genre: "Kayokyoku"),
  1631: (kind: AacGenreKind.musicVideos, genre: "Disney"),
  1632: (kind: AacGenreKind.musicVideos, genre: "French Pop"),
  1633: (kind: AacGenreKind.musicVideos, genre: "German Pop"),
  1634: (kind: AacGenreKind.musicVideos, genre: "German Folk"),
  1635: (kind: AacGenreKind.musicVideos, genre: "Alternative|Chinese Alt"),
  1636: (kind: AacGenreKind.musicVideos, genre: "Alternative|Korean Indie"),
  1637: (kind: AacGenreKind.musicVideos, genre: "Chinese"),
  1638: (kind: AacGenreKind.musicVideos, genre: "Chinese|Chinese Classical"),
  1639: (kind: AacGenreKind.musicVideos, genre: "Chinese|Chinese Flute"),
  1640: (kind: AacGenreKind.musicVideos, genre: "Chinese|Chinese Opera"),
  1641: (kind: AacGenreKind.musicVideos, genre: "Chinese|Chinese Orchestral"),
  1642: (
    kind: AacGenreKind.musicVideos,
    genre: "Chinese|Chinese Regional Folk"
  ),
  1643: (kind: AacGenreKind.musicVideos, genre: "Chinese|Chinese Strings"),
  1644: (kind: AacGenreKind.musicVideos, genre: "Chinese|Taiwanese Folk"),
  1645: (kind: AacGenreKind.musicVideos, genre: "Chinese|Tibetan Native Music"),
  1646: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Chinese Hip-Hop"),
  1647: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Korean Hip-Hop"),
  1648: (kind: AacGenreKind.musicVideos, genre: "Korean"),
  1649: (kind: AacGenreKind.musicVideos, genre: "Korean|Korean Classical"),
  1650: (kind: AacGenreKind.musicVideos, genre: "Korean|Korean Trad Song"),
  1651: (
    kind: AacGenreKind.musicVideos,
    genre: "Korean|Korean Trad Instrumental"
  ),
  1652: (kind: AacGenreKind.musicVideos, genre: "Korean|Korean Trad Theater"),
  1653: (kind: AacGenreKind.musicVideos, genre: "Rock|Chinese Rock"),
  1654: (kind: AacGenreKind.musicVideos, genre: "Rock|Korean Rock"),
  1655: (kind: AacGenreKind.musicVideos, genre: "Pop|C-Pop"),
  1656: (kind: AacGenreKind.musicVideos, genre: "Pop|Cantopop/HK-Pop"),
  1657: (kind: AacGenreKind.musicVideos, genre: "Pop|Korean Folk-Pop"),
  1658: (kind: AacGenreKind.musicVideos, genre: "Pop|Mandopop"),
  1659: (kind: AacGenreKind.musicVideos, genre: "Pop|Tai-Pop"),
  1660: (kind: AacGenreKind.musicVideos, genre: "Pop|Malaysian Pop"),
  1661: (kind: AacGenreKind.musicVideos, genre: "Pop|Pinoy Pop"),
  1662: (kind: AacGenreKind.musicVideos, genre: "Pop|Original Pilipino Music"),
  1663: (kind: AacGenreKind.musicVideos, genre: "Pop|Manilla Sound"),
  1664: (kind: AacGenreKind.musicVideos, genre: "Pop|Indo Pop"),
  1665: (kind: AacGenreKind.musicVideos, genre: "Pop|Thai Pop"),
  1666: (kind: AacGenreKind.musicVideos, genre: "Vocal|Trot"),
  1671: (kind: AacGenreKind.musicVideos, genre: "Brazilian"),
  1672: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Axe"),
  1673: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Baile Funk"),
  1674: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Bossa Nova"),
  1675: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Choro"),
  1676: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Forro"),
  1677: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Frevo"),
  1678: (kind: AacGenreKind.musicVideos, genre: "Brazilian|MPB"),
  1679: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Pagode"),
  1680: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Samba"),
  1681: (kind: AacGenreKind.musicVideos, genre: "Brazilian|Sertanejo"),
  1682: (kind: AacGenreKind.musicVideos, genre: "Classical|High Classical"),
  1683: (kind: AacGenreKind.musicVideos, genre: "Fitness & Workout"),
  1684: (kind: AacGenreKind.musicVideos, genre: "Instrumental"),
  1685: (kind: AacGenreKind.musicVideos, genre: "Jazz|Big Band"),
  1686: (kind: AacGenreKind.musicVideos, genre: "Pop|K-Pop"),
  1687: (kind: AacGenreKind.musicVideos, genre: "Karaoke"),
  1688: (kind: AacGenreKind.musicVideos, genre: "Rock|Heavy Metal"),
  1689: (kind: AacGenreKind.musicVideos, genre: "Spoken Word"),
  1690: (kind: AacGenreKind.musicVideos, genre: "Indian"),
  1691: (kind: AacGenreKind.musicVideos, genre: "Indian|Bollywood"),
  1692: (kind: AacGenreKind.musicVideos, genre: "Indian|Regional Indian|Tamil"),
  1693: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Telugu"
  ),
  1694: (kind: AacGenreKind.musicVideos, genre: "Indian|Regional Indian"),
  1695: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Devotional & Spiritual"
  ),
  1696: (kind: AacGenreKind.musicVideos, genre: "Indian|Sufi"),
  1697: (kind: AacGenreKind.musicVideos, genre: "Indian|Indian Classical"),
  1698: (kind: AacGenreKind.musicVideos, genre: "Russian|Russian Chanson"),
  1699: (kind: AacGenreKind.musicVideos, genre: "World|Dini"),
  1700: (kind: AacGenreKind.musicVideos, genre: "Turkish|Halk"),
  1701: (kind: AacGenreKind.musicVideos, genre: "Turkish|Sanat"),
  1702: (kind: AacGenreKind.musicVideos, genre: "World|Dangdut"),
  1703: (kind: AacGenreKind.musicVideos, genre: "World|Indonesian Religious"),
  1704: (kind: AacGenreKind.musicVideos, genre: "Indian|Indian Pop"),
  1705: (kind: AacGenreKind.musicVideos, genre: "World|Calypso"),
  1706: (kind: AacGenreKind.musicVideos, genre: "World|Soca"),
  1707: (kind: AacGenreKind.musicVideos, genre: "Indian|Ghazals"),
  1708: (kind: AacGenreKind.musicVideos, genre: "Indian|Indian Folk"),
  1709: (kind: AacGenreKind.musicVideos, genre: "Turkish|Arabesque"),
  1710: (kind: AacGenreKind.musicVideos, genre: "African|Afrikaans"),
  1711: (kind: AacGenreKind.musicVideos, genre: "World|Farsi"),
  1712: (kind: AacGenreKind.musicVideos, genre: "World|Israeli"),
  1713: (kind: AacGenreKind.musicVideos, genre: "Arabic"),
  1714: (kind: AacGenreKind.musicVideos, genre: "Arabic|Khaleeji"),
  1715: (kind: AacGenreKind.musicVideos, genre: "Arabic|North African"),
  1716: (kind: AacGenreKind.musicVideos, genre: "Arabic|Arabic Pop"),
  1717: (kind: AacGenreKind.musicVideos, genre: "Arabic|Islamic"),
  1718: (kind: AacGenreKind.musicVideos, genre: "Soundtrack|Sound Effects"),
  1719: (kind: AacGenreKind.musicVideos, genre: "Folk"),
  1720: (kind: AacGenreKind.musicVideos, genre: "Orchestral"),
  1721: (kind: AacGenreKind.musicVideos, genre: "Marching"),
  1723: (kind: AacGenreKind.musicVideos, genre: "Pop|Oldies"),
  1724: (kind: AacGenreKind.musicVideos, genre: "Country|Thai Country"),
  1725: (kind: AacGenreKind.musicVideos, genre: "World|Flamenco"),
  1726: (kind: AacGenreKind.musicVideos, genre: "World|Tango"),
  1727: (kind: AacGenreKind.musicVideos, genre: "World|Fado"),
  1728: (kind: AacGenreKind.musicVideos, genre: "World|Iberia"),
  1729: (kind: AacGenreKind.musicVideos, genre: "Russian"),
  1730: (kind: AacGenreKind.musicVideos, genre: "Turkish"),
  1731: (kind: AacGenreKind.musicVideos, genre: "Alternative|College Rock"),
  1732: (kind: AacGenreKind.musicVideos, genre: "Alternative|Goth Rock"),
  1733: (kind: AacGenreKind.musicVideos, genre: "Alternative|Grunge"),
  1734: (kind: AacGenreKind.musicVideos, genre: "Alternative|Indie Rock"),
  1735: (kind: AacGenreKind.musicVideos, genre: "Alternative|New Wave"),
  1736: (kind: AacGenreKind.musicVideos, genre: "Alternative|Punk"),
  1737: (kind: AacGenreKind.musicVideos, genre: "Blues|Acoustic Blues"),
  1738: (kind: AacGenreKind.musicVideos, genre: "Blues|Chicago Blues"),
  1739: (kind: AacGenreKind.musicVideos, genre: "Blues|Classic Blues"),
  1740: (kind: AacGenreKind.musicVideos, genre: "Blues|Contemporary Blues"),
  1741: (kind: AacGenreKind.musicVideos, genre: "Blues|Country Blues"),
  1742: (kind: AacGenreKind.musicVideos, genre: "Blues|Delta Blues"),
  1743: (kind: AacGenreKind.musicVideos, genre: "Blues|Electric Blues"),
  1744: (kind: AacGenreKind.musicVideos, genre: "Children's Music|Lullabies"),
  1745: (kind: AacGenreKind.musicVideos, genre: "Children's Music|Sing-Along"),
  1746: (kind: AacGenreKind.musicVideos, genre: "Children's Music|Stories"),
  1747: (kind: AacGenreKind.musicVideos, genre: "Christian & Gospel|CCM"),
  1748: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Christian Metal"
  ),
  1749: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Christian Pop"
  ),
  1750: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Christian Rap"
  ),
  1751: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Christian Rock"
  ),
  1752: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Classic Christian"
  ),
  1753: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Contemporary Gospel"
  ),
  1754: (kind: AacGenreKind.musicVideos, genre: "Christian & Gospel|Gospel"),
  1755: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Praise & Worship"
  ),
  1756: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Southern Gospel"
  ),
  1757: (
    kind: AacGenreKind.musicVideos,
    genre: "Christian & Gospel|Traditional Gospel"
  ),
  1758: (kind: AacGenreKind.musicVideos, genre: "Classical|Avant-Garde"),
  1759: (kind: AacGenreKind.musicVideos, genre: "Classical|Baroque Era"),
  1760: (kind: AacGenreKind.musicVideos, genre: "Classical|Chamber Music"),
  1761: (kind: AacGenreKind.musicVideos, genre: "Classical|Chant"),
  1762: (kind: AacGenreKind.musicVideos, genre: "Classical|Choral"),
  1763: (
    kind: AacGenreKind.musicVideos,
    genre: "Classical|Classical Crossover"
  ),
  1764: (kind: AacGenreKind.musicVideos, genre: "Classical|Early Music"),
  1765: (kind: AacGenreKind.musicVideos, genre: "Classical|Impressionist"),
  1766: (kind: AacGenreKind.musicVideos, genre: "Classical|Medieval Era"),
  1767: (kind: AacGenreKind.musicVideos, genre: "Classical|Minimalism"),
  1768: (kind: AacGenreKind.musicVideos, genre: "Classical|Modern Era"),
  1769: (kind: AacGenreKind.musicVideos, genre: "Classical|Orchestral"),
  1770: (kind: AacGenreKind.musicVideos, genre: "Classical|Renaissance"),
  1771: (kind: AacGenreKind.musicVideos, genre: "Classical|Romantic Era"),
  1772: (kind: AacGenreKind.musicVideos, genre: "Classical|Wedding Music"),
  1773: (kind: AacGenreKind.musicVideos, genre: "Comedy|Novelty"),
  1774: (kind: AacGenreKind.musicVideos, genre: "Comedy|Standup Comedy"),
  1775: (kind: AacGenreKind.musicVideos, genre: "Country|Alternative Country"),
  1776: (kind: AacGenreKind.musicVideos, genre: "Country|Americana"),
  1777: (kind: AacGenreKind.musicVideos, genre: "Country|Bluegrass"),
  1778: (
    kind: AacGenreKind.musicVideos,
    genre: "Country|Contemporary Bluegrass"
  ),
  1779: (kind: AacGenreKind.musicVideos, genre: "Country|Contemporary Country"),
  1780: (kind: AacGenreKind.musicVideos, genre: "Country|Country Gospel"),
  1781: (kind: AacGenreKind.musicVideos, genre: "Country|Honky Tonk"),
  1782: (kind: AacGenreKind.musicVideos, genre: "Country|Outlaw Country"),
  1783: (
    kind: AacGenreKind.musicVideos,
    genre: "Country|Traditional Bluegrass"
  ),
  1784: (kind: AacGenreKind.musicVideos, genre: "Country|Traditional Country"),
  1785: (kind: AacGenreKind.musicVideos, genre: "Country|Urban Cowboy"),
  1786: (kind: AacGenreKind.musicVideos, genre: "Dance|Breakbeat"),
  1787: (kind: AacGenreKind.musicVideos, genre: "Dance|Exercise"),
  1788: (kind: AacGenreKind.musicVideos, genre: "Dance|Garage"),
  1789: (kind: AacGenreKind.musicVideos, genre: "Dance|Hardcore"),
  1790: (kind: AacGenreKind.musicVideos, genre: "Dance|House"),
  1791: (kind: AacGenreKind.musicVideos, genre: "Dance|Jungle/Drum'n'bass"),
  1792: (kind: AacGenreKind.musicVideos, genre: "Dance|Techno"),
  1793: (kind: AacGenreKind.musicVideos, genre: "Dance|Trance"),
  1794: (kind: AacGenreKind.musicVideos, genre: "Easy Listening|Lounge"),
  1795: (kind: AacGenreKind.musicVideos, genre: "Easy Listening|Swing"),
  1796: (kind: AacGenreKind.musicVideos, genre: "Electronic|Ambient"),
  1797: (kind: AacGenreKind.musicVideos, genre: "Electronic|Downtempo"),
  1798: (kind: AacGenreKind.musicVideos, genre: "Electronic|Electronica"),
  1799: (kind: AacGenreKind.musicVideos, genre: "Electronic|IDM/Experimental"),
  1800: (kind: AacGenreKind.musicVideos, genre: "Electronic|Industrial"),
  1801: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Alternative Rap"),
  1802: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Dirty South"),
  1803: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|East Coast Rap"),
  1804: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Gangsta Rap"),
  1805: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Hardcore Rap"),
  1806: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Hip-Hop"),
  1807: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Latin Rap"),
  1808: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Old School Rap"),
  1809: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Rap"),
  1810: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Underground Rap"),
  1811: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|West Coast Rap"),
  1812: (kind: AacGenreKind.musicVideos, genre: "Holiday|Chanukah"),
  1813: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas"),
  1814: (
    kind: AacGenreKind.musicVideos,
    genre: "Holiday|Christmas: Children's"
  ),
  1815: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: Classic"),
  1816: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: Classical"),
  1817: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: Jazz"),
  1818: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: Modern"),
  1819: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: Pop"),
  1820: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: R&B"),
  1821: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: Religious"),
  1822: (kind: AacGenreKind.musicVideos, genre: "Holiday|Christmas: Rock"),
  1823: (kind: AacGenreKind.musicVideos, genre: "Holiday|Easter"),
  1824: (kind: AacGenreKind.musicVideos, genre: "Holiday|Halloween"),
  1825: (kind: AacGenreKind.musicVideos, genre: "Holiday|Thanksgiving"),
  1826: (kind: AacGenreKind.musicVideos, genre: "Jazz|Avant-Garde Jazz"),
  1828: (kind: AacGenreKind.musicVideos, genre: "Jazz|Bop"),
  1829: (kind: AacGenreKind.musicVideos, genre: "Jazz|Contemporary Jazz"),
  1830: (kind: AacGenreKind.musicVideos, genre: "Jazz|Cool Jazz"),
  1831: (kind: AacGenreKind.musicVideos, genre: "Jazz|Crossover Jazz"),
  1832: (kind: AacGenreKind.musicVideos, genre: "Jazz|Dixieland"),
  1833: (kind: AacGenreKind.musicVideos, genre: "Jazz|Fusion"),
  1834: (kind: AacGenreKind.musicVideos, genre: "Jazz|Hard Bop"),
  1835: (kind: AacGenreKind.musicVideos, genre: "Jazz|Latin Jazz"),
  1836: (kind: AacGenreKind.musicVideos, genre: "Jazz|Mainstream Jazz"),
  1837: (kind: AacGenreKind.musicVideos, genre: "Jazz|Ragtime"),
  1838: (kind: AacGenreKind.musicVideos, genre: "Jazz|Smooth Jazz"),
  1839: (kind: AacGenreKind.musicVideos, genre: "Jazz|Trad Jazz"),
  1840: (
    kind: AacGenreKind.musicVideos,
    genre: "Latin|Alternative & Rock in Spanish"
  ),
  1841: (kind: AacGenreKind.musicVideos, genre: "Latin|Baladas y Boleros"),
  1842: (kind: AacGenreKind.musicVideos, genre: "Latin|Contemporary Latin"),
  1843: (kind: AacGenreKind.musicVideos, genre: "Latin|Latin Jazz"),
  1844: (kind: AacGenreKind.musicVideos, genre: "Latin|Latin Urban"),
  1845: (kind: AacGenreKind.musicVideos, genre: "Latin|Pop in Spanish"),
  1846: (kind: AacGenreKind.musicVideos, genre: "Latin|Raices"),
  1847: (kind: AacGenreKind.musicVideos, genre: "Latin|Musica Mexicana"),
  1848: (kind: AacGenreKind.musicVideos, genre: "Latin|Salsa y Tropical"),
  1849: (kind: AacGenreKind.musicVideos, genre: "New Age|Healing"),
  1850: (kind: AacGenreKind.musicVideos, genre: "New Age|Meditation"),
  1851: (kind: AacGenreKind.musicVideos, genre: "New Age|Nature"),
  1852: (kind: AacGenreKind.musicVideos, genre: "New Age|Relaxation"),
  1853: (kind: AacGenreKind.musicVideos, genre: "New Age|Travel"),
  1854: (kind: AacGenreKind.musicVideos, genre: "Pop|Adult Contemporary"),
  1855: (kind: AacGenreKind.musicVideos, genre: "Pop|Britpop"),
  1856: (kind: AacGenreKind.musicVideos, genre: "Pop|Pop/Rock"),
  1857: (kind: AacGenreKind.musicVideos, genre: "Pop|Soft Rock"),
  1858: (kind: AacGenreKind.musicVideos, genre: "Pop|Teen Pop"),
  1859: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul|Contemporary R&B"),
  1860: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul|Disco"),
  1861: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul|Doo Wop"),
  1862: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul|Funk"),
  1863: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul|Motown"),
  1864: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul|Neo-Soul"),
  1865: (kind: AacGenreKind.musicVideos, genre: "R&B/Soul|Soul"),
  1866: (kind: AacGenreKind.musicVideos, genre: "Reggae|Modern Dancehall"),
  1867: (kind: AacGenreKind.musicVideos, genre: "Reggae|Dub"),
  1868: (kind: AacGenreKind.musicVideos, genre: "Reggae|Roots Reggae"),
  1869: (kind: AacGenreKind.musicVideos, genre: "Reggae|Ska"),
  1870: (kind: AacGenreKind.musicVideos, genre: "Rock|Adult Alternative"),
  1871: (kind: AacGenreKind.musicVideos, genre: "Rock|American Trad Rock"),
  1872: (kind: AacGenreKind.musicVideos, genre: "Rock|Arena Rock"),
  1873: (kind: AacGenreKind.musicVideos, genre: "Rock|Blues-Rock"),
  1874: (kind: AacGenreKind.musicVideos, genre: "Rock|British Invasion"),
  1875: (kind: AacGenreKind.musicVideos, genre: "Rock|Death Metal/Black Metal"),
  1876: (kind: AacGenreKind.musicVideos, genre: "Rock|Glam Rock"),
  1877: (kind: AacGenreKind.musicVideos, genre: "Rock|Hair Metal"),
  1878: (kind: AacGenreKind.musicVideos, genre: "Rock|Hard Rock"),
  1879: (kind: AacGenreKind.musicVideos, genre: "Rock|Jam Bands"),
  1880: (kind: AacGenreKind.musicVideos, genre: "Rock|Prog-Rock/Art Rock"),
  1881: (kind: AacGenreKind.musicVideos, genre: "Rock|Psychedelic"),
  1882: (kind: AacGenreKind.musicVideos, genre: "Rock|Rock & Roll"),
  1883: (kind: AacGenreKind.musicVideos, genre: "Rock|Rockabilly"),
  1884: (kind: AacGenreKind.musicVideos, genre: "Rock|Roots Rock"),
  1885: (kind: AacGenreKind.musicVideos, genre: "Rock|Singer/Songwriter"),
  1886: (kind: AacGenreKind.musicVideos, genre: "Rock|Southern Rock"),
  1887: (kind: AacGenreKind.musicVideos, genre: "Rock|Surf"),
  1888: (kind: AacGenreKind.musicVideos, genre: "Rock|Tex-Mex"),
  1889: (
    kind: AacGenreKind.musicVideos,
    genre: "Singer/Songwriter|Alternative Folk"
  ),
  1890: (
    kind: AacGenreKind.musicVideos,
    genre: "Singer/Songwriter|Contemporary Folk"
  ),
  1891: (
    kind: AacGenreKind.musicVideos,
    genre: "Singer/Songwriter|Contemporary Singer/Songwriter"
  ),
  1892: (kind: AacGenreKind.musicVideos, genre: "Singer/Songwriter|Folk-Rock"),
  1893: (
    kind: AacGenreKind.musicVideos,
    genre: "Singer/Songwriter|New Acoustic"
  ),
  1894: (
    kind: AacGenreKind.musicVideos,
    genre: "Singer/Songwriter|Traditional Folk"
  ),
  1895: (kind: AacGenreKind.musicVideos, genre: "Soundtrack|Foreign Cinema"),
  1896: (kind: AacGenreKind.musicVideos, genre: "Soundtrack|Musicals"),
  1897: (kind: AacGenreKind.musicVideos, genre: "Soundtrack|Original Score"),
  1898: (kind: AacGenreKind.musicVideos, genre: "Soundtrack|Soundtrack"),
  1899: (kind: AacGenreKind.musicVideos, genre: "Soundtrack|TV Soundtrack"),
  1900: (kind: AacGenreKind.musicVideos, genre: "Vocal|Standards"),
  1901: (kind: AacGenreKind.musicVideos, genre: "Vocal|Traditional Pop"),
  1902: (kind: AacGenreKind.musicVideos, genre: "Jazz|Vocal Jazz"),
  1903: (kind: AacGenreKind.musicVideos, genre: "Vocal|Vocal Pop"),
  1904: (kind: AacGenreKind.musicVideos, genre: "African"),
  1905: (kind: AacGenreKind.musicVideos, genre: "African|Afro-Beat"),
  1906: (kind: AacGenreKind.musicVideos, genre: "African|Afro-Pop"),
  1907: (kind: AacGenreKind.musicVideos, genre: "World|Asia"),
  1908: (kind: AacGenreKind.musicVideos, genre: "World|Australia"),
  1909: (kind: AacGenreKind.musicVideos, genre: "World|Cajun"),
  1910: (kind: AacGenreKind.musicVideos, genre: "World|Caribbean"),
  1911: (kind: AacGenreKind.musicVideos, genre: "World|Celtic"),
  1912: (kind: AacGenreKind.musicVideos, genre: "World|Celtic Folk"),
  1913: (kind: AacGenreKind.musicVideos, genre: "World|Contemporary Celtic"),
  1914: (kind: AacGenreKind.musicVideos, genre: "World|Europe"),
  1915: (kind: AacGenreKind.musicVideos, genre: "World|France"),
  1916: (kind: AacGenreKind.musicVideos, genre: "World|Hawaii"),
  1917: (kind: AacGenreKind.musicVideos, genre: "World|Japan"),
  1918: (kind: AacGenreKind.musicVideos, genre: "World|Klezmer"),
  1919: (kind: AacGenreKind.musicVideos, genre: "World|North America"),
  1920: (kind: AacGenreKind.musicVideos, genre: "World|Polka"),
  1921: (kind: AacGenreKind.musicVideos, genre: "World|South Africa"),
  1922: (kind: AacGenreKind.musicVideos, genre: "World|South America"),
  1923: (kind: AacGenreKind.musicVideos, genre: "World|Traditional Celtic"),
  1924: (kind: AacGenreKind.musicVideos, genre: "World|Worldbeat"),
  1925: (kind: AacGenreKind.musicVideos, genre: "World|Zydeco"),
  1926: (kind: AacGenreKind.musicVideos, genre: "Christian & Gospel"),
  1928: (kind: AacGenreKind.musicVideos, genre: "Classical|Art Song"),
  1929: (kind: AacGenreKind.musicVideos, genre: "Classical|Brass & Woodwinds"),
  1930: (kind: AacGenreKind.musicVideos, genre: "Classical|Solo Instrumental"),
  1931: (kind: AacGenreKind.musicVideos, genre: "Classical|Contemporary Era"),
  1932: (kind: AacGenreKind.musicVideos, genre: "Classical|Oratorio"),
  1933: (kind: AacGenreKind.musicVideos, genre: "Classical|Cantata"),
  1934: (kind: AacGenreKind.musicVideos, genre: "Classical|Electronic"),
  1935: (kind: AacGenreKind.musicVideos, genre: "Classical|Sacred"),
  1936: (kind: AacGenreKind.musicVideos, genre: "Classical|Guitar"),
  1938: (kind: AacGenreKind.musicVideos, genre: "Classical|Violin"),
  1939: (kind: AacGenreKind.musicVideos, genre: "Classical|Cello"),
  1940: (kind: AacGenreKind.musicVideos, genre: "Classical|Percussion"),
  1941: (kind: AacGenreKind.musicVideos, genre: "Electronic|Dubstep"),
  1942: (kind: AacGenreKind.musicVideos, genre: "Electronic|Bass"),
  1943: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|UK Hip-Hop"),
  1944: (kind: AacGenreKind.musicVideos, genre: "Reggae|Lovers Rock"),
  1945: (kind: AacGenreKind.musicVideos, genre: "Alternative|EMO"),
  1946: (kind: AacGenreKind.musicVideos, genre: "Alternative|Pop Punk"),
  1947: (kind: AacGenreKind.musicVideos, genre: "Alternative|Indie Pop"),
  1948: (kind: AacGenreKind.musicVideos, genre: "New Age|Yoga"),
  1949: (kind: AacGenreKind.musicVideos, genre: "Pop|Tribute"),
  1950: (kind: AacGenreKind.musicVideos, genre: "Pop|Shows"),
  1951: (kind: AacGenreKind.musicVideos, genre: "Cuban"),
  1952: (kind: AacGenreKind.musicVideos, genre: "Cuban|Mambo"),
  1953: (kind: AacGenreKind.musicVideos, genre: "Cuban|Chachacha"),
  1954: (kind: AacGenreKind.musicVideos, genre: "Cuban|Guajira"),
  1955: (kind: AacGenreKind.musicVideos, genre: "Cuban|Son"),
  1956: (kind: AacGenreKind.musicVideos, genre: "Cuban|Bolero"),
  1957: (kind: AacGenreKind.musicVideos, genre: "Cuban|Guaracha"),
  1958: (kind: AacGenreKind.musicVideos, genre: "Cuban|Timba"),
  1959: (kind: AacGenreKind.musicVideos, genre: "Soundtrack|Video Game"),
  1960: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Punjabi|Punjabi Pop"
  ),
  1961: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Bengali|Rabindra Sangeet"
  ),
  1962: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Malayalam"
  ),
  1963: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Kannada"
  ),
  1964: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Marathi"
  ),
  1965: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Gujarati"
  ),
  1966: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Assamese"
  ),
  1967: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Bhojpuri"
  ),
  1968: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Haryanvi"
  ),
  1969: (kind: AacGenreKind.musicVideos, genre: "Indian|Regional Indian|Odia"),
  1970: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Rajasthani"
  ),
  1971: (kind: AacGenreKind.musicVideos, genre: "Indian|Regional Indian|Urdu"),
  1972: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Punjabi"
  ),
  1973: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Regional Indian|Bengali"
  ),
  1974: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Indian Classical|Carnatic Classical"
  ),
  1975: (
    kind: AacGenreKind.musicVideos,
    genre: "Indian|Indian Classical|Hindustani Classical"
  ),
  1976: (kind: AacGenreKind.musicVideos, genre: "African|Afro House"),
  1977: (kind: AacGenreKind.musicVideos, genre: "African|Afro Soul"),
  1978: (kind: AacGenreKind.musicVideos, genre: "African|Afrobeats"),
  1979: (kind: AacGenreKind.musicVideos, genre: "African|Benga"),
  1980: (kind: AacGenreKind.musicVideos, genre: "African|Bongo-Flava"),
  1981: (kind: AacGenreKind.musicVideos, genre: "African|Coupe-Decale"),
  1982: (kind: AacGenreKind.musicVideos, genre: "African|Gqom"),
  1983: (kind: AacGenreKind.musicVideos, genre: "African|Highlife"),
  1984: (kind: AacGenreKind.musicVideos, genre: "African|Kuduro"),
  1985: (kind: AacGenreKind.musicVideos, genre: "African|Kizomba"),
  1986: (kind: AacGenreKind.musicVideos, genre: "African|Kwaito"),
  1987: (kind: AacGenreKind.musicVideos, genre: "African|Mbalax"),
  1988: (kind: AacGenreKind.musicVideos, genre: "African|Ndombolo"),
  1989: (kind: AacGenreKind.musicVideos, genre: "African|Shangaan Electro"),
  1990: (kind: AacGenreKind.musicVideos, genre: "African|Soukous"),
  1991: (kind: AacGenreKind.musicVideos, genre: "African|Taarab"),
  1992: (kind: AacGenreKind.musicVideos, genre: "African|Zouglou"),
  1993: (kind: AacGenreKind.musicVideos, genre: "Turkish|Ozgun"),
  1994: (kind: AacGenreKind.musicVideos, genre: "Turkish|Fantezi"),
  1995: (kind: AacGenreKind.musicVideos, genre: "Turkish|Religious"),
  1996: (kind: AacGenreKind.musicVideos, genre: "Pop|Turkish Pop"),
  1997: (kind: AacGenreKind.musicVideos, genre: "Rock|Turkish Rock"),
  1998: (
    kind: AacGenreKind.musicVideos,
    genre: "Alternative|Turkish Alternative"
  ),
  1999: (
    kind: AacGenreKind.musicVideos,
    genre: "Hip-Hop/Rap|Turkish Hip-Hop/Rap"
  ),
  2000: (kind: AacGenreKind.musicVideos, genre: "African|Maskandi"),
  2001: (kind: AacGenreKind.musicVideos, genre: "Russian|Russian Romance"),
  2002: (kind: AacGenreKind.musicVideos, genre: "Russian|Russian Bard"),
  2003: (kind: AacGenreKind.musicVideos, genre: "Russian|Russian Pop"),
  2004: (kind: AacGenreKind.musicVideos, genre: "Russian|Russian Rock"),
  2005: (kind: AacGenreKind.musicVideos, genre: "Russian|Russian Hip-Hop"),
  2006: (kind: AacGenreKind.musicVideos, genre: "Arabic|Levant"),
  2007: (kind: AacGenreKind.musicVideos, genre: "Arabic|Levant|Dabke"),
  2008: (kind: AacGenreKind.musicVideos, genre: "Arabic|Maghreb Rai"),
  2009: (
    kind: AacGenreKind.musicVideos,
    genre: "Arabic|Khaleeji|Khaleeji Jalsat"
  ),
  2010: (
    kind: AacGenreKind.musicVideos,
    genre: "Arabic|Khaleeji|Khaleeji Shailat"
  ),
  2011: (kind: AacGenreKind.musicVideos, genre: "Tarab"),
  2012: (kind: AacGenreKind.musicVideos, genre: "Tarab|Iraqi Tarab"),
  2013: (kind: AacGenreKind.musicVideos, genre: "Tarab|Egyptian Tarab"),
  2014: (kind: AacGenreKind.musicVideos, genre: "Tarab|Khaleeji Tarab"),
  2015: (kind: AacGenreKind.musicVideos, genre: "Pop|Levant Pop"),
  2016: (kind: AacGenreKind.musicVideos, genre: "Pop|Iraqi Pop"),
  2017: (kind: AacGenreKind.musicVideos, genre: "Pop|Egyptian Pop"),
  2018: (kind: AacGenreKind.musicVideos, genre: "Pop|Maghreb Pop"),
  2019: (kind: AacGenreKind.musicVideos, genre: "Pop|Khaleeji Pop"),
  2020: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Levant Hip-Hop"),
  2021: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Egyptian Hip-Hop"),
  2022: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Maghreb Hip-Hop"),
  2023: (kind: AacGenreKind.musicVideos, genre: "Hip-Hop/Rap|Khaleeji Hip-Hop"),
  2024: (kind: AacGenreKind.musicVideos, genre: "Alternative|Indie Levant"),
  2025: (kind: AacGenreKind.musicVideos, genre: "Alternative|Indie Egyptian"),
  2026: (kind: AacGenreKind.musicVideos, genre: "Alternative|Indie Maghreb"),
  2027: (kind: AacGenreKind.musicVideos, genre: "Electronic|Levant Electronic"),
  2028: (kind: AacGenreKind.musicVideos, genre: "Electronic|Electro-Cha'abi"),
  2029: (
    kind: AacGenreKind.musicVideos,
    genre: "Electronic|Maghreb Electronic"
  ),
  2030: (kind: AacGenreKind.musicVideos, genre: "Folk|Iraqi Folk"),
  2031: (kind: AacGenreKind.musicVideos, genre: "Folk|Khaleeji Folk"),
  2032: (kind: AacGenreKind.musicVideos, genre: "Dance|Maghreb Dance"),
  4000: (kind: AacGenreKind.tvShows, genre: "Comedy"),
  4001: (kind: AacGenreKind.tvShows, genre: "Drama"),
  4002: (kind: AacGenreKind.tvShows, genre: "Animation"),
  4003: (kind: AacGenreKind.tvShows, genre: "Action & Adventure"),
  4004: (kind: AacGenreKind.tvShows, genre: "Classics"),
  4005: (kind: AacGenreKind.tvShows, genre: "Kids & Family"),
  4006: (kind: AacGenreKind.tvShows, genre: "Nonfiction"),
  4007: (kind: AacGenreKind.tvShows, genre: "Reality TV"),
  4008: (kind: AacGenreKind.tvShows, genre: "Sci-Fi & Fantasy"),
  4009: (kind: AacGenreKind.tvShows, genre: "Sports"),
  4010: (kind: AacGenreKind.tvShows, genre: "Teens"),
  4011: (kind: AacGenreKind.tvShows, genre: "Latino TV"),
  4401: (kind: AacGenreKind.movies, genre: "Action & Adventure"),
  4402: (kind: AacGenreKind.movies, genre: "Anime"),
  4403: (kind: AacGenreKind.movies, genre: "Classics"),
  4404: (kind: AacGenreKind.movies, genre: "Comedy"),
  4405: (kind: AacGenreKind.movies, genre: "Documentary"),
  4406: (kind: AacGenreKind.movies, genre: "Drama"),
  4407: (kind: AacGenreKind.movies, genre: "Foreign"),
  4408: (kind: AacGenreKind.movies, genre: "Horror"),
  4409: (kind: AacGenreKind.movies, genre: "Independent"),
  4410: (kind: AacGenreKind.movies, genre: "Kids & Family"),
  4411: (kind: AacGenreKind.movies, genre: "Musicals"),
  4412: (kind: AacGenreKind.movies, genre: "Romance"),
  4413: (kind: AacGenreKind.movies, genre: "Sci-Fi & Fantasy"),
  4414: (kind: AacGenreKind.movies, genre: "Short Films"),
  4415: (kind: AacGenreKind.movies, genre: "Special Interest"),
  4416: (kind: AacGenreKind.movies, genre: "Thriller"),
  4417: (kind: AacGenreKind.movies, genre: "Sports"),
  4418: (kind: AacGenreKind.movies, genre: "Western"),
  4419: (kind: AacGenreKind.movies, genre: "Urban"),
  4420: (kind: AacGenreKind.movies, genre: "Holiday"),
  4421: (kind: AacGenreKind.movies, genre: "Made for TV"),
  4422: (kind: AacGenreKind.movies, genre: "Concert Films"),
  4423: (kind: AacGenreKind.movies, genre: "Music Documentaries"),
  4424: (kind: AacGenreKind.movies, genre: "Music Feature Films"),
  4425: (kind: AacGenreKind.movies, genre: "Japanese Cinema"),
  4426: (kind: AacGenreKind.movies, genre: "Jidaigeki"),
  4427: (kind: AacGenreKind.movies, genre: "Tokusatsu"),
  4428: (kind: AacGenreKind.movies, genre: "Korean Cinema"),
  4429: (kind: AacGenreKind.movies, genre: "Russian"),
  4430: (kind: AacGenreKind.movies, genre: "Turkish"),
  4431: (kind: AacGenreKind.movies, genre: "Bollywood"),
  4432: (kind: AacGenreKind.movies, genre: "Regional Indian"),
  4433: (kind: AacGenreKind.movies, genre: "Middle Eastern"),
  4434: (kind: AacGenreKind.movies, genre: "African"),
  6000: (kind: AacGenreKind.appStore, genre: "Business"),
  6001: (kind: AacGenreKind.appStore, genre: "Weather"),
  6002: (kind: AacGenreKind.appStore, genre: "Utilities"),
  6003: (kind: AacGenreKind.appStore, genre: "Travel"),
  6004: (kind: AacGenreKind.appStore, genre: "Sports"),
  6005: (kind: AacGenreKind.appStore, genre: "Social Networking"),
  6006: (kind: AacGenreKind.appStore, genre: "Reference"),
  6007: (kind: AacGenreKind.appStore, genre: "Productivity"),
  6008: (kind: AacGenreKind.appStore, genre: "Photo & Video"),
  6009: (kind: AacGenreKind.appStore, genre: "News"),
  6010: (kind: AacGenreKind.appStore, genre: "Navigation"),
  6011: (kind: AacGenreKind.appStore, genre: "Music"),
  6012: (kind: AacGenreKind.appStore, genre: "Lifestyle"),
  6013: (kind: AacGenreKind.appStore, genre: "Health & Fitness"),
  6014: (kind: AacGenreKind.appStore, genre: "Games"),
  6015: (kind: AacGenreKind.appStore, genre: "Finance"),
  6016: (kind: AacGenreKind.appStore, genre: "Entertainment"),
  6017: (kind: AacGenreKind.appStore, genre: "Education"),
  6018: (kind: AacGenreKind.appStore, genre: "books"),
  6020: (kind: AacGenreKind.appStore, genre: "Medical"),
  6021: (kind: AacGenreKind.appStore, genre: "Magazines & Newspapers"),
  6022: (kind: AacGenreKind.appStore, genre: "Catalogs"),
  6023: (kind: AacGenreKind.appStore, genre: "Food & Drink"),
  6024: (kind: AacGenreKind.appStore, genre: "Shopping"),
  6025: (kind: AacGenreKind.appStore, genre: "Stickers"),
  6026: (kind: AacGenreKind.appStore, genre: "Developer Tools"),
  6027: (kind: AacGenreKind.appStore, genre: "Graphics & Design"),
  7001: (kind: AacGenreKind.appStore, genre: "Games|Action"),
  7002: (kind: AacGenreKind.appStore, genre: "Games|Adventure"),
  7003: (kind: AacGenreKind.appStore, genre: "Games|Casual"),
  7004: (kind: AacGenreKind.appStore, genre: "Games|Board"),
  7005: (kind: AacGenreKind.appStore, genre: "Games|Card"),
  7006: (kind: AacGenreKind.appStore, genre: "Games|Casino"),
  7007: (kind: AacGenreKind.appStore, genre: "Games|Dice"),
  7008: (kind: AacGenreKind.appStore, genre: "Games|Educational"),
  7009: (kind: AacGenreKind.appStore, genre: "Games|Family"),
  7011: (kind: AacGenreKind.appStore, genre: "Games|Music"),
  7012: (kind: AacGenreKind.appStore, genre: "Games|Puzzle"),
  7013: (kind: AacGenreKind.appStore, genre: "Games|Racing"),
  7014: (kind: AacGenreKind.appStore, genre: "Games|Role Playing"),
  7015: (kind: AacGenreKind.appStore, genre: "Games|Simulation"),
  7016: (kind: AacGenreKind.appStore, genre: "Games|Sports"),
  7017: (kind: AacGenreKind.appStore, genre: "Games|Strategy"),
  7018: (kind: AacGenreKind.appStore, genre: "Games|Trivia"),
  7019: (kind: AacGenreKind.appStore, genre: "Games|Word"),
  8001: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative"),
  8002: (kind: AacGenreKind.tones, genre: "Ringtones|Blues"),
  8003: (kind: AacGenreKind.tones, genre: "Ringtones|Children's Music"),
  8004: (kind: AacGenreKind.tones, genre: "Ringtones|Classical"),
  8005: (kind: AacGenreKind.tones, genre: "Ringtones|Comedy"),
  8006: (kind: AacGenreKind.tones, genre: "Ringtones|Country"),
  8007: (kind: AacGenreKind.tones, genre: "Ringtones|Dance"),
  8008: (kind: AacGenreKind.tones, genre: "Ringtones|Electronic"),
  8009: (kind: AacGenreKind.tones, genre: "Ringtones|Enka"),
  8010: (kind: AacGenreKind.tones, genre: "Ringtones|French Pop"),
  8011: (kind: AacGenreKind.tones, genre: "Ringtones|German Folk"),
  8012: (kind: AacGenreKind.tones, genre: "Ringtones|German Pop"),
  8013: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap"),
  8014: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday"),
  8015: (kind: AacGenreKind.tones, genre: "Ringtones|Inspirational"),
  8016: (kind: AacGenreKind.tones, genre: "Ringtones|J-Pop"),
  8017: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz"),
  8018: (kind: AacGenreKind.tones, genre: "Ringtones|Kayokyoku"),
  8019: (kind: AacGenreKind.tones, genre: "Ringtones|Latin"),
  8020: (kind: AacGenreKind.tones, genre: "Ringtones|New Age"),
  8021: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Opera"),
  8022: (kind: AacGenreKind.tones, genre: "Ringtones|Pop"),
  8023: (kind: AacGenreKind.tones, genre: "Ringtones|R&B/Soul"),
  8024: (kind: AacGenreKind.tones, genre: "Ringtones|Reggae"),
  8025: (kind: AacGenreKind.tones, genre: "Ringtones|Rock"),
  8026: (kind: AacGenreKind.tones, genre: "Ringtones|Singer/Songwriter"),
  8027: (kind: AacGenreKind.tones, genre: "Ringtones|Soundtrack"),
  8028: (kind: AacGenreKind.tones, genre: "Ringtones|Spoken Word"),
  8029: (kind: AacGenreKind.tones, genre: "Ringtones|Vocal"),
  8030: (kind: AacGenreKind.tones, genre: "Ringtones|World"),
  8050: (kind: AacGenreKind.tones, genre: "Alert tones|Sound Effects"),
  8051: (kind: AacGenreKind.tones, genre: "Alert tones|Dialogue"),
  8052: (kind: AacGenreKind.tones, genre: "Alert tones|Music"),
  8053: (kind: AacGenreKind.tones, genre: "Ringtones"),
  8054: (kind: AacGenreKind.tones, genre: "Alert tones"),
  8055: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Chinese Alt"),
  8056: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|College Rock"),
  8057: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Goth Rock"),
  8058: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Grunge"),
  8059: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Indie Rock"),
  8060: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Korean Indie"),
  8061: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|New Wave"),
  8062: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Punk"),
  8063: (kind: AacGenreKind.tones, genre: "Ringtones|Anime"),
  8064: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic"),
  8065: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic|Arabic Pop"),
  8066: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic|Islamic"),
  8067: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic|Khaleeji"),
  8068: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic|North African"),
  8069: (kind: AacGenreKind.tones, genre: "Ringtones|Blues|Acoustic Blues"),
  8070: (kind: AacGenreKind.tones, genre: "Ringtones|Blues|Chicago Blues"),
  8071: (kind: AacGenreKind.tones, genre: "Ringtones|Blues|Classic Blues"),
  8072: (kind: AacGenreKind.tones, genre: "Ringtones|Blues|Contemporary Blues"),
  8073: (kind: AacGenreKind.tones, genre: "Ringtones|Blues|Country Blues"),
  8074: (kind: AacGenreKind.tones, genre: "Ringtones|Blues|Delta Blues"),
  8075: (kind: AacGenreKind.tones, genre: "Ringtones|Blues|Electric Blues"),
  8076: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian"),
  8077: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Axe"),
  8078: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Baile Funk"),
  8079: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Bossa Nova"),
  8080: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Choro"),
  8081: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Forro"),
  8082: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Frevo"),
  8083: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|MPB"),
  8084: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Pagode"),
  8085: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Samba"),
  8086: (kind: AacGenreKind.tones, genre: "Ringtones|Brazilian|Sertanejo"),
  8087: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Children's Music|Lullabies"
  ),
  8088: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Children's Music|Sing-Along"
  ),
  8089: (kind: AacGenreKind.tones, genre: "Ringtones|Children's Music|Stories"),
  8090: (kind: AacGenreKind.tones, genre: "Ringtones|Chinese"),
  8091: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Chinese|Chinese Classical"
  ),
  8092: (kind: AacGenreKind.tones, genre: "Ringtones|Chinese|Chinese Flute"),
  8093: (kind: AacGenreKind.tones, genre: "Ringtones|Chinese|Chinese Opera"),
  8094: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Chinese|Chinese Orchestral"
  ),
  8095: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Chinese|Chinese Regional Folk"
  ),
  8096: (kind: AacGenreKind.tones, genre: "Ringtones|Chinese|Chinese Strings"),
  8097: (kind: AacGenreKind.tones, genre: "Ringtones|Chinese|Taiwanese Folk"),
  8098: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Chinese|Tibetan Native Music"
  ),
  8099: (kind: AacGenreKind.tones, genre: "Ringtones|Christian & Gospel"),
  8100: (kind: AacGenreKind.tones, genre: "Ringtones|Christian & Gospel|CCM"),
  8101: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Christian Metal"
  ),
  8102: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Christian Pop"
  ),
  8103: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Christian Rap"
  ),
  8104: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Christian Rock"
  ),
  8105: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Classic Christian"
  ),
  8106: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Contemporary Gospel"
  ),
  8107: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Gospel"
  ),
  8108: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Praise & Worship"
  ),
  8109: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Southern Gospel"
  ),
  8110: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Christian & Gospel|Traditional Gospel"
  ),
  8111: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Avant-Garde"),
  8112: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Baroque Era"),
  8113: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Chamber Music"),
  8114: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Chant"),
  8115: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Choral"),
  8116: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Classical|Classical Crossover"
  ),
  8117: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Early Music"),
  8118: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|High Classical"),
  8119: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Impressionist"),
  8120: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Medieval Era"),
  8121: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Minimalism"),
  8122: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Modern Era"),
  8123: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Orchestral"),
  8124: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Renaissance"),
  8125: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Romantic Era"),
  8126: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Wedding Music"),
  8127: (kind: AacGenreKind.tones, genre: "Ringtones|Comedy|Novelty"),
  8128: (kind: AacGenreKind.tones, genre: "Ringtones|Comedy|Standup Comedy"),
  8129: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Country|Alternative Country"
  ),
  8130: (kind: AacGenreKind.tones, genre: "Ringtones|Country|Americana"),
  8131: (kind: AacGenreKind.tones, genre: "Ringtones|Country|Bluegrass"),
  8132: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Country|Contemporary Bluegrass"
  ),
  8133: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Country|Contemporary Country"
  ),
  8134: (kind: AacGenreKind.tones, genre: "Ringtones|Country|Country Gospel"),
  8135: (kind: AacGenreKind.tones, genre: "Ringtones|Country|Honky Tonk"),
  8136: (kind: AacGenreKind.tones, genre: "Ringtones|Country|Outlaw Country"),
  8137: (kind: AacGenreKind.tones, genre: "Ringtones|Country|Thai Country"),
  8138: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Country|Traditional Bluegrass"
  ),
  8139: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Country|Traditional Country"
  ),
  8140: (kind: AacGenreKind.tones, genre: "Ringtones|Country|Urban Cowboy"),
  8141: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Breakbeat"),
  8142: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Exercise"),
  8143: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Garage"),
  8144: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Hardcore"),
  8145: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|House"),
  8146: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Jungle/Drum'n'bass"),
  8147: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Techno"),
  8148: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Trance"),
  8149: (kind: AacGenreKind.tones, genre: "Ringtones|Disney"),
  8150: (kind: AacGenreKind.tones, genre: "Ringtones|Easy Listening"),
  8151: (kind: AacGenreKind.tones, genre: "Ringtones|Easy Listening|Lounge"),
  8152: (kind: AacGenreKind.tones, genre: "Ringtones|Easy Listening|Swing"),
  8153: (kind: AacGenreKind.tones, genre: "Ringtones|Electronic|Ambient"),
  8154: (kind: AacGenreKind.tones, genre: "Ringtones|Electronic|Downtempo"),
  8155: (kind: AacGenreKind.tones, genre: "Ringtones|Electronic|Electronica"),
  8156: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Electronic|IDM/Experimental"
  ),
  8157: (kind: AacGenreKind.tones, genre: "Ringtones|Electronic|Industrial"),
  8158: (kind: AacGenreKind.tones, genre: "Ringtones|Fitness & Workout"),
  8159: (kind: AacGenreKind.tones, genre: "Ringtones|Folk"),
  8160: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Alternative Rap"
  ),
  8161: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Chinese Hip-Hop"
  ),
  8162: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap|Dirty South"),
  8163: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|East Coast Rap"
  ),
  8164: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap|Gangsta Rap"),
  8165: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap|Hardcore Rap"),
  8166: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap|Hip-Hop"),
  8167: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Korean Hip-Hop"
  ),
  8168: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap|Latin Rap"),
  8169: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Old School Rap"
  ),
  8170: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap|Rap"),
  8171: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Underground Rap"
  ),
  8172: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|West Coast Rap"
  ),
  8173: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Chanukah"),
  8174: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Christmas"),
  8175: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Holiday|Christmas: Children's"
  ),
  8176: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Holiday|Christmas: Classic"
  ),
  8177: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Holiday|Christmas: Classical"
  ),
  8178: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Christmas: Jazz"),
  8179: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Holiday|Christmas: Modern"
  ),
  8180: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Christmas: Pop"),
  8181: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Christmas: R&B"),
  8182: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Holiday|Christmas: Religious"
  ),
  8183: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Christmas: Rock"),
  8184: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Easter"),
  8185: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Halloween"),
  8186: (kind: AacGenreKind.tones, genre: "Ringtones|Holiday|Thanksgiving"),
  8187: (kind: AacGenreKind.tones, genre: "Ringtones|Indian"),
  8188: (kind: AacGenreKind.tones, genre: "Ringtones|Indian|Bollywood"),
  8189: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Devotional & Spiritual"
  ),
  8190: (kind: AacGenreKind.tones, genre: "Ringtones|Indian|Ghazals"),
  8191: (kind: AacGenreKind.tones, genre: "Ringtones|Indian|Indian Classical"),
  8192: (kind: AacGenreKind.tones, genre: "Ringtones|Indian|Indian Folk"),
  8193: (kind: AacGenreKind.tones, genre: "Ringtones|Indian|Indian Pop"),
  8194: (kind: AacGenreKind.tones, genre: "Ringtones|Indian|Regional Indian"),
  8195: (kind: AacGenreKind.tones, genre: "Ringtones|Indian|Sufi"),
  8196: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Tamil"
  ),
  8197: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Telugu"
  ),
  8198: (kind: AacGenreKind.tones, genre: "Ringtones|Instrumental"),
  8199: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Avant-Garde Jazz"),
  8201: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Big Band"),
  8202: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Bop"),
  8203: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Contemporary Jazz"),
  8204: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Cool Jazz"),
  8205: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Crossover Jazz"),
  8206: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Dixieland"),
  8207: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Fusion"),
  8208: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Hard Bop"),
  8209: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Latin Jazz"),
  8210: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Mainstream Jazz"),
  8211: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Ragtime"),
  8212: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Smooth Jazz"),
  8213: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Trad Jazz"),
  8214: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|K-Pop"),
  8215: (kind: AacGenreKind.tones, genre: "Ringtones|Karaoke"),
  8216: (kind: AacGenreKind.tones, genre: "Ringtones|Korean"),
  8217: (kind: AacGenreKind.tones, genre: "Ringtones|Korean|Korean Classical"),
  8218: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Korean|Korean Trad Instrumental"
  ),
  8219: (kind: AacGenreKind.tones, genre: "Ringtones|Korean|Korean Trad Song"),
  8220: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Korean|Korean Trad Theater"
  ),
  8221: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Latin|Alternative & Rock in Spanish"
  ),
  8222: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Baladas y Boleros"),
  8223: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Contemporary Latin"),
  8224: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Latin Jazz"),
  8225: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Latin Urban"),
  8226: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Pop in Spanish"),
  8227: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Raices"),
  8228: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Musica Mexicana"),
  8229: (kind: AacGenreKind.tones, genre: "Ringtones|Latin|Salsa y Tropical"),
  8230: (kind: AacGenreKind.tones, genre: "Ringtones|Marching Bands"),
  8231: (kind: AacGenreKind.tones, genre: "Ringtones|New Age|Healing"),
  8232: (kind: AacGenreKind.tones, genre: "Ringtones|New Age|Meditation"),
  8233: (kind: AacGenreKind.tones, genre: "Ringtones|New Age|Nature"),
  8234: (kind: AacGenreKind.tones, genre: "Ringtones|New Age|Relaxation"),
  8235: (kind: AacGenreKind.tones, genre: "Ringtones|New Age|Travel"),
  8236: (kind: AacGenreKind.tones, genre: "Ringtones|Orchestral"),
  8237: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Adult Contemporary"),
  8238: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Britpop"),
  8239: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|C-Pop"),
  8240: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Cantopop/HK-Pop"),
  8241: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Indo Pop"),
  8242: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Korean Folk-Pop"),
  8243: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Malaysian Pop"),
  8244: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Mandopop"),
  8245: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Manilla Sound"),
  8246: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Oldies"),
  8247: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Pop|Original Pilipino Music"
  ),
  8248: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Pinoy Pop"),
  8249: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Pop/Rock"),
  8250: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Soft Rock"),
  8251: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Tai-Pop"),
  8252: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Teen Pop"),
  8253: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Thai Pop"),
  8254: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|R&B/Soul|Contemporary R&B"
  ),
  8255: (kind: AacGenreKind.tones, genre: "Ringtones|R&B/Soul|Disco"),
  8256: (kind: AacGenreKind.tones, genre: "Ringtones|R&B/Soul|Doo Wop"),
  8257: (kind: AacGenreKind.tones, genre: "Ringtones|R&B/Soul|Funk"),
  8258: (kind: AacGenreKind.tones, genre: "Ringtones|R&B/Soul|Motown"),
  8259: (kind: AacGenreKind.tones, genre: "Ringtones|R&B/Soul|Neo-Soul"),
  8260: (kind: AacGenreKind.tones, genre: "Ringtones|R&B/Soul|Soul"),
  8261: (kind: AacGenreKind.tones, genre: "Ringtones|Reggae|Modern Dancehall"),
  8262: (kind: AacGenreKind.tones, genre: "Ringtones|Reggae|Dub"),
  8263: (kind: AacGenreKind.tones, genre: "Ringtones|Reggae|Roots Reggae"),
  8264: (kind: AacGenreKind.tones, genre: "Ringtones|Reggae|Ska"),
  8265: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Adult Alternative"),
  8266: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|American Trad Rock"),
  8267: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Arena Rock"),
  8268: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Blues-Rock"),
  8269: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|British Invasion"),
  8270: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Chinese Rock"),
  8271: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Rock|Death Metal/Black Metal"
  ),
  8272: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Glam Rock"),
  8273: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Hair Metal"),
  8274: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Hard Rock"),
  8275: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Metal"),
  8276: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Jam Bands"),
  8277: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Korean Rock"),
  8278: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Prog-Rock/Art Rock"),
  8279: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Psychedelic"),
  8280: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Rock & Roll"),
  8281: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Rockabilly"),
  8282: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Roots Rock"),
  8283: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Singer/Songwriter"),
  8284: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Southern Rock"),
  8285: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Surf"),
  8286: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Tex-Mex"),
  8287: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Singer/Songwriter|Alternative Folk"
  ),
  8288: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Singer/Songwriter|Contemporary Folk"
  ),
  8289: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Singer/Songwriter|Contemporary Singer/Songwriter"
  ),
  8290: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Singer/Songwriter|Folk-Rock"
  ),
  8291: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Singer/Songwriter|New Acoustic"
  ),
  8292: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Singer/Songwriter|Traditional Folk"
  ),
  8293: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Soundtrack|Foreign Cinema"
  ),
  8294: (kind: AacGenreKind.tones, genre: "Ringtones|Soundtrack|Musicals"),
  8295: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Soundtrack|Original Score"
  ),
  8296: (kind: AacGenreKind.tones, genre: "Ringtones|Soundtrack|Sound Effects"),
  8297: (kind: AacGenreKind.tones, genre: "Ringtones|Soundtrack|Soundtrack"),
  8298: (kind: AacGenreKind.tones, genre: "Ringtones|Soundtrack|TV Soundtrack"),
  8299: (kind: AacGenreKind.tones, genre: "Ringtones|Vocal|Standards"),
  8300: (kind: AacGenreKind.tones, genre: "Ringtones|Vocal|Traditional Pop"),
  8301: (kind: AacGenreKind.tones, genre: "Ringtones|Vocal|Trot"),
  8302: (kind: AacGenreKind.tones, genre: "Ringtones|Jazz|Vocal Jazz"),
  8303: (kind: AacGenreKind.tones, genre: "Ringtones|Vocal|Vocal Pop"),
  8304: (kind: AacGenreKind.tones, genre: "Ringtones|African"),
  8305: (kind: AacGenreKind.tones, genre: "Ringtones|African|Afrikaans"),
  8306: (kind: AacGenreKind.tones, genre: "Ringtones|African|Afro-Beat"),
  8307: (kind: AacGenreKind.tones, genre: "Ringtones|African|Afro-Pop"),
  8308: (kind: AacGenreKind.tones, genre: "Ringtones|Turkish|Arabesque"),
  8309: (kind: AacGenreKind.tones, genre: "Ringtones|World|Asia"),
  8310: (kind: AacGenreKind.tones, genre: "Ringtones|World|Australia"),
  8311: (kind: AacGenreKind.tones, genre: "Ringtones|World|Cajun"),
  8312: (kind: AacGenreKind.tones, genre: "Ringtones|World|Calypso"),
  8313: (kind: AacGenreKind.tones, genre: "Ringtones|World|Caribbean"),
  8314: (kind: AacGenreKind.tones, genre: "Ringtones|World|Celtic"),
  8315: (kind: AacGenreKind.tones, genre: "Ringtones|World|Celtic Folk"),
  8316: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|World|Contemporary Celtic"
  ),
  8317: (kind: AacGenreKind.tones, genre: "Ringtones|World|Dangdut"),
  8318: (kind: AacGenreKind.tones, genre: "Ringtones|World|Dini"),
  8319: (kind: AacGenreKind.tones, genre: "Ringtones|World|Europe"),
  8320: (kind: AacGenreKind.tones, genre: "Ringtones|World|Fado"),
  8321: (kind: AacGenreKind.tones, genre: "Ringtones|World|Farsi"),
  8322: (kind: AacGenreKind.tones, genre: "Ringtones|World|Flamenco"),
  8323: (kind: AacGenreKind.tones, genre: "Ringtones|World|France"),
  8324: (kind: AacGenreKind.tones, genre: "Ringtones|Turkish|Halk"),
  8325: (kind: AacGenreKind.tones, genre: "Ringtones|World|Hawaii"),
  8326: (kind: AacGenreKind.tones, genre: "Ringtones|World|Iberia"),
  8327: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|World|Indonesian Religious"
  ),
  8328: (kind: AacGenreKind.tones, genre: "Ringtones|World|Israeli"),
  8329: (kind: AacGenreKind.tones, genre: "Ringtones|World|Japan"),
  8330: (kind: AacGenreKind.tones, genre: "Ringtones|World|Klezmer"),
  8331: (kind: AacGenreKind.tones, genre: "Ringtones|World|North America"),
  8332: (kind: AacGenreKind.tones, genre: "Ringtones|World|Polka"),
  8333: (kind: AacGenreKind.tones, genre: "Ringtones|Russian"),
  8334: (kind: AacGenreKind.tones, genre: "Ringtones|Russian|Russian Chanson"),
  8335: (kind: AacGenreKind.tones, genre: "Ringtones|Turkish|Sanat"),
  8336: (kind: AacGenreKind.tones, genre: "Ringtones|World|Soca"),
  8337: (kind: AacGenreKind.tones, genre: "Ringtones|World|South Africa"),
  8338: (kind: AacGenreKind.tones, genre: "Ringtones|World|South America"),
  8339: (kind: AacGenreKind.tones, genre: "Ringtones|World|Tango"),
  8340: (kind: AacGenreKind.tones, genre: "Ringtones|World|Traditional Celtic"),
  8341: (kind: AacGenreKind.tones, genre: "Ringtones|Turkish"),
  8342: (kind: AacGenreKind.tones, genre: "Ringtones|World|Worldbeat"),
  8343: (kind: AacGenreKind.tones, genre: "Ringtones|World|Zydeco"),
  8345: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Art Song"),
  8346: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Classical|Brass & Woodwinds"
  ),
  8347: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Classical|Solo Instrumental"
  ),
  8348: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Classical|Contemporary Era"
  ),
  8349: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Oratorio"),
  8350: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Cantata"),
  8351: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Electronic"),
  8352: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Sacred"),
  8353: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Guitar"),
  8354: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Piano"),
  8355: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Violin"),
  8356: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Cello"),
  8357: (kind: AacGenreKind.tones, genre: "Ringtones|Classical|Percussion"),
  8358: (kind: AacGenreKind.tones, genre: "Ringtones|Electronic|Dubstep"),
  8359: (kind: AacGenreKind.tones, genre: "Ringtones|Electronic|Bass"),
  8360: (kind: AacGenreKind.tones, genre: "Ringtones|Hip-Hop/Rap|UK Hip Hop"),
  8361: (kind: AacGenreKind.tones, genre: "Ringtones|Reggae|Lovers Rock"),
  8362: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|EMO"),
  8363: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Pop Punk"),
  8364: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Indie Pop"),
  8365: (kind: AacGenreKind.tones, genre: "Ringtones|New Age|Yoga"),
  8366: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Tribute"),
  8367: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Shows"),
  8368: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban"),
  8369: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban|Mambo"),
  8370: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban|Chachacha"),
  8371: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban|Guajira"),
  8372: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban|Son"),
  8373: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban|Bolero"),
  8374: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban|Guaracha"),
  8375: (kind: AacGenreKind.tones, genre: "Ringtones|Cuban|Timba"),
  8376: (kind: AacGenreKind.tones, genre: "Ringtones|Soundtrack|Video Game"),
  8377: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Punjabi|Punjabi Pop"
  ),
  8378: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Bengali|Rabindra Sangeet"
  ),
  8379: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Malayalam"
  ),
  8380: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Kannada"
  ),
  8381: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Marathi"
  ),
  8382: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Gujarati"
  ),
  8383: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Assamese"
  ),
  8384: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Bhojpuri"
  ),
  8385: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Haryanvi"
  ),
  8386: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Odia"
  ),
  8387: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Rajasthani"
  ),
  8388: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Urdu"
  ),
  8389: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Punjabi"
  ),
  8390: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Regional Indian|Bengali"
  ),
  8391: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Indian Classical|Carnatic Classical"
  ),
  8392: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Indian|Indian Classical|Hindustani Classical"
  ),
  8393: (kind: AacGenreKind.tones, genre: "Ringtones|African|Afro House"),
  8394: (kind: AacGenreKind.tones, genre: "Ringtones|African|Afro Soul"),
  8395: (kind: AacGenreKind.tones, genre: "Ringtones|African|Afrobeats"),
  8396: (kind: AacGenreKind.tones, genre: "Ringtones|African|Benga"),
  8397: (kind: AacGenreKind.tones, genre: "Ringtones|African|Bongo-Flava"),
  8398: (kind: AacGenreKind.tones, genre: "Ringtones|African|Coupe-Decale"),
  8399: (kind: AacGenreKind.tones, genre: "Ringtones|African|Gqom"),
  8400: (kind: AacGenreKind.tones, genre: "Ringtones|African|Highlife"),
  8401: (kind: AacGenreKind.tones, genre: "Ringtones|African|Kuduro"),
  8402: (kind: AacGenreKind.tones, genre: "Ringtones|African|Kizomba"),
  8403: (kind: AacGenreKind.tones, genre: "Ringtones|African|Kwaito"),
  8404: (kind: AacGenreKind.tones, genre: "Ringtones|African|Mbalax"),
  8405: (kind: AacGenreKind.tones, genre: "Ringtones|African|Ndombolo"),
  8406: (kind: AacGenreKind.tones, genre: "Ringtones|African|Shangaan Electro"),
  8407: (kind: AacGenreKind.tones, genre: "Ringtones|African|Soukous"),
  8408: (kind: AacGenreKind.tones, genre: "Ringtones|African|Taarab"),
  8409: (kind: AacGenreKind.tones, genre: "Ringtones|African|Zouglou"),
  8410: (kind: AacGenreKind.tones, genre: "Ringtones|Turkish|Ozgun"),
  8411: (kind: AacGenreKind.tones, genre: "Ringtones|Turkish|Fantezi"),
  8412: (kind: AacGenreKind.tones, genre: "Ringtones|Turkish|Religious"),
  8413: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Turkish Pop"),
  8414: (kind: AacGenreKind.tones, genre: "Ringtones|Rock|Turkish Rock"),
  8415: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Alternative|Turkish Alternative"
  ),
  8416: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Turkish Hip-Hop/Rap"
  ),
  8417: (kind: AacGenreKind.tones, genre: "Ringtones|African|Maskandi"),
  8418: (kind: AacGenreKind.tones, genre: "Ringtones|Russian|Russian Romance"),
  8419: (kind: AacGenreKind.tones, genre: "Ringtones|Russian|Russian Bard"),
  8420: (kind: AacGenreKind.tones, genre: "Ringtones|Russian|Russian Pop"),
  8421: (kind: AacGenreKind.tones, genre: "Ringtones|Russian|Russian Rock"),
  8422: (kind: AacGenreKind.tones, genre: "Ringtones|Russian|Russian Hip-Hop"),
  8423: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic|Levant"),
  8424: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic|Levant|Dabke"),
  8425: (kind: AacGenreKind.tones, genre: "Ringtones|Arabic|Maghreb Rai"),
  8426: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Arabic|Khaleeji|Khaleeji Jalsat"
  ),
  8427: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Arabic|Khaleeji|Khaleeji Shailat"
  ),
  8428: (kind: AacGenreKind.tones, genre: "Ringtones|Tarab"),
  8429: (kind: AacGenreKind.tones, genre: "Ringtones|Tarab|Iraqi Tarab"),
  8430: (kind: AacGenreKind.tones, genre: "Ringtones|Tarab|Egyptian Tarab"),
  8431: (kind: AacGenreKind.tones, genre: "Ringtones|Tarab|Khaleeji Tarab"),
  8432: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Levant Pop"),
  8433: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Iraqi Pop"),
  8434: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Egyptian Pop"),
  8435: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Maghreb Pop"),
  8436: (kind: AacGenreKind.tones, genre: "Ringtones|Pop|Khaleeji Pop"),
  8437: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Levant Hip-Hop"
  ),
  8438: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Egyptian Hip-Hop"
  ),
  8439: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Maghreb Hip-Hop"
  ),
  8440: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Hip-Hop/Rap|Khaleeji Hip-Hop"
  ),
  8441: (kind: AacGenreKind.tones, genre: "Ringtones|Alternative|Indie Levant"),
  8442: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Alternative|Indie Egyptian"
  ),
  8443: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Alternative|Indie Maghreb"
  ),
  8444: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Electronic|Levant Electronic"
  ),
  8445: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Electronic|Electro-Cha'abi"
  ),
  8446: (
    kind: AacGenreKind.tones,
    genre: "Ringtones|Electronic|Maghreb Electronic"
  ),
  8447: (kind: AacGenreKind.tones, genre: "Ringtones|Folk|Iraqi Folk"),
  8448: (kind: AacGenreKind.tones, genre: "Ringtones|Folk|Khaleeji Folk"),
  8449: (kind: AacGenreKind.tones, genre: "Ringtones|Dance|Maghreb Dance"),
  9002: (kind: AacGenreKind.books, genre: "Nonfiction"),
  9003: (kind: AacGenreKind.books, genre: "Romance"),
  9004: (kind: AacGenreKind.books, genre: "Travel & Adventure"),
  9007: (kind: AacGenreKind.books, genre: "Arts & Entertainment"),
  9008: (kind: AacGenreKind.books, genre: "Biographies & Memoirs"),
  9009: (kind: AacGenreKind.books, genre: "Business & Personal Finance"),
  9010: (kind: AacGenreKind.books, genre: "Children & Teens"),
  9012: (kind: AacGenreKind.books, genre: "Humor"),
  9015: (kind: AacGenreKind.books, genre: "History"),
  9018: (kind: AacGenreKind.books, genre: "Religion & Spirituality"),
  9019: (kind: AacGenreKind.books, genre: "Science & Nature"),
  9020: (kind: AacGenreKind.books, genre: "Sci-Fi & Fantasy"),
  9024: (kind: AacGenreKind.books, genre: "Lifestyle & Home"),
  9025: (kind: AacGenreKind.books, genre: "Self-Development"),
  9026: (kind: AacGenreKind.books, genre: "Comics & Graphic Novels"),
  9027: (kind: AacGenreKind.books, genre: "Computers & Internet"),
  9028: (kind: AacGenreKind.books, genre: "Cookbooks, Food & Wine"),
  9029: (kind: AacGenreKind.books, genre: "Professional & Technical"),
  9030: (kind: AacGenreKind.books, genre: "Parenting"),
  9031: (kind: AacGenreKind.books, genre: "Fiction & Literature"),
  9032: (kind: AacGenreKind.books, genre: "Mysteries & Thrillers"),
  9033: (kind: AacGenreKind.books, genre: "Reference"),
  9034: (kind: AacGenreKind.books, genre: "Politics & Current Events"),
  9035: (kind: AacGenreKind.books, genre: "Sports & Outdoors"),
  10001: (
    kind: AacGenreKind.books,
    genre: "Lifestyle & Home|Antiques & Collectibles"
  ),
  10002: (
    kind: AacGenreKind.books,
    genre: "Arts & Entertainment|Art & Architecture"
  ),
  10003: (kind: AacGenreKind.books, genre: "Religion & Spirituality|Bibles"),
  10004: (kind: AacGenreKind.books, genre: "Self-Development|Spirituality"),
  10005: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Industries & Professions"
  ),
  10006: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Marketing & Sales"
  ),
  10007: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Small Business & Entrepreneurship"
  ),
  10008: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Personal Finance"
  ),
  10009: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Reference"
  ),
  10010: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Careers"
  ),
  10011: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Economics"
  ),
  10012: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Investing"
  ),
  10013: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Finance"
  ),
  10014: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Management & Leadership"
  ),
  10015: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Graphic Novels"
  ),
  10016: (kind: AacGenreKind.books, genre: "Comics & Graphic Novels|Manga"),
  10017: (kind: AacGenreKind.books, genre: "Computers & Internet|Computers"),
  10018: (kind: AacGenreKind.books, genre: "Computers & Internet|Databases"),
  10019: (
    kind: AacGenreKind.books,
    genre: "Computers & Internet|Digital Media"
  ),
  10020: (kind: AacGenreKind.books, genre: "Computers & Internet|Internet"),
  10021: (kind: AacGenreKind.books, genre: "Computers & Internet|Network"),
  10022: (
    kind: AacGenreKind.books,
    genre: "Computers & Internet|Operating Systems"
  ),
  10023: (kind: AacGenreKind.books, genre: "Computers & Internet|Programming"),
  10024: (kind: AacGenreKind.books, genre: "Computers & Internet|Software"),
  10025: (
    kind: AacGenreKind.books,
    genre: "Computers & Internet|System Administration"
  ),
  10026: (kind: AacGenreKind.books, genre: "Cookbooks, Food & Wine|Beverages"),
  10027: (
    kind: AacGenreKind.books,
    genre: "Cookbooks, Food & Wine|Courses & Dishes"
  ),
  10028: (
    kind: AacGenreKind.books,
    genre: "Cookbooks, Food & Wine|Special Diet"
  ),
  10029: (
    kind: AacGenreKind.books,
    genre: "Cookbooks, Food & Wine|Special Occasions"
  ),
  10030: (kind: AacGenreKind.books, genre: "Cookbooks, Food & Wine|Methods"),
  10031: (kind: AacGenreKind.books, genre: "Cookbooks, Food & Wine|Reference"),
  10032: (
    kind: AacGenreKind.books,
    genre: "Cookbooks, Food & Wine|Regional & Ethnic"
  ),
  10033: (
    kind: AacGenreKind.books,
    genre: "Cookbooks, Food & Wine|Specific Ingredients"
  ),
  10034: (kind: AacGenreKind.books, genre: "Lifestyle & Home|Crafts & Hobbies"),
  10035: (kind: AacGenreKind.books, genre: "Professional & Technical|Design"),
  10036: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Theater"),
  10037: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Education"
  ),
  10038: (kind: AacGenreKind.books, genre: "Nonfiction|Family & Relationships"),
  10039: (
    kind: AacGenreKind.books,
    genre: "Fiction & Literature|Action & Adventure"
  ),
  10040: (
    kind: AacGenreKind.books,
    genre: "Fiction & Literature|African American"
  ),
  10041: (kind: AacGenreKind.books, genre: "Fiction & Literature|Religious"),
  10042: (kind: AacGenreKind.books, genre: "Fiction & Literature|Classics"),
  10043: (kind: AacGenreKind.books, genre: "Fiction & Literature|Erotica"),
  10044: (kind: AacGenreKind.books, genre: "Sci-Fi & Fantasy|Fantasy"),
  10045: (kind: AacGenreKind.books, genre: "Fiction & Literature|Gay"),
  10046: (kind: AacGenreKind.books, genre: "Fiction & Literature|Ghost"),
  10047: (kind: AacGenreKind.books, genre: "Fiction & Literature|Historical"),
  10048: (kind: AacGenreKind.books, genre: "Fiction & Literature|Horror"),
  10049: (kind: AacGenreKind.books, genre: "Fiction & Literature|Literary"),
  10050: (kind: AacGenreKind.books, genre: "Mysteries & Thrillers|Hard-Boiled"),
  10051: (kind: AacGenreKind.books, genre: "Mysteries & Thrillers|Historical"),
  10052: (
    kind: AacGenreKind.books,
    genre: "Mysteries & Thrillers|Police Procedural"
  ),
  10053: (
    kind: AacGenreKind.books,
    genre: "Mysteries & Thrillers|Short Stories"
  ),
  10054: (
    kind: AacGenreKind.books,
    genre: "Mysteries & Thrillers|British Detectives"
  ),
  10055: (
    kind: AacGenreKind.books,
    genre: "Mysteries & Thrillers|Women Sleuths"
  ),
  10056: (kind: AacGenreKind.books, genre: "Romance|Erotic Romance"),
  10057: (kind: AacGenreKind.books, genre: "Romance|Contemporary"),
  10058: (kind: AacGenreKind.books, genre: "Romance|Paranormal"),
  10059: (kind: AacGenreKind.books, genre: "Romance|Historical"),
  10060: (kind: AacGenreKind.books, genre: "Romance|Short Stories"),
  10061: (kind: AacGenreKind.books, genre: "Romance|Suspense"),
  10062: (kind: AacGenreKind.books, genre: "Romance|Western"),
  10063: (kind: AacGenreKind.books, genre: "Sci-Fi & Fantasy|Science Fiction"),
  10064: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature"
  ),
  10065: (
    kind: AacGenreKind.books,
    genre: "Fiction & Literature|Short Stories"
  ),
  10066: (kind: AacGenreKind.books, genre: "Reference|Foreign Languages"),
  10067: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Games"),
  10068: (kind: AacGenreKind.books, genre: "Lifestyle & Home|Gardening"),
  10069: (kind: AacGenreKind.books, genre: "Self-Development|Health & Fitness"),
  10070: (kind: AacGenreKind.books, genre: "History|Africa"),
  10071: (kind: AacGenreKind.books, genre: "History|Americas"),
  10072: (kind: AacGenreKind.books, genre: "History|Ancient"),
  10073: (kind: AacGenreKind.books, genre: "History|Asia"),
  10074: (kind: AacGenreKind.books, genre: "History|Australia & Oceania"),
  10075: (kind: AacGenreKind.books, genre: "History|Europe"),
  10076: (kind: AacGenreKind.books, genre: "History|Latin America"),
  10077: (kind: AacGenreKind.books, genre: "History|Middle East"),
  10078: (kind: AacGenreKind.books, genre: "History|Military"),
  10079: (kind: AacGenreKind.books, genre: "History|United States"),
  10080: (kind: AacGenreKind.books, genre: "History|World"),
  10081: (
    kind: AacGenreKind.books,
    genre: "Children & Teens|Children's Fiction"
  ),
  10082: (
    kind: AacGenreKind.books,
    genre: "Children & Teens|Children's Nonfiction"
  ),
  10083: (kind: AacGenreKind.books, genre: "Professional & Technical|Law"),
  10084: (
    kind: AacGenreKind.books,
    genre: "Fiction & Literature|Literary Criticism"
  ),
  10085: (kind: AacGenreKind.books, genre: "Science & Nature|Mathematics"),
  10086: (kind: AacGenreKind.books, genre: "Professional & Technical|Medical"),
  10087: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Music"),
  10088: (kind: AacGenreKind.books, genre: "Science & Nature|Nature"),
  10089: (
    kind: AacGenreKind.books,
    genre: "Arts & Entertainment|Performing Arts"
  ),
  10090: (kind: AacGenreKind.books, genre: "Lifestyle & Home|Pets"),
  10091: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy"),
  10092: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Photography"),
  10093: (kind: AacGenreKind.books, genre: "Fiction & Literature|Poetry"),
  10094: (kind: AacGenreKind.books, genre: "Self-Development|Psychology"),
  10095: (kind: AacGenreKind.books, genre: "Reference|Almanacs & Yearbooks"),
  10096: (kind: AacGenreKind.books, genre: "Reference|Atlases & Maps"),
  10097: (kind: AacGenreKind.books, genre: "Reference|Catalogs & Directories"),
  10098: (kind: AacGenreKind.books, genre: "Reference|Consumer Guides"),
  10099: (
    kind: AacGenreKind.books,
    genre: "Reference|Dictionaries & Thesauruses"
  ),
  10100: (kind: AacGenreKind.books, genre: "Reference|Encyclopedias"),
  10101: (kind: AacGenreKind.books, genre: "Reference|Etiquette"),
  10102: (kind: AacGenreKind.books, genre: "Reference|Quotations"),
  10103: (kind: AacGenreKind.books, genre: "Reference|Words & Language"),
  10104: (kind: AacGenreKind.books, genre: "Reference|Writing"),
  10105: (
    kind: AacGenreKind.books,
    genre: "Religion & Spirituality|Bible Studies"
  ),
  10106: (kind: AacGenreKind.books, genre: "Religion & Spirituality|Buddhism"),
  10107: (
    kind: AacGenreKind.books,
    genre: "Religion & Spirituality|Christianity"
  ),
  10108: (kind: AacGenreKind.books, genre: "Religion & Spirituality|Hinduism"),
  10109: (kind: AacGenreKind.books, genre: "Religion & Spirituality|Islam"),
  10110: (kind: AacGenreKind.books, genre: "Religion & Spirituality|Judaism"),
  10111: (kind: AacGenreKind.books, genre: "Science & Nature|Astronomy"),
  10112: (kind: AacGenreKind.books, genre: "Science & Nature|Chemistry"),
  10113: (kind: AacGenreKind.books, genre: "Science & Nature|Earth Sciences"),
  10114: (kind: AacGenreKind.books, genre: "Science & Nature|Essays"),
  10115: (kind: AacGenreKind.books, genre: "Science & Nature|History"),
  10116: (kind: AacGenreKind.books, genre: "Science & Nature|Life Sciences"),
  10117: (kind: AacGenreKind.books, genre: "Science & Nature|Physics"),
  10118: (kind: AacGenreKind.books, genre: "Science & Nature|Reference"),
  10119: (kind: AacGenreKind.books, genre: "Self-Development|Self-Improvement"),
  10120: (kind: AacGenreKind.books, genre: "Nonfiction|Social Science"),
  10121: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Baseball"),
  10122: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Basketball"),
  10123: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Coaching"),
  10124: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Extreme Sports"),
  10125: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Football"),
  10126: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Golf"),
  10127: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Hockey"),
  10128: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Mountaineering"),
  10129: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Outdoors"),
  10130: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Racket Sports"),
  10131: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Reference"),
  10132: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Soccer"),
  10133: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Training"),
  10134: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Water Sports"),
  10135: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Winter Sports"),
  10136: (kind: AacGenreKind.books, genre: "Reference|Study Aids"),
  10137: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering"
  ),
  10138: (kind: AacGenreKind.books, genre: "Nonfiction|Transportation"),
  10139: (kind: AacGenreKind.books, genre: "Travel & Adventure|Africa"),
  10140: (kind: AacGenreKind.books, genre: "Travel & Adventure|Asia"),
  10141: (
    kind: AacGenreKind.books,
    genre: "Travel & Adventure|Specialty Travel"
  ),
  10142: (kind: AacGenreKind.books, genre: "Travel & Adventure|Canada"),
  10143: (kind: AacGenreKind.books, genre: "Travel & Adventure|Caribbean"),
  10144: (kind: AacGenreKind.books, genre: "Travel & Adventure|Latin America"),
  10145: (
    kind: AacGenreKind.books,
    genre: "Travel & Adventure|Essays & Memoirs"
  ),
  10146: (kind: AacGenreKind.books, genre: "Travel & Adventure|Europe"),
  10147: (kind: AacGenreKind.books, genre: "Travel & Adventure|Middle East"),
  10148: (kind: AacGenreKind.books, genre: "Travel & Adventure|United States"),
  10149: (kind: AacGenreKind.books, genre: "Nonfiction|True Crime"),
  11001: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Fantasy|Contemporary"
  ),
  11002: (kind: AacGenreKind.books, genre: "Sci-Fi & Fantasy|Fantasy|Epic"),
  11003: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Fantasy|Historical"
  ),
  11004: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Fantasy|Paranormal"
  ),
  11005: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Fantasy|Short Stories"
  ),
  11006: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature|Adventure"
  ),
  11007: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature|High Tech"
  ),
  11008: (
    kind: AacGenreKind.books,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories"
  ),
  11009: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Education|Language Arts & Disciplines"
  ),
  11010: (kind: AacGenreKind.books, genre: "Communications & Media"),
  11011: (
    kind: AacGenreKind.books,
    genre: "Communications & Media|Broadcasting"
  ),
  11012: (
    kind: AacGenreKind.books,
    genre: "Communications & Media|Digital Media"
  ),
  11013: (kind: AacGenreKind.books, genre: "Communications & Media|Journalism"),
  11014: (
    kind: AacGenreKind.books,
    genre: "Communications & Media|Photojournalism"
  ),
  11015: (kind: AacGenreKind.books, genre: "Communications & Media|Print"),
  11016: (kind: AacGenreKind.books, genre: "Communications & Media|Speech"),
  11017: (kind: AacGenreKind.books, genre: "Communications & Media|Writing"),
  11018: (
    kind: AacGenreKind.books,
    genre: "Arts & Entertainment|Art & Architecture|Urban Planning"
  ),
  11019: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Dance"),
  11020: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Fashion"),
  11021: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Film"),
  11022: (
    kind: AacGenreKind.books,
    genre: "Arts & Entertainment|Interior Design"
  ),
  11023: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Media Arts"),
  11024: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Radio"),
  11025: (kind: AacGenreKind.books, genre: "Arts & Entertainment|TV"),
  11026: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Visual Arts"),
  11027: (
    kind: AacGenreKind.books,
    genre: "Biographies & Memoirs|Arts & Entertainment"
  ),
  11028: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Business"),
  11029: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Culinary"),
  11030: (
    kind: AacGenreKind.books,
    genre: "Biographies & Memoirs|Gay & Lesbian"
  ),
  11031: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Historical"),
  11032: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Literary"),
  11033: (
    kind: AacGenreKind.books,
    genre: "Biographies & Memoirs|Media & Journalism"
  ),
  11034: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Military"),
  11035: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Politics"),
  11036: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Religious"),
  11037: (
    kind: AacGenreKind.books,
    genre: "Biographies & Memoirs|Science & Technology"
  ),
  11038: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Sports"),
  11039: (kind: AacGenreKind.books, genre: "Biographies & Memoirs|Women"),
  11040: (kind: AacGenreKind.books, genre: "Romance|New Adult"),
  11042: (kind: AacGenreKind.books, genre: "Romance|Romantic Comedy"),
  11043: (kind: AacGenreKind.books, genre: "Romance|Gay & Lesbian"),
  11044: (kind: AacGenreKind.books, genre: "Fiction & Literature|Essays"),
  11045: (kind: AacGenreKind.books, genre: "Fiction & Literature|Anthologies"),
  11046: (
    kind: AacGenreKind.books,
    genre: "Fiction & Literature|Comparative Literature"
  ),
  11047: (kind: AacGenreKind.books, genre: "Fiction & Literature|Drama"),
  11049: (
    kind: AacGenreKind.books,
    genre: "Fiction & Literature|Fairy Tales, Myths & Fables"
  ),
  11050: (kind: AacGenreKind.books, genre: "Fiction & Literature|Family"),
  11051: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|School Drama"
  ),
  11052: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Human Drama"
  ),
  11053: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Family Drama"
  ),
  11054: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Boxing"),
  11055: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Cricket"),
  11056: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Cycling"),
  11057: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Equestrian"),
  11058: (
    kind: AacGenreKind.books,
    genre: "Sports & Outdoors|Martial Arts & Self Defense"
  ),
  11059: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Motor Sports"),
  11060: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Rugby"),
  11061: (kind: AacGenreKind.books, genre: "Sports & Outdoors|Running"),
  11062: (kind: AacGenreKind.books, genre: "Self-Development|Diet & Nutrition"),
  11063: (kind: AacGenreKind.books, genre: "Science & Nature|Agriculture"),
  11064: (kind: AacGenreKind.books, genre: "Science & Nature|Atmosphere"),
  11065: (kind: AacGenreKind.books, genre: "Science & Nature|Biology"),
  11066: (kind: AacGenreKind.books, genre: "Science & Nature|Ecology"),
  11067: (kind: AacGenreKind.books, genre: "Science & Nature|Environment"),
  11068: (kind: AacGenreKind.books, genre: "Science & Nature|Geography"),
  11069: (kind: AacGenreKind.books, genre: "Science & Nature|Geology"),
  11070: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Social Science|Anthropology"
  ),
  11071: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Social Science|Archaeology"
  ),
  11072: (kind: AacGenreKind.books, genre: "Nonfiction|Social Science|Civics"),
  11073: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Social Science|Government"
  ),
  11074: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Social Science|Social Studies"
  ),
  11075: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Social Science|Social Welfare"
  ),
  11076: (kind: AacGenreKind.books, genre: "Nonfiction|Social Science|Society"),
  11077: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy|Aesthetics"),
  11078: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Philosophy|Epistemology"
  ),
  11079: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy|Ethics"),
  11080: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy|Language"),
  11081: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy|Logic"),
  11082: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy|Metaphysics"),
  11083: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy|Political"),
  11084: (kind: AacGenreKind.books, genre: "Nonfiction|Philosophy|Religion"),
  11085: (kind: AacGenreKind.books, genre: "Reference|Manuals"),
  11086: (kind: AacGenreKind.books, genre: "Kids"),
  11087: (kind: AacGenreKind.books, genre: "Kids|Animals"),
  11088: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts"),
  11089: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Alphabet"),
  11090: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Body"),
  11091: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Colors"),
  11092: (
    kind: AacGenreKind.books,
    genre: "Kids|Basic Concepts|Counting & Numbers"
  ),
  11093: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Date & Time"),
  11094: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|General"),
  11095: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Money"),
  11096: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Opposites"),
  11097: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Seasons"),
  11098: (
    kind: AacGenreKind.books,
    genre: "Kids|Basic Concepts|Senses & Sensation"
  ),
  11099: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Size & Shape"),
  11100: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Sounds"),
  11101: (kind: AacGenreKind.books, genre: "Kids|Basic Concepts|Words"),
  11102: (kind: AacGenreKind.books, genre: "Kids|Biography"),
  11103: (kind: AacGenreKind.books, genre: "Kids|Careers & Occupations"),
  11104: (kind: AacGenreKind.books, genre: "Kids|Computers & Technology"),
  11105: (kind: AacGenreKind.books, genre: "Kids|Cooking & Food"),
  11106: (kind: AacGenreKind.books, genre: "Kids|Arts & Entertainment"),
  11107: (kind: AacGenreKind.books, genre: "Kids|Arts & Entertainment|Art"),
  11108: (kind: AacGenreKind.books, genre: "Kids|Arts & Entertainment|Crafts"),
  11109: (kind: AacGenreKind.books, genre: "Kids|Arts & Entertainment|Music"),
  11110: (
    kind: AacGenreKind.books,
    genre: "Kids|Arts & Entertainment|Performing Arts"
  ),
  11111: (kind: AacGenreKind.books, genre: "Kids|Family"),
  11112: (kind: AacGenreKind.books, genre: "Kids|Fiction"),
  11113: (kind: AacGenreKind.books, genre: "Kids|Fiction|Action & Adventure"),
  11114: (kind: AacGenreKind.books, genre: "Kids|Fiction|Animals"),
  11115: (kind: AacGenreKind.books, genre: "Kids|Fiction|Classics"),
  11116: (
    kind: AacGenreKind.books,
    genre: "Kids|Fiction|Comics & Graphic Novels"
  ),
  11117: (
    kind: AacGenreKind.books,
    genre: "Kids|Fiction|Culture, Places & People"
  ),
  11118: (
    kind: AacGenreKind.books,
    genre: "Kids|Fiction|Family & Relationships"
  ),
  11119: (kind: AacGenreKind.books, genre: "Kids|Fiction|Fantasy"),
  11120: (
    kind: AacGenreKind.books,
    genre: "Kids|Fiction|Fairy Tales, Myths & Fables"
  ),
  11121: (kind: AacGenreKind.books, genre: "Kids|Fiction|Favorite Characters"),
  11122: (kind: AacGenreKind.books, genre: "Kids|Fiction|Historical"),
  11123: (
    kind: AacGenreKind.books,
    genre: "Kids|Fiction|Holidays & Celebrations"
  ),
  11124: (kind: AacGenreKind.books, genre: "Kids|Fiction|Monsters & Ghosts"),
  11125: (kind: AacGenreKind.books, genre: "Kids|Fiction|Mysteries"),
  11126: (kind: AacGenreKind.books, genre: "Kids|Fiction|Nature"),
  11127: (kind: AacGenreKind.books, genre: "Kids|Fiction|Religion"),
  11128: (kind: AacGenreKind.books, genre: "Kids|Fiction|Sci-Fi"),
  11129: (kind: AacGenreKind.books, genre: "Kids|Fiction|Social Issues"),
  11130: (kind: AacGenreKind.books, genre: "Kids|Fiction|Sports & Recreation"),
  11131: (kind: AacGenreKind.books, genre: "Kids|Fiction|Transportation"),
  11132: (kind: AacGenreKind.books, genre: "Kids|Games & Activities"),
  11133: (kind: AacGenreKind.books, genre: "Kids|General Nonfiction"),
  11134: (kind: AacGenreKind.books, genre: "Kids|Health"),
  11135: (kind: AacGenreKind.books, genre: "Kids|History"),
  11136: (kind: AacGenreKind.books, genre: "Kids|Holidays & Celebrations"),
  11137: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Birthdays"
  ),
  11138: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Christmas & Advent"
  ),
  11139: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Easter & Lent"
  ),
  11140: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|General"
  ),
  11141: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Halloween"
  ),
  11142: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Hanukkah"
  ),
  11143: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Other"
  ),
  11144: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Passover"
  ),
  11145: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Patriotic Holidays"
  ),
  11146: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Ramadan"
  ),
  11147: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Thanksgiving"
  ),
  11148: (
    kind: AacGenreKind.books,
    genre: "Kids|Holidays & Celebrations|Valentine's Day"
  ),
  11149: (kind: AacGenreKind.books, genre: "Kids|Humor"),
  11150: (kind: AacGenreKind.books, genre: "Kids|Humor|Jokes & Riddles"),
  11151: (kind: AacGenreKind.books, genre: "Kids|Poetry"),
  11152: (kind: AacGenreKind.books, genre: "Kids|Learning to Read"),
  11153: (
    kind: AacGenreKind.books,
    genre: "Kids|Learning to Read|Chapter books"
  ),
  11154: (
    kind: AacGenreKind.books,
    genre: "Kids|Learning to Read|Early Readers"
  ),
  11155: (
    kind: AacGenreKind.books,
    genre: "Kids|Learning to Read|Intermediate Readers"
  ),
  11156: (kind: AacGenreKind.books, genre: "Kids|Nursery Rhymes"),
  11157: (kind: AacGenreKind.books, genre: "Kids|Government"),
  11158: (kind: AacGenreKind.books, genre: "Kids|Reference"),
  11159: (kind: AacGenreKind.books, genre: "Kids|Religion"),
  11160: (kind: AacGenreKind.books, genre: "Kids|Science & Nature"),
  11161: (kind: AacGenreKind.books, genre: "Kids|Social Issues"),
  11162: (kind: AacGenreKind.books, genre: "Kids|Social Studies"),
  11163: (kind: AacGenreKind.books, genre: "Kids|Sports & Recreation"),
  11164: (kind: AacGenreKind.books, genre: "Kids|Transportation"),
  11165: (kind: AacGenreKind.books, genre: "Young Adult"),
  11166: (kind: AacGenreKind.books, genre: "Young Adult|Animals"),
  11167: (kind: AacGenreKind.books, genre: "Young Adult|Biography"),
  11168: (kind: AacGenreKind.books, genre: "Young Adult|Careers & Occupations"),
  11169: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Computers & Technology"
  ),
  11170: (kind: AacGenreKind.books, genre: "Young Adult|Cooking & Food"),
  11171: (kind: AacGenreKind.books, genre: "Young Adult|Arts & Entertainment"),
  11172: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Arts & Entertainment|Art"
  ),
  11173: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Arts & Entertainment|Crafts"
  ),
  11174: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Arts & Entertainment|Music"
  ),
  11175: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Arts & Entertainment|Performing Arts"
  ),
  11176: (kind: AacGenreKind.books, genre: "Young Adult|Family"),
  11177: (kind: AacGenreKind.books, genre: "Young Adult|Fiction"),
  11178: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Action & Adventure"
  ),
  11179: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Animals"),
  11180: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Classics"),
  11181: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Comics & Graphic Novels"
  ),
  11182: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Culture, Places & People"
  ),
  11183: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Dystopian"),
  11184: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Family & Relationships"
  ),
  11185: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Fantasy"),
  11186: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Fairy Tales, Myths & Fables"
  ),
  11187: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Favorite Characters"
  ),
  11188: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Historical"),
  11189: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Holidays & Celebrations"
  ),
  11190: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Horror, Monsters & Ghosts"
  ),
  11191: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Crime & Mystery"
  ),
  11192: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Nature"),
  11193: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Religion"),
  11194: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Romance"),
  11195: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Sci-Fi"),
  11196: (kind: AacGenreKind.books, genre: "Young Adult|Fiction|Coming of Age"),
  11197: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Sports & Recreation"
  ),
  11198: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Fiction|Transportation"
  ),
  11199: (kind: AacGenreKind.books, genre: "Young Adult|Games & Activities"),
  11200: (kind: AacGenreKind.books, genre: "Young Adult|General Nonfiction"),
  11201: (kind: AacGenreKind.books, genre: "Young Adult|Health"),
  11202: (kind: AacGenreKind.books, genre: "Young Adult|History"),
  11203: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations"
  ),
  11204: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Birthdays"
  ),
  11205: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Christmas & Advent"
  ),
  11206: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Easter & Lent"
  ),
  11207: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|General"
  ),
  11208: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Halloween"
  ),
  11209: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Hanukkah"
  ),
  11210: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Other"
  ),
  11211: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Passover"
  ),
  11212: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Patriotic Holidays"
  ),
  11213: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Ramadan"
  ),
  11214: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Thanksgiving"
  ),
  11215: (
    kind: AacGenreKind.books,
    genre: "Young Adult|Holidays & Celebrations|Valentine's Day"
  ),
  11216: (kind: AacGenreKind.books, genre: "Young Adult|Humor"),
  11217: (kind: AacGenreKind.books, genre: "Young Adult|Humor|Jokes & Riddles"),
  11218: (kind: AacGenreKind.books, genre: "Young Adult|Poetry"),
  11219: (kind: AacGenreKind.books, genre: "Young Adult|Politics & Government"),
  11220: (kind: AacGenreKind.books, genre: "Young Adult|Reference"),
  11221: (kind: AacGenreKind.books, genre: "Young Adult|Religion"),
  11222: (kind: AacGenreKind.books, genre: "Young Adult|Science & Nature"),
  11223: (kind: AacGenreKind.books, genre: "Young Adult|Coming of Age"),
  11224: (kind: AacGenreKind.books, genre: "Young Adult|Social Studies"),
  11225: (kind: AacGenreKind.books, genre: "Young Adult|Sports & Recreation"),
  11226: (kind: AacGenreKind.books, genre: "Young Adult|Transportation"),
  11227: (kind: AacGenreKind.books, genre: "Communications & Media"),
  11228: (kind: AacGenreKind.books, genre: "Military & Warfare"),
  11229: (kind: AacGenreKind.books, genre: "Romance|Inspirational"),
  11231: (kind: AacGenreKind.books, genre: "Romance|Holiday"),
  11232: (kind: AacGenreKind.books, genre: "Romance|Wholesome"),
  11233: (kind: AacGenreKind.books, genre: "Romance|Military"),
  11234: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Art History"),
  11236: (kind: AacGenreKind.books, genre: "Arts & Entertainment|Design"),
  11243: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Accounting"
  ),
  11244: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Hospitality"
  ),
  11245: (
    kind: AacGenreKind.books,
    genre: "Business & Personal Finance|Real Estate"
  ),
  11246: (kind: AacGenreKind.books, genre: "Humor|Jokes & Riddles"),
  11247: (
    kind: AacGenreKind.books,
    genre: "Religion & Spirituality|Comparative Religion"
  ),
  11255: (
    kind: AacGenreKind.books,
    genre: "Cookbooks, Food & Wine|Culinary Arts"
  ),
  11259: (kind: AacGenreKind.books, genre: "Mysteries & Thrillers|Cozy"),
  11260: (
    kind: AacGenreKind.books,
    genre: "Politics & Current Events|Current Events"
  ),
  11261: (
    kind: AacGenreKind.books,
    genre: "Politics & Current Events|Foreign Policy & International Relations"
  ),
  11262: (
    kind: AacGenreKind.books,
    genre: "Politics & Current Events|Local Government"
  ),
  11263: (
    kind: AacGenreKind.books,
    genre: "Politics & Current Events|National Government"
  ),
  11264: (
    kind: AacGenreKind.books,
    genre: "Politics & Current Events|Political Science"
  ),
  11265: (
    kind: AacGenreKind.books,
    genre: "Politics & Current Events|Public Administration"
  ),
  11266: (
    kind: AacGenreKind.books,
    genre: "Politics & Current Events|World Affairs"
  ),
  11273: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Family & Relationships|Family & Childcare"
  ),
  11274: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Family & Relationships|Love & Romance"
  ),
  11275: (kind: AacGenreKind.books, genre: "Sci-Fi & Fantasy|Fantasy|Urban"),
  11276: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Arabic"
  ),
  11277: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Bilingual Editions"
  ),
  11278: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|African Languages"
  ),
  11279: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Ancient Languages"
  ),
  11280: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Chinese"
  ),
  11281: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|English"
  ),
  11282: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|French"
  ),
  11283: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|German"
  ),
  11284: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Hebrew"
  ),
  11285: (kind: AacGenreKind.books, genre: "Reference|Foreign Languages|Hindi"),
  11286: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Italian"
  ),
  11287: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Japanese"
  ),
  11288: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Korean"
  ),
  11289: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Linguistics"
  ),
  11290: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Other Languages"
  ),
  11291: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Portuguese"
  ),
  11292: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Russian"
  ),
  11293: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Spanish"
  ),
  11294: (
    kind: AacGenreKind.books,
    genre: "Reference|Foreign Languages|Speech Pathology"
  ),
  11295: (
    kind: AacGenreKind.books,
    genre: "Science & Nature|Mathematics|Advanced Mathematics"
  ),
  11296: (
    kind: AacGenreKind.books,
    genre: "Science & Nature|Mathematics|Algebra"
  ),
  11297: (
    kind: AacGenreKind.books,
    genre: "Science & Nature|Mathematics|Arithmetic"
  ),
  11298: (
    kind: AacGenreKind.books,
    genre: "Science & Nature|Mathematics|Calculus"
  ),
  11299: (
    kind: AacGenreKind.books,
    genre: "Science & Nature|Mathematics|Geometry"
  ),
  11300: (
    kind: AacGenreKind.books,
    genre: "Science & Nature|Mathematics|Statistics"
  ),
  11301: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Veterinary"
  ),
  11302: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Neuroscience"
  ),
  11303: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Immunology"
  ),
  11304: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Nursing"
  ),
  11305: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Pharmacology & Toxicology"
  ),
  11306: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Anatomy & Physiology"
  ),
  11307: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Dentistry"
  ),
  11308: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Emergency Medicine"
  ),
  11309: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Genetics"
  ),
  11310: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Psychiatry"
  ),
  11311: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Radiology"
  ),
  11312: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Medical|Alternative Medicine"
  ),
  11317: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Philosophy|Political Philosophy"
  ),
  11319: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Philosophy|Philosophy of Language"
  ),
  11320: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Philosophy|Philosophy of Religion"
  ),
  11327: (
    kind: AacGenreKind.books,
    genre: "Nonfiction|Social Science|Sociology"
  ),
  11329: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering|Aeronautics"
  ),
  11330: (
    kind: AacGenreKind.books,
    genre:
        "Professional & Technical|Engineering|Chemical & Petroleum Engineering"
  ),
  11331: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering|Civil Engineering"
  ),
  11332: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering|Computer Science"
  ),
  11333: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering|Electrical Engineering"
  ),
  11334: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering|Environmental Engineering"
  ),
  11335: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering|Mechanical Engineering"
  ),
  11336: (
    kind: AacGenreKind.books,
    genre: "Professional & Technical|Engineering|Power Resources"
  ),
  11337: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Boys"
  ),
  11338: (kind: AacGenreKind.books, genre: "Comics & Graphic Novels|Manga|Men"),
  11339: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Girls"
  ),
  11340: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Women"
  ),
  11341: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Other"
  ),
  11342: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Yaoi"
  ),
  11343: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Comic Essays"
  ),
  12001: (kind: AacGenreKind.macAppStore, genre: "Business"),
  12002: (kind: AacGenreKind.macAppStore, genre: "Developer Tools"),
  12003: (kind: AacGenreKind.macAppStore, genre: "Education"),
  12004: (kind: AacGenreKind.macAppStore, genre: "Entertainment"),
  12005: (kind: AacGenreKind.macAppStore, genre: "Finance"),
  12006: (kind: AacGenreKind.macAppStore, genre: "Games"),
  12007: (kind: AacGenreKind.macAppStore, genre: "Health & Fitness"),
  12008: (kind: AacGenreKind.macAppStore, genre: "Lifestyle"),
  12010: (kind: AacGenreKind.macAppStore, genre: "Medical"),
  12011: (kind: AacGenreKind.macAppStore, genre: "Music"),
  12012: (kind: AacGenreKind.macAppStore, genre: "News"),
  12013: (kind: AacGenreKind.macAppStore, genre: "Photography"),
  12014: (kind: AacGenreKind.macAppStore, genre: "Productivity"),
  12015: (kind: AacGenreKind.macAppStore, genre: "Reference"),
  12016: (kind: AacGenreKind.macAppStore, genre: "Social Networking"),
  12017: (kind: AacGenreKind.macAppStore, genre: "Sports"),
  12018: (kind: AacGenreKind.macAppStore, genre: "Travel"),
  12019: (kind: AacGenreKind.macAppStore, genre: "Utilities"),
  12020: (kind: AacGenreKind.macAppStore, genre: "Video"),
  12021: (kind: AacGenreKind.macAppStore, genre: "Weather"),
  12022: (kind: AacGenreKind.macAppStore, genre: "Graphics & Design"),
  12201: (kind: AacGenreKind.macAppStore, genre: "Games|Action"),
  12202: (kind: AacGenreKind.macAppStore, genre: "Games|Adventure"),
  12203: (kind: AacGenreKind.macAppStore, genre: "Games|Casual"),
  12204: (kind: AacGenreKind.macAppStore, genre: "Games|Board"),
  12205: (kind: AacGenreKind.macAppStore, genre: "Games|Card"),
  12206: (kind: AacGenreKind.macAppStore, genre: "Games|Casino"),
  12207: (kind: AacGenreKind.macAppStore, genre: "Games|Dice"),
  12208: (kind: AacGenreKind.macAppStore, genre: "Games|Educational"),
  12209: (kind: AacGenreKind.macAppStore, genre: "Games|Family"),
  12210: (kind: AacGenreKind.macAppStore, genre: "Games|Kids"),
  12211: (kind: AacGenreKind.macAppStore, genre: "Games|Music"),
  12212: (kind: AacGenreKind.macAppStore, genre: "Games|Puzzle"),
  12213: (kind: AacGenreKind.macAppStore, genre: "Games|Racing"),
  12214: (kind: AacGenreKind.macAppStore, genre: "Games|Role Playing"),
  12215: (kind: AacGenreKind.macAppStore, genre: "Games|Simulation"),
  12216: (kind: AacGenreKind.macAppStore, genre: "Games|Sports"),
  12217: (kind: AacGenreKind.macAppStore, genre: "Games|Strategy"),
  12218: (kind: AacGenreKind.macAppStore, genre: "Games|Trivia"),
  12219: (kind: AacGenreKind.macAppStore, genre: "Games|Word"),
  13001: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|News & Politics"
  ),
  13002: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Fashion & Style"
  ),
  13003: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Home & Garden"
  ),
  13004: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Outdoors & Nature"
  ),
  13005: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Sports & Leisure"
  ),
  13006: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Automotive"
  ),
  13007: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Arts & Photography"
  ),
  13008: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Brides & Weddings"
  ),
  13009: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Business & Investing"
  ),
  13010: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Children's Magazines"
  ),
  13011: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Computers & Internet"
  ),
  13012: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Cooking, Food & Drink"
  ),
  13013: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Crafts & Hobbies"
  ),
  13014: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Electronics & Audio"
  ),
  13015: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Entertainment"
  ),
  13017: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Health, Mind & Body"
  ),
  13018: (kind: AacGenreKind.appStore, genre: "Magazines & Newspapers|History"),
  13019: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Literary Magazines & Journals"
  ),
  13020: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Men's Interest"
  ),
  13021: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|movies & Music"
  ),
  13023: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Parenting & Family"
  ),
  13024: (kind: AacGenreKind.appStore, genre: "Magazines & Newspapers|Pets"),
  13025: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Professional & Trade"
  ),
  13026: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Regional News"
  ),
  13027: (kind: AacGenreKind.appStore, genre: "Magazines & Newspapers|Science"),
  13028: (kind: AacGenreKind.appStore, genre: "Magazines & Newspapers|Teens"),
  13029: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Travel & Regional"
  ),
  13030: (
    kind: AacGenreKind.appStore,
    genre: "Magazines & Newspapers|Women's Interest"
  ),
  15000: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment"),
  15001: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Art & Architecture"
  ),
  15002: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Art & Architecture|Urban Planning"
  ),
  15003: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Art History"
  ),
  15004: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|Dance"),
  15005: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|Design"),
  15006: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|Fashion"),
  15007: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|Film"),
  15008: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|Games"),
  15009: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Interior Design"
  ),
  15010: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Media Arts"
  ),
  15011: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|Music"),
  15012: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Performing Arts"
  ),
  15013: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Photography"
  ),
  15014: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|Theater"),
  15015: (kind: AacGenreKind.textbooks, genre: "Arts & Entertainment|TV"),
  15016: (
    kind: AacGenreKind.textbooks,
    genre: "Arts & Entertainment|Visual Arts"
  ),
  15017: (kind: AacGenreKind.textbooks, genre: "Biographies & Memoirs"),
  15018: (kind: AacGenreKind.textbooks, genre: "Business & Personal Finance"),
  15019: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Accounting"
  ),
  15020: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Careers"
  ),
  15021: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Economics"
  ),
  15022: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Finance"
  ),
  15023: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Hospitality"
  ),
  15024: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Industries & Professions"
  ),
  15025: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Investing"
  ),
  15026: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Management & Leadership"
  ),
  15027: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Marketing & Sales"
  ),
  15028: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Personal Finance"
  ),
  15029: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Real Estate"
  ),
  15030: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Reference"
  ),
  15031: (
    kind: AacGenreKind.textbooks,
    genre: "Business & Personal Finance|Small Business & Entrepreneurship"
  ),
  15032: (kind: AacGenreKind.textbooks, genre: "Children & Teens"),
  15033: (kind: AacGenreKind.textbooks, genre: "Children & Teens|Fiction"),
  15034: (kind: AacGenreKind.textbooks, genre: "Children & Teens|Nonfiction"),
  15035: (kind: AacGenreKind.textbooks, genre: "Comics & Graphic Novels"),
  15036: (
    kind: AacGenreKind.textbooks,
    genre: "Comics & Graphic Novels|Graphic Novels"
  ),
  15037: (kind: AacGenreKind.textbooks, genre: "Comics & Graphic Novels|Manga"),
  15038: (kind: AacGenreKind.textbooks, genre: "Communications & Media"),
  15039: (
    kind: AacGenreKind.textbooks,
    genre: "Communications & Media|Broadcasting"
  ),
  15040: (
    kind: AacGenreKind.textbooks,
    genre: "Communications & Media|Digital Media"
  ),
  15041: (
    kind: AacGenreKind.textbooks,
    genre: "Communications & Media|Journalism"
  ),
  15042: (
    kind: AacGenreKind.textbooks,
    genre: "Communications & Media|Photojournalism"
  ),
  15043: (kind: AacGenreKind.textbooks, genre: "Communications & Media|Print"),
  15044: (kind: AacGenreKind.textbooks, genre: "Communications & Media|Speech"),
  15045: (
    kind: AacGenreKind.textbooks,
    genre: "Communications & Media|Writing"
  ),
  15046: (kind: AacGenreKind.textbooks, genre: "Computers & Internet"),
  15047: (
    kind: AacGenreKind.textbooks,
    genre: "Computers & Internet|Computers"
  ),
  15048: (
    kind: AacGenreKind.textbooks,
    genre: "Computers & Internet|Databases"
  ),
  15049: (
    kind: AacGenreKind.textbooks,
    genre: "Computers & Internet|Digital Media"
  ),
  15050: (kind: AacGenreKind.textbooks, genre: "Computers & Internet|Internet"),
  15051: (kind: AacGenreKind.textbooks, genre: "Computers & Internet|Network"),
  15052: (
    kind: AacGenreKind.textbooks,
    genre: "Computers & Internet|Operating Systems"
  ),
  15053: (
    kind: AacGenreKind.textbooks,
    genre: "Computers & Internet|Programming"
  ),
  15054: (kind: AacGenreKind.textbooks, genre: "Computers & Internet|Software"),
  15055: (
    kind: AacGenreKind.textbooks,
    genre: "Computers & Internet|System Administration"
  ),
  15056: (kind: AacGenreKind.textbooks, genre: "Cookbooks, Food & Wine"),
  15057: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Beverages"
  ),
  15058: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Courses & Dishes"
  ),
  15059: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Culinary Arts"
  ),
  15060: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Methods"
  ),
  15061: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Reference"
  ),
  15062: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Regional & Ethnic"
  ),
  15063: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Special Diet"
  ),
  15064: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Special Occasions"
  ),
  15065: (
    kind: AacGenreKind.textbooks,
    genre: "Cookbooks, Food & Wine|Specific Ingredients"
  ),
  15066: (kind: AacGenreKind.textbooks, genre: "Engineering"),
  15067: (kind: AacGenreKind.textbooks, genre: "Engineering|Aeronautics"),
  15068: (
    kind: AacGenreKind.textbooks,
    genre: "Engineering|Chemical & Petroleum Engineering"
  ),
  15069: (kind: AacGenreKind.textbooks, genre: "Engineering|Civil Engineering"),
  15070: (kind: AacGenreKind.textbooks, genre: "Engineering|Computer Science"),
  15071: (
    kind: AacGenreKind.textbooks,
    genre: "Engineering|Electrical Engineering"
  ),
  15072: (
    kind: AacGenreKind.textbooks,
    genre: "Engineering|Environmental Engineering"
  ),
  15073: (
    kind: AacGenreKind.textbooks,
    genre: "Engineering|Mechanical Engineering"
  ),
  15074: (kind: AacGenreKind.textbooks, genre: "Engineering|Power Resources"),
  15075: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature"),
  15076: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Latino"),
  15077: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|Action & Adventure"
  ),
  15078: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|African American"
  ),
  15079: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|Anthologies"
  ),
  15080: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Classics"),
  15081: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|Comparative Literature"
  ),
  15082: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Erotica"),
  15083: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Gay"),
  15084: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Ghost"),
  15085: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|Historical"
  ),
  15086: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Horror"),
  15087: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Literary"),
  15088: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|Literary Criticism"
  ),
  15089: (kind: AacGenreKind.textbooks, genre: "Fiction & Literature|Poetry"),
  15090: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|Religious"
  ),
  15091: (
    kind: AacGenreKind.textbooks,
    genre: "Fiction & Literature|Short Stories"
  ),
  15092: (kind: AacGenreKind.textbooks, genre: "Health, Mind & Body"),
  15093: (kind: AacGenreKind.textbooks, genre: "Health, Mind & Body|Fitness"),
  15094: (
    kind: AacGenreKind.textbooks,
    genre: "Health, Mind & Body|Self-Improvement"
  ),
  15095: (kind: AacGenreKind.textbooks, genre: "History"),
  15096: (kind: AacGenreKind.textbooks, genre: "History|Africa"),
  15097: (kind: AacGenreKind.textbooks, genre: "History|Americas"),
  15098: (kind: AacGenreKind.textbooks, genre: "History|Americas|Canada"),
  15099: (
    kind: AacGenreKind.textbooks,
    genre: "History|Americas|Latin America"
  ),
  15100: (
    kind: AacGenreKind.textbooks,
    genre: "History|Americas|United States"
  ),
  15101: (kind: AacGenreKind.textbooks, genre: "History|Ancient"),
  15102: (kind: AacGenreKind.textbooks, genre: "History|Asia"),
  15103: (kind: AacGenreKind.textbooks, genre: "History|Australia & Oceania"),
  15104: (kind: AacGenreKind.textbooks, genre: "History|Europe"),
  15105: (kind: AacGenreKind.textbooks, genre: "History|Middle East"),
  15106: (kind: AacGenreKind.textbooks, genre: "History|Military"),
  15107: (kind: AacGenreKind.textbooks, genre: "History|World"),
  15108: (kind: AacGenreKind.textbooks, genre: "Humor"),
  15109: (kind: AacGenreKind.textbooks, genre: "Language Studies"),
  15110: (
    kind: AacGenreKind.textbooks,
    genre: "Language Studies|African Languages"
  ),
  15111: (
    kind: AacGenreKind.textbooks,
    genre: "Language Studies|Ancient Languages"
  ),
  15112: (kind: AacGenreKind.textbooks, genre: "Language Studies|Arabic"),
  15113: (
    kind: AacGenreKind.textbooks,
    genre: "Language Studies|Bilingual Editions"
  ),
  15114: (kind: AacGenreKind.textbooks, genre: "Language Studies|Chinese"),
  15115: (kind: AacGenreKind.textbooks, genre: "Language Studies|English"),
  15116: (kind: AacGenreKind.textbooks, genre: "Language Studies|French"),
  15117: (kind: AacGenreKind.textbooks, genre: "Language Studies|German"),
  15118: (kind: AacGenreKind.textbooks, genre: "Language Studies|Hebrew"),
  15119: (kind: AacGenreKind.textbooks, genre: "Language Studies|Hindi"),
  15120: (
    kind: AacGenreKind.textbooks,
    genre: "Language Studies|Indigenous Languages"
  ),
  15121: (kind: AacGenreKind.textbooks, genre: "Language Studies|Italian"),
  15122: (kind: AacGenreKind.textbooks, genre: "Language Studies|Japanese"),
  15123: (kind: AacGenreKind.textbooks, genre: "Language Studies|Korean"),
  15124: (kind: AacGenreKind.textbooks, genre: "Language Studies|Linguistics"),
  15125: (
    kind: AacGenreKind.textbooks,
    genre: "Language Studies|Other Language"
  ),
  15126: (kind: AacGenreKind.textbooks, genre: "Language Studies|Portuguese"),
  15127: (kind: AacGenreKind.textbooks, genre: "Language Studies|Russian"),
  15128: (kind: AacGenreKind.textbooks, genre: "Language Studies|Spanish"),
  15129: (
    kind: AacGenreKind.textbooks,
    genre: "Language Studies|Speech Pathology"
  ),
  15130: (kind: AacGenreKind.textbooks, genre: "Lifestyle & Home"),
  15131: (
    kind: AacGenreKind.textbooks,
    genre: "Lifestyle & Home|Antiques & Collectibles"
  ),
  15132: (
    kind: AacGenreKind.textbooks,
    genre: "Lifestyle & Home|Crafts & Hobbies"
  ),
  15133: (kind: AacGenreKind.textbooks, genre: "Lifestyle & Home|Gardening"),
  15134: (kind: AacGenreKind.textbooks, genre: "Lifestyle & Home|Pets"),
  15135: (kind: AacGenreKind.textbooks, genre: "Mathematics"),
  15136: (
    kind: AacGenreKind.textbooks,
    genre: "Mathematics|Advanced Mathematics"
  ),
  15137: (kind: AacGenreKind.textbooks, genre: "Mathematics|Algebra"),
  15138: (kind: AacGenreKind.textbooks, genre: "Mathematics|Arithmetic"),
  15139: (kind: AacGenreKind.textbooks, genre: "Mathematics|Calculus"),
  15140: (kind: AacGenreKind.textbooks, genre: "Mathematics|Geometry"),
  15141: (kind: AacGenreKind.textbooks, genre: "Mathematics|Statistics"),
  15142: (kind: AacGenreKind.textbooks, genre: "Medicine"),
  15143: (kind: AacGenreKind.textbooks, genre: "Medicine|Anatomy & Physiology"),
  15144: (kind: AacGenreKind.textbooks, genre: "Medicine|Dentistry"),
  15145: (kind: AacGenreKind.textbooks, genre: "Medicine|Emergency Medicine"),
  15146: (kind: AacGenreKind.textbooks, genre: "Medicine|Genetics"),
  15147: (kind: AacGenreKind.textbooks, genre: "Medicine|Immunology"),
  15148: (kind: AacGenreKind.textbooks, genre: "Medicine|Neuroscience"),
  15149: (kind: AacGenreKind.textbooks, genre: "Medicine|Nursing"),
  15150: (
    kind: AacGenreKind.textbooks,
    genre: "Medicine|Pharmacology & Toxicology"
  ),
  15151: (kind: AacGenreKind.textbooks, genre: "Medicine|Psychiatry"),
  15152: (kind: AacGenreKind.textbooks, genre: "Medicine|Psychology"),
  15153: (kind: AacGenreKind.textbooks, genre: "Medicine|Radiology"),
  15154: (kind: AacGenreKind.textbooks, genre: "Medicine|Veterinary"),
  15155: (kind: AacGenreKind.textbooks, genre: "Mysteries & Thrillers"),
  15156: (
    kind: AacGenreKind.textbooks,
    genre: "Mysteries & Thrillers|British Detectives"
  ),
  15157: (
    kind: AacGenreKind.textbooks,
    genre: "Mysteries & Thrillers|Hard-Boiled"
  ),
  15158: (
    kind: AacGenreKind.textbooks,
    genre: "Mysteries & Thrillers|Historical"
  ),
  15159: (
    kind: AacGenreKind.textbooks,
    genre: "Mysteries & Thrillers|Police Procedural"
  ),
  15160: (
    kind: AacGenreKind.textbooks,
    genre: "Mysteries & Thrillers|Short Stories"
  ),
  15161: (
    kind: AacGenreKind.textbooks,
    genre: "Mysteries & Thrillers|Women Sleuths"
  ),
  15162: (kind: AacGenreKind.textbooks, genre: "Nonfiction"),
  15163: (
    kind: AacGenreKind.textbooks,
    genre: "Nonfiction|Family & Relationships"
  ),
  15164: (kind: AacGenreKind.textbooks, genre: "Nonfiction|Transportation"),
  15165: (kind: AacGenreKind.textbooks, genre: "Nonfiction|True Crime"),
  15166: (kind: AacGenreKind.textbooks, genre: "Parenting"),
  15167: (kind: AacGenreKind.textbooks, genre: "Philosophy"),
  15168: (kind: AacGenreKind.textbooks, genre: "Philosophy|Aesthetics"),
  15169: (kind: AacGenreKind.textbooks, genre: "Philosophy|Epistemology"),
  15170: (kind: AacGenreKind.textbooks, genre: "Philosophy|Ethics"),
  15171: (
    kind: AacGenreKind.textbooks,
    genre: "Philosophy|Philosophy of Language"
  ),
  15172: (kind: AacGenreKind.textbooks, genre: "Philosophy|Logic"),
  15173: (kind: AacGenreKind.textbooks, genre: "Philosophy|Metaphysics"),
  15174: (
    kind: AacGenreKind.textbooks,
    genre: "Philosophy|Political Philosophy"
  ),
  15175: (
    kind: AacGenreKind.textbooks,
    genre: "Philosophy|Philosophy of Religion"
  ),
  15176: (kind: AacGenreKind.textbooks, genre: "Politics & Current Events"),
  15177: (
    kind: AacGenreKind.textbooks,
    genre: "Politics & Current Events|Current Events"
  ),
  15178: (
    kind: AacGenreKind.textbooks,
    genre: "Politics & Current Events|Foreign Policy & International Relations"
  ),
  15179: (
    kind: AacGenreKind.textbooks,
    genre: "Politics & Current Events|Local Governments"
  ),
  15180: (
    kind: AacGenreKind.textbooks,
    genre: "Politics & Current Events|National Governments"
  ),
  15181: (
    kind: AacGenreKind.textbooks,
    genre: "Politics & Current Events|Political Science"
  ),
  15182: (
    kind: AacGenreKind.textbooks,
    genre: "Politics & Current Events|Public Administration"
  ),
  15183: (
    kind: AacGenreKind.textbooks,
    genre: "Politics & Current Events|World Affairs"
  ),
  15184: (kind: AacGenreKind.textbooks, genre: "Professional & Technical"),
  15185: (
    kind: AacGenreKind.textbooks,
    genre: "Professional & Technical|Design"
  ),
  15186: (
    kind: AacGenreKind.textbooks,
    genre: "Professional & Technical|Language Arts & Disciplines"
  ),
  15187: (
    kind: AacGenreKind.textbooks,
    genre: "Professional & Technical|Engineering"
  ),
  15188: (kind: AacGenreKind.textbooks, genre: "Professional & Technical|Law"),
  15189: (
    kind: AacGenreKind.textbooks,
    genre: "Professional & Technical|Medical"
  ),
  15190: (kind: AacGenreKind.textbooks, genre: "Reference"),
  15191: (
    kind: AacGenreKind.textbooks,
    genre: "Reference|Almanacs & Yearbooks"
  ),
  15192: (kind: AacGenreKind.textbooks, genre: "Reference|Atlases & Maps"),
  15193: (
    kind: AacGenreKind.textbooks,
    genre: "Reference|Catalogs & Directories"
  ),
  15194: (kind: AacGenreKind.textbooks, genre: "Reference|Consumer Guides"),
  15195: (
    kind: AacGenreKind.textbooks,
    genre: "Reference|Dictionaries & Thesauruses"
  ),
  15196: (kind: AacGenreKind.textbooks, genre: "Reference|Encyclopedias"),
  15197: (kind: AacGenreKind.textbooks, genre: "Reference|Etiquette"),
  15198: (kind: AacGenreKind.textbooks, genre: "Reference|Quotations"),
  15199: (kind: AacGenreKind.textbooks, genre: "Reference|Study Aids"),
  15200: (kind: AacGenreKind.textbooks, genre: "Reference|Words & Language"),
  15201: (kind: AacGenreKind.textbooks, genre: "Reference|Writing"),
  15202: (kind: AacGenreKind.textbooks, genre: "Religion & Spirituality"),
  15203: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Bible Studies"
  ),
  15204: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Bibles"
  ),
  15205: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Buddhism"
  ),
  15206: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Christianity"
  ),
  15207: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Comparative Religion"
  ),
  15208: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Hinduism"
  ),
  15209: (kind: AacGenreKind.textbooks, genre: "Religion & Spirituality|Islam"),
  15210: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Judaism"
  ),
  15211: (
    kind: AacGenreKind.textbooks,
    genre: "Religion & Spirituality|Spirituality"
  ),
  15212: (kind: AacGenreKind.textbooks, genre: "Romance"),
  15213: (kind: AacGenreKind.textbooks, genre: "Romance|Contemporary"),
  15214: (kind: AacGenreKind.textbooks, genre: "Romance|Erotic Romance"),
  15215: (kind: AacGenreKind.textbooks, genre: "Romance|Paranormal"),
  15216: (kind: AacGenreKind.textbooks, genre: "Romance|Historical"),
  15217: (kind: AacGenreKind.textbooks, genre: "Romance|Short Stories"),
  15218: (kind: AacGenreKind.textbooks, genre: "Romance|Suspense"),
  15219: (kind: AacGenreKind.textbooks, genre: "Romance|Western"),
  15220: (kind: AacGenreKind.textbooks, genre: "Sci-Fi & Fantasy"),
  15221: (kind: AacGenreKind.textbooks, genre: "Sci-Fi & Fantasy|Fantasy"),
  15222: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Fantasy|Contemporary"
  ),
  15223: (kind: AacGenreKind.textbooks, genre: "Sci-Fi & Fantasy|Fantasy|Epic"),
  15224: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Fantasy|Historical"
  ),
  15225: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Fantasy|Paranormal"
  ),
  15226: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Fantasy|Short Stories"
  ),
  15227: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Science Fiction"
  ),
  15228: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature"
  ),
  15229: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature|Adventure"
  ),
  15230: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature|High Tech"
  ),
  15231: (
    kind: AacGenreKind.textbooks,
    genre: "Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories"
  ),
  15232: (kind: AacGenreKind.textbooks, genre: "Science & Nature"),
  15233: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Agriculture"),
  15234: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Astronomy"),
  15235: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Atmosphere"),
  15236: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Biology"),
  15237: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Chemistry"),
  15238: (
    kind: AacGenreKind.textbooks,
    genre: "Science & Nature|Earth Sciences"
  ),
  15239: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Ecology"),
  15240: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Environment"),
  15241: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Essays"),
  15242: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Geography"),
  15243: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Geology"),
  15244: (kind: AacGenreKind.textbooks, genre: "Science & Nature|History"),
  15245: (
    kind: AacGenreKind.textbooks,
    genre: "Science & Nature|Life Sciences"
  ),
  15246: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Nature"),
  15247: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Physics"),
  15248: (kind: AacGenreKind.textbooks, genre: "Science & Nature|Reference"),
  15249: (kind: AacGenreKind.textbooks, genre: "Social Science"),
  15250: (kind: AacGenreKind.textbooks, genre: "Social Science|Anthropology"),
  15251: (kind: AacGenreKind.textbooks, genre: "Social Science|Archaeology"),
  15252: (kind: AacGenreKind.textbooks, genre: "Social Science|Civics"),
  15253: (kind: AacGenreKind.textbooks, genre: "Social Science|Government"),
  15254: (kind: AacGenreKind.textbooks, genre: "Social Science|Social Studies"),
  15255: (kind: AacGenreKind.textbooks, genre: "Social Science|Social Welfare"),
  15256: (kind: AacGenreKind.textbooks, genre: "Social Science|Society"),
  15257: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|African Studies"
  ),
  15258: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|American Studies"
  ),
  15259: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Asia Pacific Studies"
  ),
  15260: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Cross-Cultural Studies"
  ),
  15261: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|European Studies"
  ),
  15262: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Immigration & Emigration"
  ),
  15263: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Indigenous Studies"
  ),
  15264: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Latin & Caribbean Studies"
  ),
  15265: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Middle Eastern Studies"
  ),
  15266: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Race & Ethnicity Studies"
  ),
  15267: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Sexuality Studies"
  ),
  15268: (
    kind: AacGenreKind.textbooks,
    genre: "Social Science|Society|Women's Studies"
  ),
  15269: (kind: AacGenreKind.textbooks, genre: "Social Science|Sociology"),
  15270: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors"),
  15271: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Baseball"),
  15272: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Basketball"),
  15273: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Coaching"),
  15274: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Equestrian"),
  15275: (
    kind: AacGenreKind.textbooks,
    genre: "Sports & Outdoors|Extreme Sports"
  ),
  15276: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Football"),
  15277: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Golf"),
  15278: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Hockey"),
  15279: (
    kind: AacGenreKind.textbooks,
    genre: "Sports & Outdoors|Motor Sports"
  ),
  15280: (
    kind: AacGenreKind.textbooks,
    genre: "Sports & Outdoors|Mountaineering"
  ),
  15281: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Outdoors"),
  15282: (
    kind: AacGenreKind.textbooks,
    genre: "Sports & Outdoors|Racket Sports"
  ),
  15283: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Reference"),
  15284: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Soccer"),
  15285: (kind: AacGenreKind.textbooks, genre: "Sports & Outdoors|Training"),
  15286: (
    kind: AacGenreKind.textbooks,
    genre: "Sports & Outdoors|Water Sports"
  ),
  15287: (
    kind: AacGenreKind.textbooks,
    genre: "Sports & Outdoors|Winter Sports"
  ),
  15288: (kind: AacGenreKind.textbooks, genre: "Teaching & Learning"),
  15289: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Adult Education"
  ),
  15290: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Curriculum & Teaching"
  ),
  15291: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Educational Leadership"
  ),
  15292: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Educational Technology"
  ),
  15293: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Family & Childcare"
  ),
  15294: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Information & Library Science"
  ),
  15295: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Learning Resources"
  ),
  15296: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Psychology & Research"
  ),
  15297: (
    kind: AacGenreKind.textbooks,
    genre: "Teaching & Learning|Special Education"
  ),
  15298: (kind: AacGenreKind.textbooks, genre: "Travel & Adventure"),
  15299: (kind: AacGenreKind.textbooks, genre: "Travel & Adventure|Africa"),
  15300: (kind: AacGenreKind.textbooks, genre: "Travel & Adventure|Americas"),
  15301: (
    kind: AacGenreKind.textbooks,
    genre: "Travel & Adventure|Americas|Canada"
  ),
  15302: (
    kind: AacGenreKind.textbooks,
    genre: "Travel & Adventure|Americas|Latin America"
  ),
  15303: (
    kind: AacGenreKind.textbooks,
    genre: "Travel & Adventure|Americas|United States"
  ),
  15304: (kind: AacGenreKind.textbooks, genre: "Travel & Adventure|Asia"),
  15305: (kind: AacGenreKind.textbooks, genre: "Travel & Adventure|Caribbean"),
  15306: (
    kind: AacGenreKind.textbooks,
    genre: "Travel & Adventure|Essays & Memoirs"
  ),
  15307: (kind: AacGenreKind.textbooks, genre: "Travel & Adventure|Europe"),
  15308: (
    kind: AacGenreKind.textbooks,
    genre: "Travel & Adventure|Middle East"
  ),
  15309: (kind: AacGenreKind.textbooks, genre: "Travel & Adventure|Oceania"),
  15310: (
    kind: AacGenreKind.textbooks,
    genre: "Travel & Adventure|Specialty Travel"
  ),
  15311: (
    kind: AacGenreKind.textbooks,
    genre: "Comics & Graphic Novels|Comics"
  ),
  15312: (kind: AacGenreKind.textbooks, genre: "Reference|Manuals"),
  16001: (kind: AacGenreKind.appStore, genre: "Stickers|Emoji & Expressions"),
  16003: (kind: AacGenreKind.appStore, genre: "Stickers|Animals & Nature"),
  16005: (kind: AacGenreKind.appStore, genre: "Stickers|Art"),
  16006: (kind: AacGenreKind.appStore, genre: "Stickers|Celebrations"),
  16007: (kind: AacGenreKind.appStore, genre: "Stickers|Celebrities"),
  16008: (kind: AacGenreKind.appStore, genre: "Stickers|Comics & Cartoons"),
  16009: (kind: AacGenreKind.appStore, genre: "Stickers|Eating & Drinking"),
  16010: (kind: AacGenreKind.appStore, genre: "Stickers|Gaming"),
  16014: (kind: AacGenreKind.appStore, genre: "Stickers|movies & TV"),
  16015: (kind: AacGenreKind.appStore, genre: "Stickers|Music"),
  16017: (kind: AacGenreKind.appStore, genre: "Stickers|People"),
  16019: (kind: AacGenreKind.appStore, genre: "Stickers|Places & Objects"),
  16021: (kind: AacGenreKind.appStore, genre: "Stickers|Sports & Activities"),
  16025: (kind: AacGenreKind.appStore, genre: "Stickers|Kids & Family"),
  16026: (kind: AacGenreKind.appStore, genre: "Stickers|Fashion"),
  100000: (kind: AacGenreKind.music, genre: "Christian & Gospel"),
  100001: (kind: AacGenreKind.music, genre: "Classical|Art Song"),
  100002: (kind: AacGenreKind.music, genre: "Classical|Brass & Woodwinds"),
  100003: (kind: AacGenreKind.music, genre: "Classical|Solo Instrumental"),
  100004: (kind: AacGenreKind.music, genre: "Classical|Contemporary Era"),
  100005: (kind: AacGenreKind.music, genre: "Classical|Oratorio"),
  100006: (kind: AacGenreKind.music, genre: "Classical|Cantata"),
  100007: (kind: AacGenreKind.music, genre: "Classical|Electronic"),
  100008: (kind: AacGenreKind.music, genre: "Classical|Sacred"),
  100009: (kind: AacGenreKind.music, genre: "Classical|Guitar"),
  100010: (kind: AacGenreKind.music, genre: "Classical|Piano"),
  100011: (kind: AacGenreKind.music, genre: "Classical|Violin"),
  100012: (kind: AacGenreKind.music, genre: "Classical|Cello"),
  100013: (kind: AacGenreKind.music, genre: "Classical|Percussion"),
  100014: (kind: AacGenreKind.music, genre: "Electronic|Dubstep"),
  100015: (kind: AacGenreKind.music, genre: "Electronic|Bass"),
  100016: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|UK Hip-Hop"),
  100017: (kind: AacGenreKind.music, genre: "Reggae|Lovers Rock"),
  100018: (kind: AacGenreKind.music, genre: "Alternative|EMO"),
  100019: (kind: AacGenreKind.music, genre: "Alternative|Pop Punk"),
  100020: (kind: AacGenreKind.music, genre: "Alternative|Indie Pop"),
  100021: (kind: AacGenreKind.music, genre: "New Age|Yoga"),
  100022: (kind: AacGenreKind.music, genre: "Pop|Tribute"),
  100023: (kind: AacGenreKind.music, genre: "Pop|Shows"),
  100024: (kind: AacGenreKind.music, genre: "Cuban"),
  100025: (kind: AacGenreKind.music, genre: "Cuban|Mambo"),
  100026: (kind: AacGenreKind.music, genre: "Cuban|Chachacha"),
  100027: (kind: AacGenreKind.music, genre: "Cuban|Guajira"),
  100028: (kind: AacGenreKind.music, genre: "Cuban|Son"),
  100029: (kind: AacGenreKind.music, genre: "Cuban|Bolero"),
  100030: (kind: AacGenreKind.music, genre: "Cuban|Guaracha"),
  100031: (kind: AacGenreKind.music, genre: "Cuban|Timba"),
  100032: (kind: AacGenreKind.music, genre: "Soundtrack|Video Game"),
  100033: (
    kind: AacGenreKind.music,
    genre: "Indian|Regional Indian|Punjabi|Punjabi Pop"
  ),
  100034: (
    kind: AacGenreKind.music,
    genre: "Indian|Regional Indian|Bengali|Rabindra Sangeet"
  ),
  100035: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Malayalam"),
  100036: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Kannada"),
  100037: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Marathi"),
  100038: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Gujarati"),
  100039: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Assamese"),
  100040: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Bhojpuri"),
  100041: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Haryanvi"),
  100042: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Odia"),
  100043: (
    kind: AacGenreKind.music,
    genre: "Indian|Regional Indian|Rajasthani"
  ),
  100044: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Urdu"),
  100045: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Punjabi"),
  100046: (kind: AacGenreKind.music, genre: "Indian|Regional Indian|Bengali"),
  100047: (
    kind: AacGenreKind.music,
    genre: "Indian|Indian Classical|Carnatic Classical"
  ),
  100048: (
    kind: AacGenreKind.music,
    genre: "Indian|Indian Classical|Hindustani Classical"
  ),
  100049: (kind: AacGenreKind.music, genre: "African|Afro House"),
  100050: (kind: AacGenreKind.music, genre: "African|Afro Soul"),
  100051: (kind: AacGenreKind.music, genre: "African|Afrobeats"),
  100052: (kind: AacGenreKind.music, genre: "African|Benga"),
  100053: (kind: AacGenreKind.music, genre: "African|Bongo-Flava"),
  100054: (kind: AacGenreKind.music, genre: "African|Coupe-Decale"),
  100055: (kind: AacGenreKind.music, genre: "African|Gqom"),
  100056: (kind: AacGenreKind.music, genre: "African|Highlife"),
  100057: (kind: AacGenreKind.music, genre: "African|Kuduro"),
  100058: (kind: AacGenreKind.music, genre: "African|Kizomba"),
  100059: (kind: AacGenreKind.music, genre: "African|Kwaito"),
  100060: (kind: AacGenreKind.music, genre: "African|Mbalax"),
  100061: (kind: AacGenreKind.music, genre: "African|Ndombolo"),
  100062: (kind: AacGenreKind.music, genre: "African|Shangaan Electro"),
  100063: (kind: AacGenreKind.music, genre: "African|Soukous"),
  100064: (kind: AacGenreKind.music, genre: "African|Taarab"),
  100065: (kind: AacGenreKind.music, genre: "African|Zouglou"),
  100066: (kind: AacGenreKind.music, genre: "Turkish|Ozgun"),
  100067: (kind: AacGenreKind.music, genre: "Turkish|Fantezi"),
  100068: (kind: AacGenreKind.music, genre: "Turkish|Religious"),
  100069: (kind: AacGenreKind.music, genre: "Pop|Turkish Pop"),
  100070: (kind: AacGenreKind.music, genre: "Rock|Turkish Rock"),
  100071: (kind: AacGenreKind.music, genre: "Alternative|Turkish Alternative"),
  100072: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Turkish Hip-Hop/Rap"),
  100073: (kind: AacGenreKind.music, genre: "African|Maskandi"),
  100074: (kind: AacGenreKind.music, genre: "Russian|Russian Romance"),
  100075: (kind: AacGenreKind.music, genre: "Russian|Russian Bard"),
  100076: (kind: AacGenreKind.music, genre: "Russian|Russian Pop"),
  100077: (kind: AacGenreKind.music, genre: "Russian|Russian Rock"),
  100078: (kind: AacGenreKind.music, genre: "Russian|Russian Hip-Hop"),
  100079: (kind: AacGenreKind.music, genre: "Arabic|Levant"),
  100080: (kind: AacGenreKind.music, genre: "Arabic|Levant|Dabke"),
  100081: (kind: AacGenreKind.music, genre: "Arabic|Maghreb Rai"),
  100082: (kind: AacGenreKind.music, genre: "Arabic|Khaleeji|Khaleeji Jalsat"),
  100083: (kind: AacGenreKind.music, genre: "Arabic|Khaleeji|Khaleeji Shailat"),
  100084: (kind: AacGenreKind.music, genre: "Tarab"),
  100085: (kind: AacGenreKind.music, genre: "Tarab|Iraqi Tarab"),
  100086: (kind: AacGenreKind.music, genre: "Tarab|Egyptian Tarab"),
  100087: (kind: AacGenreKind.music, genre: "Tarab|Khaleeji Tarab"),
  100088: (kind: AacGenreKind.music, genre: "Pop|Levant Pop"),
  100089: (kind: AacGenreKind.music, genre: "Pop|Iraqi Pop"),
  100090: (kind: AacGenreKind.music, genre: "Pop|Egyptian Pop"),
  100091: (kind: AacGenreKind.music, genre: "Pop|Maghreb Pop"),
  100092: (kind: AacGenreKind.music, genre: "Pop|Khaleeji Pop"),
  100093: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Levant Hip-Hop"),
  100094: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Egyptian Hip-Hop"),
  100095: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Maghreb Hip-Hop"),
  100096: (kind: AacGenreKind.music, genre: "Hip-Hop/Rap|Khaleeji Hip-Hop"),
  100097: (kind: AacGenreKind.music, genre: "Alternative|Indie Levant"),
  100098: (kind: AacGenreKind.music, genre: "Alternative|Indie Egyptian"),
  100099: (kind: AacGenreKind.music, genre: "Alternative|Indie Maghreb"),
  100100: (kind: AacGenreKind.music, genre: "Electronic|Levant Electronic"),
  100101: (kind: AacGenreKind.music, genre: "Electronic|Electro-Cha'abi"),
  100102: (kind: AacGenreKind.music, genre: "Electronic|Maghreb Electronic"),
  100103: (kind: AacGenreKind.music, genre: "Folk|Iraqi Folk"),
  100104: (kind: AacGenreKind.music, genre: "Folk|Khaleeji Folk"),
  100105: (kind: AacGenreKind.music, genre: "Dance|Maghreb Dance"),
  40000000: (kind: AacGenreKind.iTunesU, genre: ""),
  40000001: (kind: AacGenreKind.iTunesU, genre: "Business & Economics"),
  40000002: (
    kind: AacGenreKind.iTunesU,
    genre: "Business & Economics|Economics"
  ),
  40000003: (kind: AacGenreKind.iTunesU, genre: "Business & Economics|Finance"),
  40000004: (
    kind: AacGenreKind.iTunesU,
    genre: "Business & Economics|Hospitality"
  ),
  40000005: (
    kind: AacGenreKind.iTunesU,
    genre: "Business & Economics|Management"
  ),
  40000006: (
    kind: AacGenreKind.iTunesU,
    genre: "Business & Economics|Marketing"
  ),
  40000007: (
    kind: AacGenreKind.iTunesU,
    genre: "Business & Economics|Personal Finance"
  ),
  40000008: (
    kind: AacGenreKind.iTunesU,
    genre: "Business & Economics|Real Estate"
  ),
  40000009: (kind: AacGenreKind.iTunesU, genre: "Engineering"),
  40000010: (
    kind: AacGenreKind.iTunesU,
    genre: "Engineering|Chemical & Petroleum Engineering"
  ),
  40000011: (
    kind: AacGenreKind.iTunesU,
    genre: "Engineering|Civil Engineering"
  ),
  40000012: (kind: AacGenreKind.iTunesU, genre: "Engineering|Computer Science"),
  40000013: (
    kind: AacGenreKind.iTunesU,
    genre: "Engineering|Electrical Engineering"
  ),
  40000014: (
    kind: AacGenreKind.iTunesU,
    genre: "Engineering|Environmental Engineering"
  ),
  40000015: (
    kind: AacGenreKind.iTunesU,
    genre: "Engineering|Mechanical Engineering"
  ),
  40000016: (kind: AacGenreKind.iTunesU, genre: "Music, Art, & Design"),
  40000017: (
    kind: AacGenreKind.iTunesU,
    genre: "Music, Art, & Design|Architecture"
  ),
  40000019: (
    kind: AacGenreKind.iTunesU,
    genre: "Music, Art, & Design|Art History"
  ),
  40000020: (kind: AacGenreKind.iTunesU, genre: "Music, Art, & Design|Dance"),
  40000021: (kind: AacGenreKind.iTunesU, genre: "Music, Art, & Design|Film"),
  40000022: (kind: AacGenreKind.iTunesU, genre: "Music, Art, & Design|Design"),
  40000023: (
    kind: AacGenreKind.iTunesU,
    genre: "Music, Art, & Design|Interior Design"
  ),
  40000024: (kind: AacGenreKind.iTunesU, genre: "Music, Art, & Design|Music"),
  40000025: (kind: AacGenreKind.iTunesU, genre: "Music, Art, & Design|Theater"),
  40000026: (kind: AacGenreKind.iTunesU, genre: "Health & Medicine"),
  40000027: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Anatomy & Physiology"
  ),
  40000028: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Behavioral Science"
  ),
  40000029: (kind: AacGenreKind.iTunesU, genre: "Health & Medicine|Dentistry"),
  40000030: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Diet & Nutrition"
  ),
  40000031: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Emergency Medicine"
  ),
  40000032: (kind: AacGenreKind.iTunesU, genre: "Health & Medicine|Genetics"),
  40000033: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Gerontology"
  ),
  40000034: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Health & Exercise Science"
  ),
  40000035: (kind: AacGenreKind.iTunesU, genre: "Health & Medicine|Immunology"),
  40000036: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Neuroscience"
  ),
  40000037: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Pharmacology & Toxicology"
  ),
  40000038: (kind: AacGenreKind.iTunesU, genre: "Health & Medicine|Psychiatry"),
  40000039: (
    kind: AacGenreKind.iTunesU,
    genre: "Health & Medicine|Global Health"
  ),
  40000040: (kind: AacGenreKind.iTunesU, genre: "Health & Medicine|Radiology"),
  40000041: (kind: AacGenreKind.iTunesU, genre: "History"),
  40000042: (kind: AacGenreKind.iTunesU, genre: "History|Ancient History"),
  40000043: (kind: AacGenreKind.iTunesU, genre: "History|Medieval History"),
  40000044: (kind: AacGenreKind.iTunesU, genre: "History|Military History"),
  40000045: (kind: AacGenreKind.iTunesU, genre: "History|Modern History"),
  40000046: (kind: AacGenreKind.iTunesU, genre: "History|African History"),
  40000047: (kind: AacGenreKind.iTunesU, genre: "History|Asia-Pacific History"),
  40000048: (kind: AacGenreKind.iTunesU, genre: "History|European History"),
  40000049: (
    kind: AacGenreKind.iTunesU,
    genre: "History|Middle Eastern History"
  ),
  40000050: (
    kind: AacGenreKind.iTunesU,
    genre: "History|North American History"
  ),
  40000051: (
    kind: AacGenreKind.iTunesU,
    genre: "History|South American History"
  ),
  40000053: (kind: AacGenreKind.iTunesU, genre: "Communications & Journalism"),
  40000054: (kind: AacGenreKind.iTunesU, genre: "Philosophy"),
  40000055: (kind: AacGenreKind.iTunesU, genre: "Religion & Spirituality"),
  40000056: (kind: AacGenreKind.iTunesU, genre: "Languages"),
  40000057: (kind: AacGenreKind.iTunesU, genre: "Languages|African Languages"),
  40000058: (kind: AacGenreKind.iTunesU, genre: "Languages|Ancient Languages"),
  40000061: (kind: AacGenreKind.iTunesU, genre: "Languages|English"),
  40000063: (kind: AacGenreKind.iTunesU, genre: "Languages|French"),
  40000064: (kind: AacGenreKind.iTunesU, genre: "Languages|German"),
  40000065: (kind: AacGenreKind.iTunesU, genre: "Languages|Italian"),
  40000066: (kind: AacGenreKind.iTunesU, genre: "Languages|Linguistics"),
  40000068: (kind: AacGenreKind.iTunesU, genre: "Languages|Spanish"),
  40000069: (kind: AacGenreKind.iTunesU, genre: "Languages|Speech Pathology"),
  40000070: (kind: AacGenreKind.iTunesU, genre: "Writing & Literature"),
  40000071: (
    kind: AacGenreKind.iTunesU,
    genre: "Writing & Literature|Anthologies"
  ),
  40000072: (
    kind: AacGenreKind.iTunesU,
    genre: "Writing & Literature|Biography"
  ),
  40000073: (
    kind: AacGenreKind.iTunesU,
    genre: "Writing & Literature|Classics"
  ),
  40000074: (
    kind: AacGenreKind.iTunesU,
    genre: "Writing & Literature|Literary Criticism"
  ),
  40000075: (kind: AacGenreKind.iTunesU, genre: "Writing & Literature|Fiction"),
  40000076: (kind: AacGenreKind.iTunesU, genre: "Writing & Literature|Poetry"),
  40000077: (kind: AacGenreKind.iTunesU, genre: "Mathematics"),
  40000078: (
    kind: AacGenreKind.iTunesU,
    genre: "Mathematics|Advanced Mathematics"
  ),
  40000079: (kind: AacGenreKind.iTunesU, genre: "Mathematics|Algebra"),
  40000080: (kind: AacGenreKind.iTunesU, genre: "Mathematics|Arithmetic"),
  40000081: (kind: AacGenreKind.iTunesU, genre: "Mathematics|Calculus"),
  40000082: (kind: AacGenreKind.iTunesU, genre: "Mathematics|Geometry"),
  40000083: (kind: AacGenreKind.iTunesU, genre: "Mathematics|Statistics"),
  40000084: (kind: AacGenreKind.iTunesU, genre: "Science"),
  40000085: (kind: AacGenreKind.iTunesU, genre: "Science|Agricultural"),
  40000086: (kind: AacGenreKind.iTunesU, genre: "Science|Astronomy"),
  40000087: (kind: AacGenreKind.iTunesU, genre: "Science|Atmosphere"),
  40000088: (kind: AacGenreKind.iTunesU, genre: "Science|Biology"),
  40000089: (kind: AacGenreKind.iTunesU, genre: "Science|Chemistry"),
  40000090: (kind: AacGenreKind.iTunesU, genre: "Science|Ecology"),
  40000091: (kind: AacGenreKind.iTunesU, genre: "Science|Geography"),
  40000092: (kind: AacGenreKind.iTunesU, genre: "Science|Geology"),
  40000093: (kind: AacGenreKind.iTunesU, genre: "Science|Physics"),
  40000094: (kind: AacGenreKind.iTunesU, genre: "Social Science"),
  40000095: (kind: AacGenreKind.iTunesU, genre: "Law & Politics|Law"),
  40000096: (
    kind: AacGenreKind.iTunesU,
    genre: "Law & Politics|Political Science"
  ),
  40000097: (
    kind: AacGenreKind.iTunesU,
    genre: "Law & Politics|Public Administration"
  ),
  40000098: (kind: AacGenreKind.iTunesU, genre: "Social Science|Psychology"),
  40000099: (
    kind: AacGenreKind.iTunesU,
    genre: "Social Science|Social Welfare"
  ),
  40000100: (kind: AacGenreKind.iTunesU, genre: "Social Science|Sociology"),
  40000101: (kind: AacGenreKind.iTunesU, genre: "Society"),
  40000103: (kind: AacGenreKind.iTunesU, genre: "Society|Asia Pacific Studies"),
  40000104: (kind: AacGenreKind.iTunesU, genre: "Society|European Studies"),
  40000105: (kind: AacGenreKind.iTunesU, genre: "Society|Indigenous Studies"),
  40000106: (
    kind: AacGenreKind.iTunesU,
    genre: "Society|Latin & Caribbean Studies"
  ),
  40000107: (
    kind: AacGenreKind.iTunesU,
    genre: "Society|Middle Eastern Studies"
  ),
  40000108: (kind: AacGenreKind.iTunesU, genre: "Society|Women's Studies"),
  40000109: (kind: AacGenreKind.iTunesU, genre: "Teaching & Learning"),
  40000110: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Curriculum & Teaching"
  ),
  40000111: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Educational Leadership"
  ),
  40000112: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Family & Childcare"
  ),
  40000113: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Learning Resources"
  ),
  40000114: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Psychology & Research"
  ),
  40000115: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Special Education"
  ),
  40000116: (
    kind: AacGenreKind.iTunesU,
    genre: "Music, Art, & Design|Culinary Arts"
  ),
  40000117: (kind: AacGenreKind.iTunesU, genre: "Music, Art, & Design|Fashion"),
  40000118: (
    kind: AacGenreKind.iTunesU,
    genre: "Music, Art, & Design|Media Arts"
  ),
  40000119: (
    kind: AacGenreKind.iTunesU,
    genre: "Music, Art, & Design|Photography"
  ),
  40000120: (
    kind: AacGenreKind.iTunesU,
    genre: "Music, Art, & Design|Visual Art"
  ),
  40000121: (
    kind: AacGenreKind.iTunesU,
    genre: "Business & Economics|Entrepreneurship"
  ),
  40000122: (
    kind: AacGenreKind.iTunesU,
    genre: "Communications & Journalism|Broadcasting"
  ),
  40000123: (
    kind: AacGenreKind.iTunesU,
    genre: "Communications & Journalism|Digital Media"
  ),
  40000124: (
    kind: AacGenreKind.iTunesU,
    genre: "Communications & Journalism|Journalism"
  ),
  40000125: (
    kind: AacGenreKind.iTunesU,
    genre: "Communications & Journalism|Photojournalism"
  ),
  40000126: (
    kind: AacGenreKind.iTunesU,
    genre: "Communications & Journalism|Print"
  ),
  40000127: (
    kind: AacGenreKind.iTunesU,
    genre: "Communications & Journalism|Speech"
  ),
  40000128: (
    kind: AacGenreKind.iTunesU,
    genre: "Communications & Journalism|Writing"
  ),
  40000129: (kind: AacGenreKind.iTunesU, genre: "Health & Medicine|Nursing"),
  40000130: (kind: AacGenreKind.iTunesU, genre: "Languages|Arabic"),
  40000131: (kind: AacGenreKind.iTunesU, genre: "Languages|Chinese"),
  40000132: (kind: AacGenreKind.iTunesU, genre: "Languages|Hebrew"),
  40000133: (kind: AacGenreKind.iTunesU, genre: "Languages|Hindi"),
  40000134: (
    kind: AacGenreKind.iTunesU,
    genre: "Languages|Indigenous Languages"
  ),
  40000135: (kind: AacGenreKind.iTunesU, genre: "Languages|Japanese"),
  40000136: (kind: AacGenreKind.iTunesU, genre: "Languages|Korean"),
  40000137: (kind: AacGenreKind.iTunesU, genre: "Languages|Other Languages"),
  40000138: (kind: AacGenreKind.iTunesU, genre: "Languages|Portuguese"),
  40000139: (kind: AacGenreKind.iTunesU, genre: "Languages|Russian"),
  40000140: (kind: AacGenreKind.iTunesU, genre: "Law & Politics"),
  40000141: (
    kind: AacGenreKind.iTunesU,
    genre: "Law & Politics|Foreign Policy & International Relations"
  ),
  40000142: (
    kind: AacGenreKind.iTunesU,
    genre: "Law & Politics|Local Governments"
  ),
  40000143: (
    kind: AacGenreKind.iTunesU,
    genre: "Law & Politics|National Governments"
  ),
  40000144: (kind: AacGenreKind.iTunesU, genre: "Law & Politics|World Affairs"),
  40000145: (
    kind: AacGenreKind.iTunesU,
    genre: "Writing & Literature|Comparative Literature"
  ),
  40000146: (kind: AacGenreKind.iTunesU, genre: "Philosophy|Aesthetics"),
  40000147: (kind: AacGenreKind.iTunesU, genre: "Philosophy|Epistemology"),
  40000148: (kind: AacGenreKind.iTunesU, genre: "Philosophy|Ethics"),
  40000149: (kind: AacGenreKind.iTunesU, genre: "Philosophy|Metaphysics"),
  40000150: (
    kind: AacGenreKind.iTunesU,
    genre: "Philosophy|Political Philosophy"
  ),
  40000151: (kind: AacGenreKind.iTunesU, genre: "Philosophy|Logic"),
  40000152: (
    kind: AacGenreKind.iTunesU,
    genre: "Philosophy|Philosophy of Language"
  ),
  40000153: (
    kind: AacGenreKind.iTunesU,
    genre: "Philosophy|Philosophy of Religion"
  ),
  40000154: (kind: AacGenreKind.iTunesU, genre: "Social Science|Archaeology"),
  40000155: (kind: AacGenreKind.iTunesU, genre: "Social Science|Anthropology"),
  40000156: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Buddhism"
  ),
  40000157: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Christianity"
  ),
  40000158: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Comparative Religion"
  ),
  40000159: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Hinduism"
  ),
  40000160: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Islam"
  ),
  40000161: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Judaism"
  ),
  40000162: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Other Religions"
  ),
  40000163: (
    kind: AacGenreKind.iTunesU,
    genre: "Religion & Spirituality|Spirituality"
  ),
  40000164: (kind: AacGenreKind.iTunesU, genre: "Science|Environment"),
  40000165: (kind: AacGenreKind.iTunesU, genre: "Society|African Studies"),
  40000166: (kind: AacGenreKind.iTunesU, genre: "Society|American Studies"),
  40000167: (
    kind: AacGenreKind.iTunesU,
    genre: "Society|Cross-cultural Studies"
  ),
  40000168: (
    kind: AacGenreKind.iTunesU,
    genre: "Society|Immigration & Emigration"
  ),
  40000169: (
    kind: AacGenreKind.iTunesU,
    genre: "Society|Race & Ethnicity Studies"
  ),
  40000170: (kind: AacGenreKind.iTunesU, genre: "Society|Sexuality Studies"),
  40000171: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Educational Technology"
  ),
  40000172: (
    kind: AacGenreKind.iTunesU,
    genre: "Teaching & Learning|Information/Library Science"
  ),
  40000173: (kind: AacGenreKind.iTunesU, genre: "Languages|Dutch"),
  40000174: (kind: AacGenreKind.iTunesU, genre: "Languages|Luxembourgish"),
  40000175: (kind: AacGenreKind.iTunesU, genre: "Languages|Swedish"),
  40000176: (kind: AacGenreKind.iTunesU, genre: "Languages|Norwegian"),
  40000177: (kind: AacGenreKind.iTunesU, genre: "Languages|Finnish"),
  40000178: (kind: AacGenreKind.iTunesU, genre: "Languages|Danish"),
  40000179: (kind: AacGenreKind.iTunesU, genre: "Languages|Polish"),
  40000180: (kind: AacGenreKind.iTunesU, genre: "Languages|Turkish"),
  40000181: (kind: AacGenreKind.iTunesU, genre: "Languages|Flemish"),
  50000024: (kind: AacGenreKind.audiobooks, genre: ""),
  50000040: (kind: AacGenreKind.audiobooks, genre: "Fiction"),
  50000041: (kind: AacGenreKind.audiobooks, genre: "Arts & Entertainment"),
  50000042: (kind: AacGenreKind.audiobooks, genre: "Biographies & Memoirs"),
  50000043: (
    kind: AacGenreKind.audiobooks,
    genre: "Business & Personal Finance"
  ),
  50000044: (kind: AacGenreKind.audiobooks, genre: "Kids & Young Adults"),
  50000045: (kind: AacGenreKind.audiobooks, genre: "Classics"),
  50000046: (kind: AacGenreKind.audiobooks, genre: "Comedy"),
  50000047: (kind: AacGenreKind.audiobooks, genre: "Drama & Poetry"),
  50000048: (kind: AacGenreKind.audiobooks, genre: "Speakers & Storytellers"),
  50000049: (kind: AacGenreKind.audiobooks, genre: "History"),
  50000050: (kind: AacGenreKind.audiobooks, genre: "Languages"),
  50000051: (kind: AacGenreKind.audiobooks, genre: "Mysteries & Thrillers"),
  50000052: (kind: AacGenreKind.audiobooks, genre: "Nonfiction"),
  50000053: (kind: AacGenreKind.audiobooks, genre: "Religion & Spirituality"),
  50000054: (kind: AacGenreKind.audiobooks, genre: "Science & Nature"),
  50000055: (kind: AacGenreKind.audiobooks, genre: "Sci Fi & Fantasy"),
  50000056: (kind: AacGenreKind.audiobooks, genre: "Self-Development"),
  50000057: (kind: AacGenreKind.audiobooks, genre: "Sports & Outdoors"),
  50000058: (kind: AacGenreKind.audiobooks, genre: "Technology"),
  50000059: (kind: AacGenreKind.audiobooks, genre: "Travel & Adventure"),
  50000061: (kind: AacGenreKind.music, genre: "Spoken Word"),
  50000063: (kind: AacGenreKind.music, genre: "Disney"),
  50000064: (kind: AacGenreKind.music, genre: "French Pop"),
  50000066: (kind: AacGenreKind.music, genre: "German Pop"),
  50000068: (kind: AacGenreKind.music, genre: "German Folk"),
  50000069: (kind: AacGenreKind.audiobooks, genre: "Romance"),
  50000070: (kind: AacGenreKind.audiobooks, genre: "audiobooks Latino"),
  50000071: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Action"
  ),
  50000072: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Comedy"
  ),
  50000073: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Erotica"
  ),
  50000074: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Fantasy"
  ),
  50000075: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Four Cell Manga"
  ),
  50000076: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Gay & Lesbian"
  ),
  50000077: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Hard-Boiled"
  ),
  50000078: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Heroes"
  ),
  50000079: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Historical Fiction"
  ),
  50000080: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Mecha"
  ),
  50000081: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Mystery"
  ),
  50000082: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Nonfiction"
  ),
  50000083: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Religious"
  ),
  50000084: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Romance"
  ),
  50000085: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Romantic Comedy"
  ),
  50000086: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Science Fiction"
  ),
  50000087: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Sports"
  ),
  50000088: (
    kind: AacGenreKind.books,
    genre: "Fiction & Literature|Light Novels"
  ),
  50000089: (
    kind: AacGenreKind.books,
    genre: "Comics & Graphic Novels|Manga|Horror"
  ),
  50000090: (kind: AacGenreKind.books, genre: "Comics & Graphic Novels|Comics"),
  50000091: (kind: AacGenreKind.books, genre: "Romance|Multicultural"),
  50000092: (kind: AacGenreKind.audiobooks, genre: "Erotica"),
  50000093: (kind: AacGenreKind.audiobooks, genre: "Light Novels"),
};
