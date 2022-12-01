import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;

  Content({
    this.imageUrl = "", 
    this.name = "", 
    this.description = ""
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.red),
      child: Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(description, textAlign: TextAlign.justify,),
            leading: Image(
            image: NetworkImage(imageUrl),
            height: 180,
            // width: 150,
            alignment: Alignment.center,
          ),
          ),
        ],
      ),
    ),
    );
  }
}
