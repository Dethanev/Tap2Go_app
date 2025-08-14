import 'package:flutter/material.dart';
import 'story_data.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  List<Widget> _initGrideViewtData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 5)),
        child: Column(
          children: [
            Image.network(value["imageUrl"]),
            SizedBox(height: 20),
            Text(
              value["title"],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 1,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: 0.9,
      children: _initGrideViewtData(),
    );
  }
}