import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example/config.dart';
import 'package:flutter/material.dart';
import 'package:google_drive_client/google_drive_client.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final GoogleDriveClient client = GoogleDriveClient(Dio(), Config.ACCESS_TOKEN);
  final String id = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            FlatButton(
              child: Text('list'),
              onPressed: () async {
                print(await client.list());
              },
            ),
            FlatButton(
              child: Text('create'),
              onPressed: () async {
                final File file = File((await getTemporaryDirectory()).path + '/testing2');
                file.writeAsStringSync("contents");
                var meta = GoogleDriveFileUploadMetaData(name: 'testing');
                print(await client.create(meta, file));
              },
            ),
            FlatButton(
              child: Text('delete'),
              onPressed: () async {
                await client.delete(id);
              },
            ),
            FlatButton(
              child: Text('download'),
              onPressed: () async {
                await client.download(id, 'testing');
              },
            ),
            FlatButton(
              child: Text('get'),
              onPressed: () async {
                print(await client.get(id));
              },
            ),
          ],
        ),
      ),
    );
  }
}
