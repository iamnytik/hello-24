import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: MySettings(),
      ),
    );
  }
}

class MySettings extends StatefulWidget {
  @override
  _MySettingsState createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  String selectedLanguage = 'English (US)';
  bool enableInputTools = true;
  bool rightToLeftEditingSupport = false;
  String defaultCountryCode = 'United States';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Language Settings:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Gmail display language:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 10),
              DropdownButton<String>(
                value: selectedLanguage,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLanguage = newValue!;
                  });
                },
                items: [
                  'English (US)',
                  'Afrikaans',
                  'Azərbaycanca',
                  'Bahasa Indonesia',
                  'Bahasa Melayu',
                  'Català',
                  // ... Add other language options here
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Enable input tools:',
            style: TextStyle(fontSize: 16),
          ),
          Checkbox(
            value: enableInputTools,
            onChanged: (bool? value) {
              setState(() {
                enableInputTools = value!;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            'Right-to-left editing support:',
            style: TextStyle(fontSize: 16),
          ),
          Row(
            children: [
              Radio(
                value: false,
                groupValue: rightToLeftEditingSupport,
                onChanged: (bool? value) {
                  setState(() {


                    
                    rightToLeftEditingSupport = value!;
                  });
                },
              ),
              Text('Off'),
              SizedBox(width: 20),
              Radio(
                value: true,
                groupValue: rightToLeftEditingSupport,
                onChanged: (bool? value) {
                  setState(() {
                    rightToLeftEditingSupport = value!;
                  });
                },
              ),
              Text('On'),
            ],
          ),
          SizedBox(height: 40),
          Text(
            'Phone Number Settings:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Table(
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Text(
                      'Default country code:',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  TableCell(
                    child: DropdownButton<String>(
                      value: defaultCountryCode,
                      onChanged: (String? newValue) {
                        setState(() {
                          defaultCountryCode = newValue!;
                        });
                      },
                      items: [
                        'United States',
                        'Afghanistan',
                        'Albania',
                        'Algeria',
                        'American Samoa',
                        'Andorra',
                        // ... Add other country options here
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
        ]));
  }
}


