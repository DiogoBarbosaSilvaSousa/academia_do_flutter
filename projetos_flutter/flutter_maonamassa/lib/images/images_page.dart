// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 266,
              height: 200,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lighthouse.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Paisagem',
                  style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.6),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 266,
              height: 300,
              child: Image(
                image: NetworkImage(
                    'https://storage.googleapis.com/cms-storage-bucket/3461c6a5b33c339001c5.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
