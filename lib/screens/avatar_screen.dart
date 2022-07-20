import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('BS'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://ichef.bbci.co.uk/news/640/cpsprodpb/A85B/production/_104299034_tv050571340.jpg'),
        ),
      ),
    );
  }
}
