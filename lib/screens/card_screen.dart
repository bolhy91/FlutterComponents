import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/9/96/Ushuaia_paisaje.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/b/bb/Gran_Sabana_paisaje_1.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://www.dzoom.org.es/wp-content/uploads/2019/06/fotografia-paisaje-consejos-13-734x489.jpg',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
