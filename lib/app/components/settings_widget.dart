import 'package:flutter/material.dart';
import 'package:flutter_file_sharing_app/app/components/theme_widget.dart';
import 'package:flutter_file_sharing_app/app/dummyData/settings_tiles.dart';
import 'package:flutter_file_sharing_app/app/components/feedback_widget.dart';
import 'package:flutter_file_sharing_app/app/dummyData/theme_settings.dart';
import 'package:flutter_file_sharing_app/main.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              SettingsTile(
                color: Colors.blue,
                icon: Icons.people_alt_outlined,
                title: "Account",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.green,
                icon: Icons.ballot_outlined,
                title: "Edit Information",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.purple,
                icon: Icons.language_outlined,
                title: "Language",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.blueAccent,
                icon: Icons.feedback_outlined,
                title: "Feedback",
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => const FeedbackDialog());
                },
              ),
              const SizedBox(
                height: 40,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}