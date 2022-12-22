import 'package:flutter/material.dart';
import 'package:flutter_file_sharing_app/API_services.dart';
import 'package:flutter_file_sharing_app/app/dummyData/Usermodel.dart';
import 'package:flutter_file_sharing_app/app/dummyData/dummy_data.dart';

import '../../components/search_API_widget.dart';

class SearchHistory extends StatefulWidget {
  const SearchHistory({Key? key}) : super(key: key);

  @override
  State<SearchHistory> createState() => _SearchHistoryState();
}

class _SearchHistoryState extends State<SearchHistory> {
  FetchUser _senderList = FetchUser();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Sender/Receiver History List'),
          actions: [
            IconButton(onPressed: () {
              showSearch(context: context, delegate: searchSenderList());
            }, icon: Icon(Icons.search)),
          ],
        ),
        body: Container(
          child: FutureBuilder<List<SenderList>>(
              future: _senderList.getUserList(),
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
                              Image.asset('assets/icons/leo.png',
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
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
        ),
      ),
    );
  }
}
