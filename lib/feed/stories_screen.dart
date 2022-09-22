// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorieScreen extends StatelessWidget {
  const StorieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
			scrollDirection: Axis.horizontal,
			itemBuilder: (context, int i) {
				if(i == 0) {
					return Padding(
						padding: const EdgeInsets.symmetric(horizontal: 8),
						child: Column(
							children: [
								Stack(
									alignment: Alignment.bottomRight,
									children: [
										Container(
											width: 65,
											height: 65,
											decoration: BoxDecoration(
												borderRadius: BorderRadius.circular(100),
												color: Colors.red
											),
											child: ClipRRect(
												borderRadius: BorderRadius.circular(100),
												child: Image.network(
													"https://picsum.photos/250?image=8",
												),
											),
										),
										Container(
											height: 25,
											width: 25,
											decoration: BoxDecoration(
												borderRadius: BorderRadius.circular(100),
												color: Colors.white,
											),
										),
										Icon(CupertinoIcons.add_circled_solid, color: Colors.blue,)
									],
								),
								SizedBox(height: 5),
								Center(child: Text('Romain'))
							],
						),
					); 
				}
				return Padding(
				  padding: const EdgeInsets.symmetric(horizontal: 8),
				  child: Column(
				    children: [
				      Container(
				      	width: 65,
				      	height: 65,
				      	decoration: BoxDecoration(
				      		borderRadius: BorderRadius.circular(100),
				      		color: Colors.amber
				      	),
								child: ClipRRect(
									borderRadius: BorderRadius.circular(100),
									child: Image.network(
										"https://picsum.photos/250?image=${9 + i}" ,
									),
								),
				      ),
							SizedBox(height: 5),
							Center(child: Text('John Doe'))
				    ],
				  ),
				);
			}
		);
  }
}