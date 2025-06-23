// ignore_for_file: public_member_api_docs

import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Flags Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Country Flags with Dial Codes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Country? selectedCountry;

  @override
  void initState() {
    super.initState();
    // Set default country to United States
    selectedCountry = CountryUtils.findByCountryCode('US');
  }

  void _showCountryPicker() async {
    final country = await showCountryPicker(
      context: context,
      title: 'Select Country',
    );

    if (country != null) {
      setState(() {
        selectedCountry = country;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selected Country:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            if (selectedCountry != null)
              Card(
                child: CountryPicker(
                  country: selectedCountry!,
                  onTap: _showCountryPicker,
                ),
              )
            else
              const Text('No country selected'),
            const SizedBox(height: 32),
            const Text(
              'Different Flag Shapes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CountryFlag.fromCountryCode(
                      'US',
                      width: 60,
                      height: 40,
                      shape: const Rectangle(),
                    ),
                    const SizedBox(height: 8),
                    const Text('Rectangle'),
                  ],
                ),
                Column(
                  children: [
                    CountryFlag.fromCountryCode(
                      'US',
                      width: 50,
                      height: 50,
                      shape: const Circle(),
                    ),
                    const SizedBox(height: 8),
                    const Text('Circle'),
                  ],
                ),
                Column(
                  children: [
                    CountryFlag.fromCountryCode(
                      'US',
                      width: 60,
                      height: 40,
                      shape: const RoundedRectangle(8),
                    ),
                    const SizedBox(height: 8),
                    const Text('Rounded'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Country Utilities Examples:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildUtilityExample(
                      'Get dial code by country code:',
                      'CountryUtils.getDialCodeByCountryCode(\'US\')',
                      CountryUtils.getDialCodeByCountryCode('US') ??
                          'Not found',
                    ),
                    const SizedBox(height: 8),
                    _buildUtilityExample(
                      'Get country name by country code:',
                      'CountryUtils.getCountryNameByCountryCode(\'GB\')',
                      CountryUtils.getCountryNameByCountryCode('GB') ??
                          'Not found',
                    ),
                    const SizedBox(height: 8),
                    _buildUtilityExample(
                      'Find countries by dial code:',
                      'CountryUtils.findByDialCode(\'+1\').length',
                      '${CountryUtils.findByDialCode('+1').length} countries',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showCountryPicker,
        tooltip: 'Select Country',
        icon: const Icon(Icons.flag),
        label: const Text('Select Country'),
      ),
    );
  }

  Widget _buildUtilityExample(String title, String code, String result) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          code,
          style: const TextStyle(
            fontFamily: 'monospace',
            fontSize: 12,
            color: Colors.blue,
          ),
        ),
        Text(
          '→ $result',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
