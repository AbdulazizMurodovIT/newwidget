import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter mapp'),
      ),
      body: homepage(),
    ),
  ));
}

class homepage extends StatelessWidget{
const homepage({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.yellow,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 101,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          );
        }
    );
  }
}

