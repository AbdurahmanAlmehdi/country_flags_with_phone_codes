import 'country_data.dart';

/// {@template country_utils}
/// Utility class for retrieving country information.
/// {@endtemplate}
class CountryUtils {
  CountryUtils._();

  /// Map for quick lookup by country code (ISO 3166-1 alpha-2).
  static final Map<String, Country> _codeMap = {
    for (final country in countries) country.code.toUpperCase(): country,
  };

  /// Map for quick lookup by ISO3 country code (ISO 3166-1 alpha-3).
  static final Map<String, Country> _iso3CodeMap = {
    for (final country in countries) country.iso3Code.toUpperCase(): country,
  };

  /// Map for quick lookup by dial code.
  static final Map<String, List<Country>> _dialCodeMap = {
    for (final country in countries)
      country.dialCode: [
        ...(_dialCodeMap[country.dialCode] ?? []),
        country,
      ],
  };

  /// Finds a country by its ISO 3166-1 alpha-2 code (e.g., 'US', 'GB').
  ///
  /// Returns null if no country is found with the given code.
  /// The search is case-insensitive.
  static Country? findByCountryCode(String countryCode) {
    return _codeMap[countryCode.toUpperCase()];
  }

  /// Finds a country by its ISO 3166-1 alpha-3 code (e.g., 'USA', 'GBR').
  ///
  /// Returns null if no country is found with the given code.
  /// The search is case-insensitive.
  static Country? findByIso3Code(String iso3Code) {
    return _iso3CodeMap[iso3Code.toUpperCase()];
  }

  /// Finds countries by their dial code (e.g., '+1', '+44').
  ///
  /// Returns an empty list if no countries are found with the given dial code.
  /// Note that some dial codes are shared by multiple countries.
  static List<Country> findByDialCode(String dialCode) {
    // Ensure the dial code starts with '+'
    final formattedDialCode =
        dialCode.startsWith('+') ? dialCode : '+$dialCode';
    return _dialCodeMap[formattedDialCode] ?? [];
  }

  /// Gets the dial code for a country by its ISO 3166-1 alpha-2 code.
  ///
  /// Returns null if no country is found with the given code.
  /// The search is case-insensitive.
  static String? getDialCodeByCountryCode(String countryCode) {
    return findByCountryCode(countryCode)?.dialCode;
  }

  /// Gets the country name for a country by its ISO 3166-1 alpha-2 code.
  ///
  /// Returns null if no country is found with the given code.
  /// The search is case-insensitive.
  static String? getCountryNameByCountryCode(String countryCode) {
    return findByCountryCode(countryCode)?.name;
  }

  /// Gets the dial code for a country by its ISO 3166-1 alpha-3 code.
  ///
  /// Returns null if no country is found with the given code.
  /// The search is case-insensitive.
  static String? getDialCodeByIso3Code(String iso3Code) {
    return findByIso3Code(iso3Code)?.dialCode;
  }

  /// Gets the country name for a country by its ISO 3166-1 alpha-3 code.
  ///
  /// Returns null if no country is found with the given code.
  /// The search is case-insensitive.
  static String? getCountryNameByIso3Code(String iso3Code) {
    return findByIso3Code(iso3Code)?.name;
  }

  /// Gets all available countries.
  ///
  /// Returns a list of all [Country] objects.
  static List<Country> getAllCountries() {
    return List.unmodifiable(countries);
  }

  /// Searches for countries by name (case-insensitive partial match).
  ///
  /// Returns a list of countries whose names contain the search term.
  static List<Country> searchByName(String searchTerm) {
    final term = searchTerm.toLowerCase();
    return countries
        .where((country) =>
            country.name.toLowerCase().contains(term) ||
            country.dialCode.toLowerCase().contains(term) ||
            country.iso3Code.toLowerCase().contains(term))
        .toList();
  }

  /// Gets all unique dial codes.
  ///
  /// Returns a sorted list of all unique dial codes.
  static List<String> getAllDialCodes() {
    final dialCodes = countries.map((c) => c.dialCode).toSet().toList();
    dialCodes.sort();
    return dialCodes;
  }
}
