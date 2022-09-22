// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_romain_girou/feed/post_screen.dart';
import 'package:insta_clone_romain_girou/feed/stories_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.white,
			appBar: AppBar(
				elevation: 0,
				title: Container(
						width: 200,
						height: kToolbarHeight,
				    child: Image.asset(
						"assets/insta.png",
						alignment: Alignment.centerLeft,
						width: 200,
				  ),
				),
				backgroundColor: Colors.white,
				actions: [
					IconButton(
						onPressed: () {},
						icon: Icon(
							CupertinoIcons.add_circled,
							color: Colors.black,
						),
					),
					IconButton(
						onPressed: () {},
						icon: Icon(
							CupertinoIcons.heart,
							color: Colors.black,
						),
					),
					IconButton(
						onPressed: () {},
						icon: Icon(
							CupertinoIcons.paperplane,
							color: Colors.black,
						),
					)
				],
			),
			body: SingleChildScrollView(
				child: Column(
					mainAxisSize: MainAxisSize.min,
					children: [
						Padding(
						  padding: const EdgeInsets.only(left: 8.0),
						  child: Container(
						  	width: double.infinity,
						  	height: 90,
						  	child: StorieScreen()
						  ),
						),
						Divider(),
						Flexible(
							fit: FlexFit.loose,
							child: PostScreen()
						),
					]
				),
			),
		);
  }
}