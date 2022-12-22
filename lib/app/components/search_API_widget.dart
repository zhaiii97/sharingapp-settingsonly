import 'package:flutter/material.dart';
import '../../API_services.dart';

import '../dummyData/Usermodel.dart';

class searchSenderList extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new_outlined),
    );
  }

  FetchUser _senderList = FetchUser();

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: FutureBuilder<List<SenderList>>(
          future: _senderList.getUserList(query: query),
          builder: (context, snapshot) {
            var data = snapshot.data;
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: data?.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/icons/leo.png',
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${data?[index].name}',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text('Nickname: ' '${data?[index].username}'),
                              Text('Email: ''${data?[index].email}'),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                });
          }),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search Sender/Receiver History'),
    );
  }
}
