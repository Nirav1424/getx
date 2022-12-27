// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaveCard extends StatelessWidget {
  const SaveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saved Cards'),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset('assets/card.jpg'),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  // controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Card No',
                  ),
                  onChanged: (text) {},
                ),
                SizedBox(height:   18),
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        // controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Expity Date',
                        ),
                        onChanged: (text) {},
                      ),
                    ),
                    SizedBox(width:   18),
                    Flexible(
                      child: TextField(
                        // controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Cvv',
                        ),
                        onChanged: (text) {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height:   18),
                TextField(
                  // controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Card Holder',
                  ),
                  onChanged: (text) {},
                ),
                SizedBox(height: 40,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 50)
                  ),
                  onPressed: (){}, child: Text('Verify'))
              ],
            ),
          
          ),
        ])));
  }
}
