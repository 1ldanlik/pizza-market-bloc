import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Market'),
        actions: [
          IconButton(onPressed: () {

          }, icon: const ImageIcon(AssetImage('assets/basket_icon.png'))),
          IconButton(onPressed: () {

          }, icon: const ImageIcon(AssetImage('assets/person_icon.png')))
        ],
      ),
      // body: ListView.builder(
      //     itemBuilder: (context, index) {
      //       return
      //     }
      // ),
    );
  }
}
