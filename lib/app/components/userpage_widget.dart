import 'package:flutter/material.dart';

class UserPageProfile extends StatelessWidget {
  const UserPageProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 38,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 35,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_rounded,
                      size: 35,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 80,
              top: 200,
            ),
            width: 300,
            height: 200,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 18,
              ),
            ]),
            child: Column(
              children: [
                Text(
                  "Mon Zhairel Lingasa",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Philippines",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400,
                      fontSize: 14),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Message"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Following"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 140, left: 180),
            padding: EdgeInsets.only(top: 78),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 430, left: 30, right: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Posts",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 20, color: Colors.cyan),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 500, left: 30, right: 30),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
                itemBuilder: (context, i ) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/mainuser.jpg'),
                        fit: BoxFit.fill
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
