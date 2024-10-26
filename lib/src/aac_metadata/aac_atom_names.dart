const String aacAtomNameStrLyrics = "©lyr"; // Lyrics
const String aacAtomNameStrLyricsURI = 'lrcu'; // LyricsURI
const String aacAtomNameStrTrackTitle =
    "©nam"; // track title,  Name of song or video
const String aacAtomNameStrTrack = "©trk"; // Track
const String aacAtomNameStrAlbum = "©alb"; // album
const String aacAtomNameStrArtist = "©ART"; // artist
const String aacAtomNameStrAlbumArtist = "aART"; // album artist
const String aacAtomNameStrGrouping = "©grp"; // Grouping
const String aacAtomNameStrDate = "date";
const String aacAtomNameStrYear = "©day"; // year
const String aacAtomNameStrPodcastKeywords = "keyw"; // podcast keywords
const String aacAtomNameStrEncodedBy = "©too"; // encoded by
const String aacAtomNameStrGenre = "©gen"; // genre
const String aacAtomNameStrComposer1 = "©com"; //Composer
const String aacAtomNameStrComposer2 = "©wrt"; // Writer/Composer
const String aacAtomNameStrAuthor = "©aut"; // Author
const String aacAtomNameStrDescription = "©des"; // Description
const String aacAtomNameStrPublisher = "©pub"; // Publisher
const String aacAtomNameStrSubtitle = "©st3"; // Subtitle
const String aacAtomNameStrCopyright1 = "cprt"; // copyright
const String aacAtomNameStrCopyright2 = "©cpy"; // Copyright information
const String aacAtomNameStrGeneralComment = "cmt"; // General comment
// Pictures
const String aacAtomNameCover = "covr"; // Cover
// Ints
const String aacAtomNameIntsTrackNumber = "trkn"; // track number, total tracks
const String aacAtomNameIntsDiscNumber = "disk"; // disc number, total discs
//
const String aacAtomNameIntGenre = "gnre"; // ID3v1 genre.
const String aacAtomNameIntGenreID =
    "geID"; // GenreID https://exiftool.org/TagNames/QuickTime.html#GenreID
// Ignore
const String aacAtomNameBlank = "----";
const String aacAtomNamePurchaseDate = "purd"; // PurchaseDate -- ignore?
const String aacAtomNameTitleSortOrder = "sonm"; // title sort order
const String aacAtomNameArtistSortOrder = "soar"; // artist sort order
const String aacAtomNameAlbumSortOrder = "soal"; // album sort order
const String aacAtomNameAppleStoreAccount = "apID"; // AppleStoreAccount

const List<String> aacIgnoreAtomNames = [
  aacAtomNameBlank,
  aacAtomNamePurchaseDate,
  aacAtomNameTitleSortOrder,
  aacAtomNameArtistSortOrder,
  aacAtomNameAlbumSortOrder,
  aacAtomNameAppleStoreAccount,
];
