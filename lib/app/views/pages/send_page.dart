import 'package:flutter/material.dart';
import 'package:flutter_file_sharing_app/app/constants.dart';
import '../../components/folder_widget.dart';
import '../../components/recent_files_widget.dart';
import '../../components/sent_again_widget.dart';
import 'package:flutter_file_sharing_app/app/components/navigation_drawer_widget.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 45,
            width: 140,
            margin: const EdgeInsets.only(right: kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 32,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.purple[400],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Mon',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/icons/dinosaur.png',
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding * 2),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: kDefaultPadding),
                child: Text(
                  'Folders',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
             SizedBox(height: kDefaultPadding * 2),
             FolderWidget(),
             SizedBox(height: kDefaultPadding * 2),
             Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: kDefaultPadding),
                child: Text(
                  'Recent Files',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
              SizedBox(height: kDefaultPadding),
             RecentFilesWidget(),
             SizedBox(height: kDefaultPadding * 2),
             Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: kDefaultPadding),
                child: Text(
                  'Send Again',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
             SizedBox(height: kDefaultPadding),
             SendAgainWidget(),
             SizedBox(height: kDefaultPadding * 7),
          ],
        ),
      ),
      drawer: NavigationDrawer(),
    );
  }
}