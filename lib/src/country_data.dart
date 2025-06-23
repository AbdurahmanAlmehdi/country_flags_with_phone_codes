/// {@template country}
/// A model representing a country with its name, codes, and dial code.
/// {@endtemplate}
class Country {
  /// Creates a [Country] instance.
  const Country({
    required this.name,
    required this.code,
    required this.iso3Code,
    required this.dialCode,
  });

  /// The name of the country (may be in local language).
  final String name;

  /// The ISO 3166-1 alpha-2 country code (2 letters).
  final String code;

  /// The ISO 3166-1 alpha-3 country code (3 letters).
  final String iso3Code;

  /// The international dialing code for the country.
  final String dialCode;

  @override
  String toString() =>
      'Country(name: $name, code: $code, iso3Code: $iso3Code, dialCode: $dialCode)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Country &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          code == other.code &&
          iso3Code == other.iso3Code &&
          dialCode == other.dialCode;

  @override
  int get hashCode =>
      name.hashCode ^ code.hashCode ^ iso3Code.hashCode ^ dialCode.hashCode;
}

/// List of all countries with their details.
const List<Country> countries = [
  Country(name: 'افغانستان', code: 'AF', iso3Code: 'AFG', dialCode: '+93'),
  Country(name: 'Åland', code: 'AX', iso3Code: 'ALA', dialCode: '+358'),
  Country(name: 'Shqipëria', code: 'AL', iso3Code: 'ALB', dialCode: '+355'),
  Country(name: 'الجزائر', code: 'DZ', iso3Code: 'DZA', dialCode: '+213'),
  Country(
      name: 'American Samoa', code: 'AS', iso3Code: 'ASM', dialCode: '+1684'),
  Country(name: 'Andorra', code: 'AD', iso3Code: 'AND', dialCode: '+376'),
  Country(name: 'Angola', code: 'AO', iso3Code: 'AGO', dialCode: '+244'),
  Country(name: 'Anguilla', code: 'AI', iso3Code: 'AIA', dialCode: '+1264'),
  Country(name: 'Antarctica', code: 'AQ', iso3Code: 'ATA', dialCode: '+672'),
  Country(
      name: 'Antigua and Barbuda',
      code: 'AG',
      iso3Code: 'ATG',
      dialCode: '+1268'),
  Country(name: 'Argentina', code: 'AR', iso3Code: 'ARG', dialCode: '+54'),
  Country(name: 'Հայաստան', code: 'AM', iso3Code: 'ARM', dialCode: '+374'),
  Country(name: 'Aruba', code: 'AW', iso3Code: 'ABW', dialCode: '+297'),
  Country(name: 'Australia', code: 'AU', iso3Code: 'AUS', dialCode: '+61'),
  Country(name: 'Österreich', code: 'AT', iso3Code: 'AUT', dialCode: '+43'),
  Country(name: 'Azərbaycan', code: 'AZ', iso3Code: 'AZE', dialCode: '+994'),
  Country(name: 'Bahamas', code: 'BS', iso3Code: 'BHS', dialCode: '+1242'),
  Country(name: '‏البحرين', code: 'BH', iso3Code: 'BHR', dialCode: '+973'),
  Country(name: 'Bangladesh', code: 'BD', iso3Code: 'BGD', dialCode: '+880'),
  Country(name: 'Barbados', code: 'BB', iso3Code: 'BRB', dialCode: '+1246'),
  Country(name: 'Белару́сь', code: 'BY', iso3Code: 'BLR', dialCode: '+375'),
  Country(name: 'België', code: 'BE', iso3Code: 'BEL', dialCode: '+32'),
  Country(name: 'Belize', code: 'BZ', iso3Code: 'BLZ', dialCode: '+501'),
  Country(name: 'Bénin', code: 'BJ', iso3Code: 'BEN', dialCode: '+229'),
  Country(name: 'Bermuda', code: 'BM', iso3Code: 'BMU', dialCode: '+1441'),
  Country(name: 'ʼbrug-yul', code: 'BT', iso3Code: 'BTN', dialCode: '+975'),
  Country(name: 'Bolivia', code: 'BO', iso3Code: 'BOL', dialCode: '+591'),
  Country(
      name: 'Bosna i Hercegovina',
      code: 'BA',
      iso3Code: 'BIH',
      dialCode: '+387'),
  Country(name: 'Botswana', code: 'BW', iso3Code: 'BWA', dialCode: '+267'),
  Country(name: 'Bouvetøya', code: 'BV', iso3Code: 'BVT', dialCode: '+47'),
  Country(name: 'Brasil', code: 'BR', iso3Code: 'BRA', dialCode: '+55'),
  Country(
      name: 'British Indian Ocean Territory',
      code: 'IO',
      iso3Code: 'IOT',
      dialCode: '+246'),
  Country(
      name: 'Negara Brunei Darussalam',
      code: 'BN',
      iso3Code: 'BRN',
      dialCode: '+673'),
  Country(name: 'България', code: 'BG', iso3Code: 'BGR', dialCode: '+359'),
  Country(name: 'Burkina Faso', code: 'BF', iso3Code: 'BFA', dialCode: '+226'),
  Country(name: 'Burundi', code: 'BI', iso3Code: 'BDI', dialCode: '+257'),
  Country(name: 'Cambodia', code: 'KH', iso3Code: 'KHM', dialCode: '+855'),
  Country(name: 'Cameroon', code: 'CM', iso3Code: 'CMR', dialCode: '+237'),
  Country(name: 'Canada', code: 'CA', iso3Code: 'CAN', dialCode: '+1'),
  Country(name: 'Cabo Verde', code: 'CV', iso3Code: 'CPV', dialCode: '+238'),
  Country(
      name: 'Cayman Islands', code: 'KY', iso3Code: 'CYM', dialCode: '+1345'),
  Country(
      name: 'Ködörösêse tî Bêafrîka',
      code: 'CF',
      iso3Code: 'CAF',
      dialCode: '+236'),
  Country(name: 'Tchad', code: 'TD', iso3Code: 'TCD', dialCode: '+235'),
  Country(name: 'Chile', code: 'CL', iso3Code: 'CHL', dialCode: '+56'),
  Country(name: '中国', code: 'CN', iso3Code: 'CHN', dialCode: '+86'),
  Country(
      name: 'Christmas Island', code: 'CX', iso3Code: 'CXR', dialCode: '+61'),
  Country(
      name: 'Cocos (Keeling) Islands',
      code: 'CC',
      iso3Code: 'CCK',
      dialCode: '+61'),
  Country(name: 'Colombia', code: 'CO', iso3Code: 'COL', dialCode: '+57'),
  Country(name: 'Komori', code: 'KM', iso3Code: 'COM', dialCode: '+269'),
  Country(
      name: 'République du Congo',
      code: 'CG',
      iso3Code: 'COG',
      dialCode: '+242'),
  Country(
      name: 'République démocratique du Congo',
      code: 'CD',
      iso3Code: 'COD',
      dialCode: '+243'),
  Country(name: 'Cook Islands', code: 'CK', iso3Code: 'COK', dialCode: '+682'),
  Country(name: 'Costa Rica', code: 'CR', iso3Code: 'CRI', dialCode: '+506'),
  Country(
      name: 'Côte d\'Ivoire', code: 'CI', iso3Code: 'CIV', dialCode: '+225'),
  Country(name: 'Hrvatska', code: 'HR', iso3Code: 'HRV', dialCode: '+385'),
  Country(name: 'Cuba', code: 'CU', iso3Code: 'CUB', dialCode: '+53'),
  Country(name: 'Κύπρος', code: 'CY', iso3Code: 'CYP', dialCode: '+357'),
  Country(
      name: 'Česká republika', code: 'CZ', iso3Code: 'CZE', dialCode: '+420'),
  Country(name: 'Danmark', code: 'DK', iso3Code: 'DNK', dialCode: '+45'),
  Country(name: 'Djibouti', code: 'DJ', iso3Code: 'DJI', dialCode: '+253'),
  Country(name: 'Dominica', code: 'DM', iso3Code: 'DMA', dialCode: '+1767'),
  Country(
      name: 'República Dominicana',
      code: 'DO',
      iso3Code: 'DOM',
      dialCode: '+1'),
  Country(name: 'Ecuador', code: 'EC', iso3Code: 'ECU', dialCode: '+593'),
  Country(name: 'مصر‎', code: 'EG', iso3Code: 'EGY', dialCode: '+20'),
  Country(name: 'El Salvador', code: 'SV', iso3Code: 'SLV', dialCode: '+503'),
  Country(
      name: 'Guinea Ecuatorial', code: 'GQ', iso3Code: 'GNQ', dialCode: '+240'),
  Country(name: 'ኤርትራ', code: 'ER', iso3Code: 'ERI', dialCode: '+291'),
  Country(name: 'Eesti', code: 'EE', iso3Code: 'EST', dialCode: '+372'),
  Country(name: 'ኢትዮጵያ', code: 'ET', iso3Code: 'ETH', dialCode: '+251'),
  Country(
      name: 'Falkland Islands', code: 'FK', iso3Code: 'FLK', dialCode: '+500'),
  Country(name: 'Føroyar', code: 'FO', iso3Code: 'FRO', dialCode: '+298'),
  Country(name: 'Fiji', code: 'FJ', iso3Code: 'FJI', dialCode: '+679'),
  Country(name: 'Suomi', code: 'FI', iso3Code: 'FIN', dialCode: '+358'),
  Country(name: 'France', code: 'FR', iso3Code: 'FRA', dialCode: '+33'),
  Country(
      name: 'Guyane française', code: 'GF', iso3Code: 'GUF', dialCode: '+594'),
  Country(
      name: 'Polynésie française',
      code: 'PF',
      iso3Code: 'PYF',
      dialCode: '+689'),
  Country(
      name: 'Territoire des Terres australes et antarctiques fr',
      code: 'TF',
      iso3Code: 'ATF',
      dialCode: '+262'),
  Country(name: 'Gabon', code: 'GA', iso3Code: 'GAB', dialCode: '+241'),
  Country(name: 'Gambia', code: 'GM', iso3Code: 'GMB', dialCode: '+220'),
  Country(name: 'საქართველო', code: 'GE', iso3Code: 'GEO', dialCode: '+995'),
  Country(name: 'Deutschland', code: 'DE', iso3Code: 'DEU', dialCode: '+49'),
  Country(name: 'Ghana', code: 'GH', iso3Code: 'GHA', dialCode: '+233'),
  Country(name: 'Gibraltar', code: 'GI', iso3Code: 'GIB', dialCode: '+350'),
  Country(name: 'Ελλάδα', code: 'GR', iso3Code: 'GRC', dialCode: '+30'),
  Country(
      name: 'Kalaallit Nunaat', code: 'GL', iso3Code: 'GRL', dialCode: '+299'),
  Country(name: 'Grenada', code: 'GD', iso3Code: 'GRD', dialCode: '+1473'),
  Country(name: 'Guadeloupe', code: 'GP', iso3Code: 'GLP', dialCode: '+590'),
  Country(name: 'Guam', code: 'GU', iso3Code: 'GUM', dialCode: '+1671'),
  Country(name: 'Guatemala', code: 'GT', iso3Code: 'GTM', dialCode: '+502'),
  Country(name: 'Guernsey', code: 'GG', iso3Code: 'GGY', dialCode: '+44'),
  Country(name: 'Guinée', code: 'GN', iso3Code: 'GIN', dialCode: '+224'),
  Country(name: 'Guiné-Bissau', code: 'GW', iso3Code: 'GNB', dialCode: '+245'),
  Country(name: 'Guyana', code: 'GY', iso3Code: 'GUY', dialCode: '+592'),
  Country(name: 'Haïti', code: 'HT', iso3Code: 'HTI', dialCode: '+509'),
  Country(
      name: 'Heard Island and McDonald Islands',
      code: 'HM',
      iso3Code: 'HMD',
      dialCode: '+0'),
  Country(name: 'Vaticano', code: 'VA', iso3Code: 'VAT', dialCode: '+379'),
  Country(name: 'Honduras', code: 'HN', iso3Code: 'HND', dialCode: '+504'),
  Country(name: '香港', code: 'HK', iso3Code: 'HKG', dialCode: '+852'),
  Country(name: 'Magyarország', code: 'HU', iso3Code: 'HUN', dialCode: '+36'),
  Country(name: 'Ísland', code: 'IS', iso3Code: 'ISL', dialCode: '+354'),
  Country(name: 'भारत', code: 'IN', iso3Code: 'IND', dialCode: '+91'),
  Country(name: 'Indonesia', code: 'ID', iso3Code: 'IDN', dialCode: '+62'),
  Country(name: 'ایران', code: 'IR', iso3Code: 'IRN', dialCode: '+98'),
  Country(name: 'العراق', code: 'IQ', iso3Code: 'IRQ', dialCode: '+964'),
  Country(name: 'Éire', code: 'IE', iso3Code: 'IRL', dialCode: '+353'),
  Country(name: 'Isle of Man', code: 'IM', iso3Code: 'IMN', dialCode: '+44'),
  Country(name: 'ישראל', code: 'IL', iso3Code: 'ISR', dialCode: '+972'),
  Country(name: 'Italia', code: 'IT', iso3Code: 'ITA', dialCode: '+39'),
  Country(name: 'Jamaica', code: 'JM', iso3Code: 'JAM', dialCode: '+1876'),
  Country(name: '日本', code: 'JP', iso3Code: 'JPN', dialCode: '+81'),
  Country(name: 'Jersey', code: 'JE', iso3Code: 'JEY', dialCode: '+44'),
  Country(name: 'الأردن', code: 'JO', iso3Code: 'JOR', dialCode: '+962'),
  Country(name: 'Қазақстан', code: 'KZ', iso3Code: 'KAZ', dialCode: '+7'),
  Country(name: 'Kenya', code: 'KE', iso3Code: 'KEN', dialCode: '+254'),
  Country(name: 'Kiribati', code: 'KI', iso3Code: 'KIR', dialCode: '+686'),
  Country(name: '북한', code: 'KP', iso3Code: 'PRK', dialCode: '+850'),
  Country(name: '대한민국', code: 'KR', iso3Code: 'KOR', dialCode: '+82'),
  Country(
      name: 'Republika e Kosovës',
      code: 'XK',
      iso3Code: 'KOS',
      dialCode: '+383'),
  Country(name: 'الكويت', code: 'KW', iso3Code: 'KWT', dialCode: '+965'),
  Country(name: 'Кыргызстан', code: 'KG', iso3Code: 'KGZ', dialCode: '+996'),
  Country(name: 'ສປປລາວ', code: 'LA', iso3Code: 'LAO', dialCode: '+856'),
  Country(name: 'Latvija', code: 'LV', iso3Code: 'LVA', dialCode: '+371'),
  Country(name: 'لبنان', code: 'LB', iso3Code: 'LBN', dialCode: '+961'),
  Country(name: 'Lesotho', code: 'LS', iso3Code: 'LSO', dialCode: '+266'),
  Country(name: 'Liberia', code: 'LR', iso3Code: 'LBR', dialCode: '+231'),
  Country(name: '‏ليبيا', code: 'LY', iso3Code: 'LBY', dialCode: '+218'),
  Country(name: 'Liechtenstein', code: 'LI', iso3Code: 'LIE', dialCode: '+423'),
  Country(name: 'Lietuva', code: 'LT', iso3Code: 'LTU', dialCode: '+370'),
  Country(name: 'Luxembourg', code: 'LU', iso3Code: 'LUX', dialCode: '+352'),
  Country(name: '澳門', code: 'MO', iso3Code: 'MAC', dialCode: '+853'),
  Country(name: 'Македонија', code: 'MK', iso3Code: 'MKD', dialCode: '+389'),
  Country(name: 'Madagasikara', code: 'MG', iso3Code: 'MDG', dialCode: '+261'),
  Country(name: 'Malawi', code: 'MW', iso3Code: 'MWI', dialCode: '+265'),
  Country(name: 'Malaysia', code: 'MY', iso3Code: 'MYS', dialCode: '+60'),
  Country(name: 'Maldives', code: 'MV', iso3Code: 'MDV', dialCode: '+960'),
  Country(name: 'Mali', code: 'ML', iso3Code: 'MLI', dialCode: '+223'),
  Country(name: 'Malta', code: 'MT', iso3Code: 'MLT', dialCode: '+356'),
  Country(name: 'M̧ajeļ', code: 'MH', iso3Code: 'MHL', dialCode: '+692'),
  Country(name: 'Martinique', code: 'MQ', iso3Code: 'MTQ', dialCode: '+596'),
  Country(name: 'موريتانيا', code: 'MR', iso3Code: 'MRT', dialCode: '+222'),
  Country(name: 'Maurice', code: 'MU', iso3Code: 'MUS', dialCode: '+230'),
  Country(name: 'Mayotte', code: 'YT', iso3Code: 'MYT', dialCode: '+262'),
  Country(name: 'México', code: 'MX', iso3Code: 'MEX', dialCode: '+52'),
  Country(name: 'Micronesia', code: 'FM', iso3Code: 'FSM', dialCode: '+691'),
  Country(name: 'Moldova', code: 'MD', iso3Code: 'MDA', dialCode: '+373'),
  Country(name: 'Monaco', code: 'MC', iso3Code: 'MCO', dialCode: '+377'),
  Country(name: 'Монгол улс', code: 'MN', iso3Code: 'MNG', dialCode: '+976'),
  Country(name: 'Црна Гора', code: 'ME', iso3Code: 'MNE', dialCode: '+382'),
  Country(name: 'Montserrat', code: 'MS', iso3Code: 'MSR', dialCode: '+1664'),
  Country(name: 'المغرب', code: 'MA', iso3Code: 'MAR', dialCode: '+212'),
  Country(name: 'Moçambique', code: 'MZ', iso3Code: 'MOZ', dialCode: '+258'),
  Country(name: 'Myanmar', code: 'MM', iso3Code: 'MMR', dialCode: '+95'),
  Country(name: 'Namibia', code: 'NA', iso3Code: 'NAM', dialCode: '+264'),
  Country(name: 'Nauru', code: 'NR', iso3Code: 'NRU', dialCode: '+674'),
  Country(name: 'नेपाल', code: 'NP', iso3Code: 'NPL', dialCode: '+977'),
  Country(name: 'Nederland', code: 'NL', iso3Code: 'NLD', dialCode: '+31'),
  Country(
      name: 'Netherlands Antilles',
      code: 'AN',
      iso3Code: 'AN',
      dialCode: '+599'),
  Country(
      name: 'Nouvelle-Calédonie',
      code: 'NC',
      iso3Code: 'NCL',
      dialCode: '+687'),
  Country(name: 'New Zealand', code: 'NZ', iso3Code: 'NZL', dialCode: '+64'),
  Country(name: 'Nicaragua', code: 'NI', iso3Code: 'NIC', dialCode: '+505'),
  Country(name: 'Niger', code: 'NE', iso3Code: 'NER', dialCode: '+227'),
  Country(name: 'Nigeria', code: 'NG', iso3Code: 'NGA', dialCode: '+234'),
  Country(name: 'Niuē', code: 'NU', iso3Code: 'NIU', dialCode: '+683'),
  Country(
      name: 'Norfolk Island', code: 'NF', iso3Code: 'NFK', dialCode: '+672'),
  Country(
      name: 'Northern Mariana Islands',
      code: 'MP',
      iso3Code: 'MNP',
      dialCode: '+1670'),
  Country(name: 'Norge', code: 'NO', iso3Code: 'NOR', dialCode: '+47'),
  Country(name: 'عمان', code: 'OM', iso3Code: 'OMN', dialCode: '+968'),
  Country(name: 'Pakistan', code: 'PK', iso3Code: 'PAK', dialCode: '+92'),
  Country(name: 'Palau', code: 'PW', iso3Code: 'PLW', dialCode: '+680'),
  Country(name: 'فلسطين', code: 'PS', iso3Code: 'PSE', dialCode: '+970'),
  Country(name: 'Panamá', code: 'PA', iso3Code: 'PAN', dialCode: '+507'),
  Country(name: 'Papua Niugini', code: 'PG', iso3Code: 'PNG', dialCode: '+675'),
  Country(name: 'Paraguay', code: 'PY', iso3Code: 'PRY', dialCode: '+595'),
  Country(name: 'Perú', code: 'PE', iso3Code: 'PER', dialCode: '+51'),
  Country(name: 'Pilipinas', code: 'PH', iso3Code: 'PHL', dialCode: '+63'),
  Country(
      name: 'Pitcairn Islands', code: 'PN', iso3Code: 'PCN', dialCode: '+64'),
  Country(name: 'Polska', code: 'PL', iso3Code: 'POL', dialCode: '+48'),
  Country(name: 'Portugal', code: 'PT', iso3Code: 'PRT', dialCode: '+351'),
  Country(name: 'Puerto Rico', code: 'PR', iso3Code: 'PRI', dialCode: '+1939'),
  Country(name: 'قطر', code: 'QA', iso3Code: 'QAT', dialCode: '+974'),
  Country(name: 'România', code: 'RO', iso3Code: 'ROU', dialCode: '+40'),
  Country(name: 'Россия', code: 'RU', iso3Code: 'RUS', dialCode: '+7'),
  Country(name: 'Rwanda', code: 'RW', iso3Code: 'RWA', dialCode: '+250'),
  Country(name: 'La Réunion', code: 'RE', iso3Code: 'REU', dialCode: '+262'),
  Country(
      name: 'Saint-Barthélemy', code: 'BL', iso3Code: 'BLM', dialCode: '+590'),
  Country(name: 'Saint Helena', code: 'SH', iso3Code: 'SHN', dialCode: '+290'),
  Country(
      name: 'Saint Kitts and Nevis',
      code: 'KN',
      iso3Code: 'KNA',
      dialCode: '+1869'),
  Country(name: 'Saint Lucia', code: 'LC', iso3Code: 'LCA', dialCode: '+1758'),
  Country(name: 'Saint-Martin', code: 'MF', iso3Code: 'MAF', dialCode: '+590'),
  Country(
      name: 'Saint-Pierre-et-Miquelon',
      code: 'PM',
      iso3Code: 'SPM',
      dialCode: '+508'),
  Country(
      name: 'Saint Vincent and the Grenadines',
      code: 'VC',
      iso3Code: 'VCT',
      dialCode: '+1784'),
  Country(name: 'Samoa', code: 'WS', iso3Code: 'WSM', dialCode: '+685'),
  Country(name: 'San Marino', code: 'SM', iso3Code: 'SMR', dialCode: '+378'),
  Country(
      name: 'São Tomé e Príncipe',
      code: 'ST',
      iso3Code: 'STP',
      dialCode: '+239'),
  Country(
      name: 'العربية السعودية', code: 'SA', iso3Code: 'SAU', dialCode: '+966'),
  Country(name: 'Sénégal', code: 'SN', iso3Code: 'SEN', dialCode: '+221'),
  Country(name: 'Србија', code: 'RS', iso3Code: 'SRB', dialCode: '+381'),
  Country(name: 'Seychelles', code: 'SC', iso3Code: 'SYC', dialCode: '+248'),
  Country(name: 'Sierra Leone', code: 'SL', iso3Code: 'SLE', dialCode: '+232'),
  Country(name: 'Singapore', code: 'SG', iso3Code: 'SGP', dialCode: '+65'),
  Country(name: 'Slovensko', code: 'SK', iso3Code: 'SVK', dialCode: '+421'),
  Country(name: 'Slovenija', code: 'SI', iso3Code: 'SVN', dialCode: '+386'),
  Country(
      name: 'Solomon Islands', code: 'SB', iso3Code: 'SLB', dialCode: '+677'),
  Country(name: 'Soomaaliya', code: 'SO', iso3Code: 'SOM', dialCode: '+252'),
  Country(name: 'South Africa', code: 'ZA', iso3Code: 'ZAF', dialCode: '+27'),
  Country(name: 'South Sudan', code: 'SS', iso3Code: 'SSD', dialCode: '+211'),
  Country(name: 'South Georgia', code: 'GS', iso3Code: 'SGS', dialCode: '+500'),
  Country(name: 'España', code: 'ES', iso3Code: 'ESP', dialCode: '+34'),
  Country(name: 'Sri Lanka', code: 'LK', iso3Code: 'LKA', dialCode: '+94'),
  Country(name: 'السودان', code: 'SD', iso3Code: 'SDN', dialCode: '+249'),
  Country(name: 'Suriname', code: 'SR', iso3Code: 'SUR', dialCode: '+597'),
  Country(
      name: 'Svalbard og Jan Mayen',
      code: 'SJ',
      iso3Code: 'SJM',
      dialCode: '+47'),
  Country(name: 'Swaziland', code: 'SZ', iso3Code: 'SWZ', dialCode: '+268'),
  Country(name: 'Sverige', code: 'SE', iso3Code: 'SWE', dialCode: '+46'),
  Country(name: 'Schweiz', code: 'CH', iso3Code: 'CHE', dialCode: '+41'),
  Country(name: 'سوريا', code: 'SY', iso3Code: 'SYR', dialCode: '+963'),
  Country(name: '臺灣', code: 'TW', iso3Code: 'TWN', dialCode: '+886'),
  Country(name: 'Тоҷикистон', code: 'TJ', iso3Code: 'TJK', dialCode: '+992'),
  Country(name: 'Tanzania', code: 'TZ', iso3Code: 'TZA', dialCode: '+255'),
  Country(name: 'ประเทศไทย', code: 'TH', iso3Code: 'THA', dialCode: '+66'),
  Country(name: 'Timor-Leste', code: 'TL', iso3Code: 'TLS', dialCode: '+670'),
  Country(name: 'Togo', code: 'TG', iso3Code: 'TGO', dialCode: '+228'),
  Country(name: 'Tokelau', code: 'TK', iso3Code: 'TKL', dialCode: '+690'),
  Country(name: 'Tonga', code: 'TO', iso3Code: 'TON', dialCode: '+676'),
  Country(
      name: 'Trinidad and Tobago',
      code: 'TT',
      iso3Code: 'TTO',
      dialCode: '+1868'),
  Country(name: 'تونس', code: 'TN', iso3Code: 'TUN', dialCode: '+216'),
  Country(name: 'Türkiye', code: 'TR', iso3Code: 'TUR', dialCode: '+90'),
  Country(name: 'Türkmenistan', code: 'TM', iso3Code: 'TKM', dialCode: '+993'),
  Country(
      name: 'Turks and Caicos Islands',
      code: 'TC',
      iso3Code: 'TCA',
      dialCode: '+1649'),
  Country(name: 'Tuvalu', code: 'TV', iso3Code: 'TUV', dialCode: '+688'),
  Country(name: 'Uganda', code: 'UG', iso3Code: 'UGA', dialCode: '+256'),
  Country(name: 'Україна', code: 'UA', iso3Code: 'UKR', dialCode: '+380'),
  Country(
      name: 'دولة الإمارات العربية المتحدة',
      code: 'AE',
      iso3Code: 'ARE',
      dialCode: '+971'),
  Country(name: 'United Kingdom', code: 'GB', iso3Code: 'GBR', dialCode: '+44'),
  Country(name: 'United States', code: 'US', iso3Code: 'USA', dialCode: '+1'),
  Country(name: 'Uruguay', code: 'UY', iso3Code: 'URY', dialCode: '+598'),
  Country(name: 'O\'zbekiston', code: 'UZ', iso3Code: 'UZB', dialCode: '+998'),
  Country(name: 'Vanuatu', code: 'VU', iso3Code: 'VUT', dialCode: '+678'),
  Country(name: 'Venezuela', code: 'VE', iso3Code: 'VEN', dialCode: '+58'),
  Country(name: 'Việt Nam', code: 'VN', iso3Code: 'VNM', dialCode: '+84'),
  Country(
      name: 'British Virgin Islands',
      code: 'VG',
      iso3Code: 'VGB',
      dialCode: '+1284'),
  Country(
      name: 'United States Virgin Islands',
      code: 'VI',
      iso3Code: 'VIR',
      dialCode: '+1340'),
  Country(
      name: 'Wallis et Futuna', code: 'WF', iso3Code: 'WLF', dialCode: '+681'),
  Country(name: 'اليَمَن', code: 'YE', iso3Code: 'YEM', dialCode: '+967'),
  Country(name: 'Zambia', code: 'ZM', iso3Code: 'ZMB', dialCode: '+260'),
  Country(name: 'Zimbabwe', code: 'ZW', iso3Code: 'ZWE', dialCode: '+263'),
];
