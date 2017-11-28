unit ATxCodepageList;
interface
uses Windows;
type TATCodepageRec = record Family, Name: string; ID: Integer end;
const cCodepages: array[0..131] of TATCodepageRec = (
  (Family: ''; Name: 'ANSI (Windows)'; ID: CP_ACP),
  (Family: ''; Name: 'OEM (DOS)'; ID: CP_OEMCP),
  (Family: ''; Name: 'Mac'; ID: CP_MACCP),
  (Family: 'Central European'; Name: 'ANSI (Windows-1250)'; ID: 1250),
  (Family: 'Central European'; Name: 'IBM EBCDIC (Multilingual Latin-2)'; ID: 870),
  (Family: 'Central European'; Name: 'ISO-8859-2'; ID: 28592),
  (Family: 'Central European'; Name: 'Mac'; ID: 10029),
  (Family: 'Central European'; Name: 'Mac (Croatian)'; ID: 10082),
  (Family: 'Central European'; Name: 'Mac (Romanian)'; ID: 10010),
  (Family: 'Central European'; Name: 'OEM (IBM852)'; ID: 852),
  (Family: 'Western European'; Name: 'ANSI (Windows-1252)'; ID: 1252),
  (Family: 'Western European'; Name: 'IA5 German (7-bit)'; ID: 20106),
  (Family: 'Western European'; Name: 'IA5 Norwegian (7-bit)'; ID: 20108),
  (Family: 'Western European'; Name: 'IA5 Swedish (7-bit)'; ID: 20107),
  (Family: 'Western European'; Name: 'IA5 IRV International Alphabet No.5'; ID: 20105),
  (Family: 'Western European'; Name: 'IBM EBCDIC (Denmark-Norway)'; ID: 1142),
  (Family: 'Western European'; Name: 'IBM EBCDIC (Finland-Sweden)'; ID: 1143),
  (Family: 'Western European'; Name: 'IBM EBCDIC (France)'; ID: 1147),
  (Family: 'Western European'; Name: 'IBM EBCDIC (Germany)'; ID: 1141),
  (Family: 'Western European'; Name: 'IBM EBCDIC (Icelandic)'; ID: 1149),
  (Family: 'Western European'; Name: 'IBM EBCDIC (International)'; ID: 1148),
  (Family: 'Western European'; Name: 'IBM EBCDIC (Italy)'; ID: 1144),
  (Family: 'Western European'; Name: 'IBM EBCDIC (Spain)'; ID: 1145),
  (Family: 'Western European'; Name: 'IBM EBCDIC (UK)'; ID: 1146),
  (Family: 'Western European'; Name: 'IBM EBCDIC (US-Canada)'; ID: 1140),
  (Family: 'Western European'; Name: 'IBM EBCDIC (Latin-1/Open System)'; ID: 20924),
  (Family: 'Western European'; Name: 'ISO-6937 (Non-Spacing Accent)'; ID: 20269),
  (Family: 'Western European'; Name: 'ISO-8859-1 (Latin-1)'; ID: 28591),
  (Family: 'Western European'; Name: 'ISO-8859-3 (Latin-3)'; ID: 28593),
  (Family: 'Western European'; Name: 'ISO-8859-9 (Latin-5)'; ID: 28599),
  (Family: 'Western European'; Name: 'ISO-8859-15 (Latin-9)'; ID: 28605),
  (Family: 'Western European'; Name: 'Mac (Icelandic)'; ID: 10079),
  (Family: 'Western European'; Name: 'Mac (Roman)'; ID: 10000),
  (Family: 'Western European'; Name: 'OEM (French Canadian)'; ID: 863),
  (Family: 'Western European'; Name: 'OEM (Icelandic)'; ID: 861),
  (Family: 'Western European'; Name: 'OEM (Nordic)'; ID: 865),
  (Family: 'Western European'; Name: 'OEM (Multilingual Latin-1)'; ID: 858),
  (Family: 'Western European'; Name: 'OEM (Portuguese)'; ID: 860),
  (Family: 'Western European'; Name: 'OEM (United States)'; ID: 437),
  (Family: 'Western European'; Name: 'T.61'; ID: 20261),
  (Family: 'Western European'; Name: 'US-ASCII (7-bit)'; ID: 20127),
  (Family: 'Baltic'; Name: 'ANSI (Windows-1257)'; ID: 1257),
  (Family: 'Baltic'; Name: 'ISO-8859-4'; ID: 28594),
  (Family: 'Baltic'; Name: 'ISO-8859-13 (Lithuanian)'; ID: 28603),
  (Family: 'Baltic'; Name: 'OEM (IBM775)'; ID: 775),
  (Family: 'Cyrillic'; Name: 'ANSI (Windows-1251)'; ID: 1251),
  (Family: 'Cyrillic'; Name: 'IBM EBCDIC (Russian)'; ID: 20880),
  (Family: 'Cyrillic'; Name: 'IBM EBCDIC (Serbian-Bulgarian)'; ID: 21025),
  (Family: 'Cyrillic'; Name: 'ISO-8859-5'; ID: 28595),
  (Family: 'Cyrillic'; Name: 'KOI8-R'; ID: 20866),
  (Family: 'Cyrillic'; Name: 'KOI8-U'; ID: 21866),
  (Family: 'Cyrillic'; Name: 'Mac'; ID: 10007),
  (Family: 'Cyrillic'; Name: 'Mac (Ukrainian)'; ID: 10017),
  (Family: 'Cyrillic'; Name: 'OEM (Russian)'; ID: 866),
  (Family: 'Cyrillic'; Name: 'OEM (primarily Russian)'; ID: 855),
  (Family: 'Cyrillic'; Name: 'RUSCII (IBM-1125)'; ID: 1125),
  (Family: 'Greek'; Name: 'ANSI (Windows-1253)'; ID: 1253),
  (Family: 'Greek'; Name: 'IBM EBCDIC (IBM423)'; ID: 20423),
  (Family: 'Greek'; Name: 'IBM EBCDIC (Modern)'; ID: 875),
  (Family: 'Greek'; Name: 'ISO-8859-7'; ID: 28597),
  (Family: 'Greek'; Name: 'Mac'; ID: 10006),
  (Family: 'Greek'; Name: 'OEM (IBM737)'; ID: 737),
  (Family: 'Greek'; Name: 'OEM (Modern)'; ID: 869),
  (Family: 'Greek'; Name: 'Mac'; ID: 10006),
  (Family: 'Turkey'; Name: 'ANSI (Windows-1254)'; ID: 1254),
  (Family: 'Turkey'; Name: 'IBM EBCDIC (Latin-5)'; ID: 1026),
  (Family: 'Turkey'; Name: 'IBM EBCDIC (IBM905)'; ID: 20905),
  (Family: 'Turkey'; Name: 'ISO-8859-3 (Latin-3)'; ID: 28593),
  (Family: 'Turkey'; Name: 'ISO-8859-9 (Latin-5)'; ID: 28599),
  (Family: 'Turkey'; Name: 'Mac'; ID: 10081),
  (Family: 'Turkey'; Name: 'OEM (IBM857)'; ID: 857),
  (Family: 'Indian'; Name: 'ISCII Devanagari'; ID: 57002),
  (Family: 'Indian'; Name: 'ISCII Bengali'; ID: 57003),
  (Family: 'Indian'; Name: 'ISCII Tamil'; ID: 57004),
  (Family: 'Indian'; Name: 'ISCII Telugu'; ID: 57005),
  (Family: 'Indian'; Name: 'ISCII Assamese'; ID: 57006),
  (Family: 'Indian'; Name: 'ISCII Oriya'; ID: 57007),
  (Family: 'Indian'; Name: 'ISCII Kannada'; ID: 57008),
  (Family: 'Indian'; Name: 'ISCII Malayalam'; ID: 57009),
  (Family: 'Indian'; Name: 'ISCII Gujarati'; ID: 57010),
  (Family: 'Indian'; Name: 'ISCII Punjabi'; ID: 57011),
  (Family: 'Arabic'; Name: 'ANSI (Windows-1256)'; ID: 1256),
  (Family: 'Arabic'; Name: 'ASMO 708'; ID: 708),
  (Family: 'Arabic'; Name: 'ASMO 449+, BCON V4'; ID: 709),
  (Family: 'Arabic'; Name: 'IBM EBCDIC (IBM420)'; ID: 20420),
  (Family: 'Arabic'; Name: 'ISO-8859-6'; ID: 28596),
  (Family: 'Arabic'; Name: 'Mac'; ID: 10004),
  (Family: 'Arabic'; Name: 'OEM (IBM864)'; ID: 864),
  (Family: 'Arabic'; Name: 'Transparent ASMO (DOS-720)'; ID: 720),
  (Family: 'Hebrew'; Name: 'ANSI (Windows-1255)'; ID: 1255),
  (Family: 'Hebrew'; Name: 'IBM EBCDIC (IBM424)'; ID: 20424),
  (Family: 'Hebrew'; Name: 'ISO-8859-8 (Logical Ordering)'; ID: 38598),
  (Family: 'Hebrew'; Name: 'ISO-8859-8 (Visual Ordering)'; ID: 28598),
  (Family: 'Hebrew'; Name: 'Mac'; ID: 10005),
  (Family: 'Hebrew'; Name: 'OEM (DOS-862)'; ID: 862),
  (Family: 'Chinese Simplified'; Name: 'EUC'; ID: 51936),
  (Family: 'Chinese Simplified'; Name: 'GB18030'; ID: 54936),
  (Family: 'Chinese Simplified'; Name: 'GB2312'; ID: 936),
  (Family: 'Chinese Simplified'; Name: 'GB2312-80'; ID: 20936),
  (Family: 'Chinese Simplified'; Name: 'HZ'; ID: 52936),
  (Family: 'Chinese Simplified'; Name: 'ISO-2022'; ID: 50227),
  (Family: 'Chinese Simplified'; Name: 'Mac'; ID: 10008),
  (Family: 'Chinese Traditional'; Name: 'Big5'; ID: 950),
  (Family: 'Chinese Traditional'; Name: 'CNS (Taiwan)'; ID: 20000),
  (Family: 'Chinese Traditional'; Name: 'Eten'; ID: 20002),
  (Family: 'Chinese Traditional'; Name: 'EUC'; ID: 51950),
  (Family: 'Chinese Traditional'; Name: 'IBM5550 (Taiwan)'; ID: 20003),
  (Family: 'Chinese Traditional'; Name: 'ISO-2022'; ID: 50229),
  (Family: 'Chinese Traditional'; Name: 'Mac'; ID: 10002),
  (Family: 'Chinese Traditional'; Name: 'TCA (Taiwan)'; ID: 20001),
  (Family: 'Chinese Traditional'; Name: 'TeleText (Taiwan)'; ID: 20004),
  (Family: 'Chinese Traditional'; Name: 'Wang (Taiwan)'; ID: 20005),
  (Family: 'Japanese'; Name: 'ANSI/OEM (Shift-JIS)'; ID: 932),
  (Family: 'Japanese'; Name: 'EUC'; ID: 51932),
  (Family: 'Japanese'; Name: 'IBM EBCDIC (Katakana Extended)'; ID: 20290),
  (Family: 'Japanese'; Name: 'ISO-2022 (no halfwidth Katakana)'; ID: 50220),
  (Family: 'Japanese'; Name: 'ISO-2022 (halfwidth Katakana)'; ID: 50221),
  (Family: 'Japanese'; Name: 'ISO-2022 (JIS X 0201-1989)'; ID: 50222),
  (Family: 'Japanese'; Name: 'JIS X 0208-1990 && 0121-1990'; ID: 20932),
  (Family: 'Japanese'; Name: 'Mac'; ID: 10001),
  (Family: 'Korean'; Name: 'ANSI/OEM (Unified Hangul Code)'; ID: 949),
  (Family: 'Korean'; Name: 'EUC'; ID: 51949),
  (Family: 'Korean'; Name: 'IBM EBCDIC (Korean Extended)'; ID: 20833),
  (Family: 'Korean'; Name: 'ISO-2022'; ID: 50225),
  (Family: 'Korean'; Name: 'Johab'; ID: 1361),
  (Family: 'Korean'; Name: 'Mac'; ID: 10003),
  (Family: 'Korean'; Name: 'Wansung'; ID: 20949),
  (Family: 'Thai'; Name: 'ANSI (Windows-874)'; ID: 874),
  (Family: 'Thai'; Name: 'IBM EBCDIC'; ID: 20838),
  (Family: 'Vietnamese'; Name: 'ANSI (Windows-1258)'; ID: 1258),
  (Family: 'Unicode'; Name: 'Unicode (UTF-8)'; ID: CP_UTF8),
  (Family: 'Unicode'; Name: 'Unicode (UTF-7)'; ID: CP_UTF7)
  );
implementation end.
