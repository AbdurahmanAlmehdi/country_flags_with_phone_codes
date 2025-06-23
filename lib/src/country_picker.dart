import 'package:flutter/material.dart';
import 'country_data.dart';
import 'country_flags.dart';
import 'country_utils.dart';

/// {@template country_picker}
/// A widget that displays a country with its flag, name, and dial code.
/// {@endtemplate}
class CountryPicker extends StatelessWidget {
  /// Creates a [CountryPicker] widget.
  ///
  /// {@macro country_picker}
  const CountryPicker({
    required this.country,
    this.onTap,
    this.showFlag = true,
    this.showName = true,
    this.showDialCode = true,
    this.flagWidth = 40,
    this.flagHeight = 30,
    this.flagShape = const Rectangle(),
    this.spacing = 12,
    this.textStyle,
    this.dialCodeStyle,
    super.key,
  });

  /// The country to display.
  final Country country;

  /// Callback when the picker is tapped.
  final VoidCallback? onTap;

  /// Whether to show the flag. Defaults to true.
  final bool showFlag;

  /// Whether to show the country name. Defaults to true.
  final bool showName;

  /// Whether to show the dial code. Defaults to true.
  final bool showDialCode;

  /// Width of the flag. Defaults to 40.
  final double flagWidth;

  /// Height of the flag. Defaults to 30.
  final double flagHeight;

  /// Shape of the flag. Defaults to Rectangle.
  final Shape flagShape;

  /// Spacing between elements. Defaults to 12.
  final double spacing;

  /// Text style for the country name.
  final TextStyle? textStyle;

  /// Text style for the dial code.
  final TextStyle? dialCodeStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            if (showFlag) ...[
              CountryFlag.fromCountryCode(
                country.code,
                width: flagWidth,
                height: flagHeight,
                shape: flagShape,
              ),
              SizedBox(width: spacing),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showName)
                    Text(
                      country.name,
                      style: textStyle ?? Theme.of(context).textTheme.bodyLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (showDialCode)
                    Text(
                      country.dialCode,
                      style: dialCodeStyle ??
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withOpacity(0.7),
                              ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// {@template country_list_picker}
/// A widget that displays a searchable list of countries.
/// {@endtemplate}
class CountryListPicker extends StatefulWidget {
  /// Creates a [CountryListPicker] widget.
  ///
  /// {@macro country_list_picker}
  const CountryListPicker({
    this.onCountrySelected,
    this.showFlag = true,
    this.showName = true,
    this.showDialCode = true,
    this.flagWidth = 40,
    this.flagHeight = 30,
    this.flagShape = const Rectangle(),
    this.searchable = true,
    this.searchHint = 'Search countries...',
    this.emptySearchText = 'No countries found',
    this.textStyle,
    this.dialCodeStyle,
    super.key,
  });

  /// Callback when a country is selected.
  final ValueChanged<Country>? onCountrySelected;

  /// Whether to show flags. Defaults to true.
  final bool showFlag;

  /// Whether to show country names. Defaults to true.
  final bool showName;

  /// Whether to show dial codes. Defaults to true.
  final bool showDialCode;

  /// Width of flags. Defaults to 40.
  final double flagWidth;

  /// Height of flags. Defaults to 30.
  final double flagHeight;

  /// Shape of flags. Defaults to Rectangle.
  final Shape flagShape;

  /// Whether the list is searchable. Defaults to true.
  final bool searchable;

  /// Hint text for the search field.
  final String searchHint;

  /// Text to show when no countries match the search.
  final String emptySearchText;

  /// Text style for country names.
  final TextStyle? textStyle;

  /// Text style for dial codes.
  final TextStyle? dialCodeStyle;

  @override
  State<CountryListPicker> createState() => _CountryListPickerState();
}

class _CountryListPickerState extends State<CountryListPicker> {
  late List<Country> _filteredCountries;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredCountries = CountryUtils.getAllCountries();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim();
    setState(() {
      if (query.isEmpty) {
        _filteredCountries = CountryUtils.getAllCountries();
      } else {
        _filteredCountries = CountryUtils.searchByName(query);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.searchable) ...[
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: widget.searchHint,
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
        ],
        Expanded(
          child: _filteredCountries.isEmpty
              ? Center(
                  child: Text(
                    widget.emptySearchText,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.6),
                        ),
                  ),
                )
              : ListView.builder(
                  itemCount: _filteredCountries.length,
                  itemBuilder: (context, index) {
                    final country = _filteredCountries[index];
                    return CountryPicker(
                      country: country,
                      onTap: () => widget.onCountrySelected?.call(country),
                      showFlag: widget.showFlag,
                      showName: widget.showName,
                      showDialCode: widget.showDialCode,
                      flagWidth: widget.flagWidth,
                      flagHeight: widget.flagHeight,
                      flagShape: widget.flagShape,
                      textStyle: widget.textStyle,
                      dialCodeStyle: widget.dialCodeStyle,
                    );
                  },
                ),
        ),
      ],
    );
  }
}

/// Shows a modal bottom sheet with a country picker.
///
/// Returns the selected [Country] or null if cancelled.
Future<Country?> showCountryPicker({
  required BuildContext context,
  bool showFlag = true,
  bool showName = true,
  bool showDialCode = true,
  double flagWidth = 40,
  double flagHeight = 30,
  Shape flagShape = const Rectangle(),
  bool searchable = true,
  String searchHint = 'Search countries...',
  String emptySearchText = 'No countries found',
  String title = 'Select Country',
  TextStyle? textStyle,
  TextStyle? dialCodeStyle,
}) async {
  return showModalBottomSheet<Country>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.2),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: CountryListPicker(
                    onCountrySelected: (country) {
                      Navigator.of(context).pop(country);
                    },
                    showFlag: showFlag,
                    showName: showName,
                    showDialCode: showDialCode,
                    flagWidth: flagWidth,
                    flagHeight: flagHeight,
                    flagShape: flagShape,
                    searchable: searchable,
                    searchHint: searchHint,
                    emptySearchText: emptySearchText,
                    textStyle: textStyle,
                    dialCodeStyle: dialCodeStyle,
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
