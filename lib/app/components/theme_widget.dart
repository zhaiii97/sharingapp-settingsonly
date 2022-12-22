import 'package:flutter/material.dart';
import 'package:flutter_file_sharing_app/app/dummyData/theme_settings.dart';
import 'package:provider/provider.dart';
class ThemeMode extends StatelessWidget {
  const ThemeMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Settings'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Theme'),
            ),
          ),
          Consumer<ThemeSettings>(
            builder: (context, value, child) {
              return SwitchListTile(
                  title: Text('Dark Theme'),
                  value: value.darkTheme,
                  onChanged: (newValue) {
                    value.toggleTheme();

                  });
            },
          )
        ],
      ),
    );
  }
}
