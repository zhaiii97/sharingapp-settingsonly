import 'package:flutter/material.dart';
import 'package:flutter_file_sharing_app/app/components/rate_app_widget.dart';
import 'package:flutter_file_sharing_app/app/components/userpage_widget.dart';
import 'package:flutter_file_sharing_app/app/components/settings_widget.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
}

Widget buildHeader(BuildContext context) => Material(
      color: Colors.blue.shade800,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);

          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const UserPageProfile()));
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top,
            bottom: 24,
          ),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage('assets/icons/dinosaur.png'),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Mon Zhairel B. Lingasa',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                'zhairel.lingasa@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(25),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Favorite'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_outline),
            title: const Text('Workflow'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.update),
            title: const Text('Updates'),
            onTap: () {},
          ),
          const Divider(color: Colors.black),
          ListTile(
            leading: const Icon(Icons.account_tree_outlined),
            title: const Text('Plugins'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsScreen(),),);
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_rate_outlined),
            title: const Text('Rate'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => const RateApp(),
              );
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.settings_accessibility_outlined),
          //   title: const Text('Settings'),
          //   onTap: () => const PushNotification(),
          // ),
        ],
      ),
    );
