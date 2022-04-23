import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String id = "/home_page";
  final _person =[
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/13.jpg',
    'assets/images/14.jpg',
    'assets/images/15.jpg',
    'assets/images/16.jpg',
    'assets/images/17.jpg',
    'assets/images/18.jpg',

  ];

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                backgroundColor: CupertinoColors.white,
                title: const Center(
                  child: Text('photogram',
                  style: TextStyle(color: Colors.black),),
                ),
               pinned: true,
                expandedHeight: 150.0,
                forceElevated: innerBoxIsScrolled,
              ),
            )
          ];
        }, body: Builder(builder: (BuildContext context) {
          return GridView.builder(gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,

          ),
            itemCount: _person.length ,
            itemBuilder:(context,index)=>Container(
            margin: const EdgeInsets.all(5),
            padding:const  EdgeInsets.all(5),
            child: Image.asset(_person[index],
            fit: BoxFit.cover
            ),
          ));

        },
        )),


    );
  }
}

