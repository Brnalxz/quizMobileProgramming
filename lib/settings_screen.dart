import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),

            // Theme Selector
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Choose Theme:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.palette, color: Colors.blue),
                          SizedBox(width: 10),
                          Text('Cool Theme'),
                        ],
                      ),
                      value: 'ThemeA',
                      groupValue:
                          themeProvider.currentTheme == ThemeProvider.themeA
                              ? 'ThemeA'
                              : null,
                      onChanged: (value) {
                        themeProvider.switchTheme(value as String);
                      },
                    ),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.palette, color: Colors.green),
                          SizedBox(width: 10),
                          Text('Nature Theme'),
                        ],
                      ),
                      value: 'ThemeB',
                      groupValue:
                          themeProvider.currentTheme == ThemeProvider.themeB
                              ? 'ThemeB'
                              : null,
                      onChanged: (value) {
                        themeProvider.switchTheme(value as String);
                      },
                    ),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.palette, color: Colors.orange),
                          SizedBox(width: 10),
                          Text('Autumn Theme'),
                        ],
                      ),
                      value: 'ThemeC',
                      groupValue:
                          themeProvider.currentTheme == ThemeProvider.themeC
                              ? 'ThemeC'
                              : null,
                      onChanged: (value) {
                        themeProvider.switchTheme(value as String);
                      },
                    ),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.palette, color: Colors.black),
                          SizedBox(width: 10),
                          Text('Dark Theme'),
                        ],
                      ),
                      value: 'ThemeD',
                      groupValue:
                          themeProvider.currentTheme == ThemeProvider.themeD
                              ? 'ThemeD'
                              : null,
                      onChanged: (value) {
                        themeProvider.switchTheme(value as String);
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Font Selector
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Choose Font Style:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.text_fields, color: Colors.black),
                          SizedBox(width: 10),
                          Text('Roboto'),
                        ],
                      ),
                      value: 'Roboto',
                      groupValue: themeProvider.currentFont,
                      onChanged: (value) {
                        themeProvider.switchFont(value as String);
                      },
                    ),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.text_fields, color: Colors.red),
                          SizedBox(width: 10),
                          Text('Lobster'),
                        ],
                      ),
                      value: 'Lobster',
                      groupValue: themeProvider.currentFont,
                      onChanged: (value) {
                        themeProvider.switchFont(value as String);
                      },
                    ),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.text_fields, color: Colors.deepPurple),
                          SizedBox(width: 10),
                          Text('BebasNeue'),
                        ],
                      ),
                      value: 'BebasNeue',
                      groupValue: themeProvider.currentFont,
                      onChanged: (value) {
                        themeProvider.switchFont(value as String);
                      },
                    ),
                    RadioListTile(
                      title: const Row(
                        children: [
                          Icon(Icons.text_fields, color: Colors.green),
                          SizedBox(width: 10),
                          Text('Poppins'),
                        ],
                      ),
                      value: 'Poppins',
                      groupValue: themeProvider.currentFont,
                      onChanged: (value) {
                        themeProvider.switchFont(value as String);
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Apply Changes Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Changes applied!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Apply Changes',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
