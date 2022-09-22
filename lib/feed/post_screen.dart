// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
			itemCount: 4,
			shrinkWrap: true,
			physics: NeverScrollableScrollPhysics(),
			itemBuilder: (context, int i) {
				return Column(
					crossAxisAlignment: CrossAxisAlignment.start,
				  children: [
							Padding(
							  padding: const EdgeInsets.symmetric(horizontal: 15.0),
							  child: Row(
							  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
							    children: [
							      Row(
							      	children: [
							      		Container(
							      			width: 40,
							      			height: 40,
							      			decoration: BoxDecoration(
							      				borderRadius: BorderRadius.circular(100),
							      				color: Colors.blue
							      			),
													child: ClipRRect(
														borderRadius: BorderRadius.circular(100),
														child: Image.network(
															"https://picsum.photos/250?image=${8 + i}",
														),
													),
							      		),
							      		SizedBox(width: 8),
							      		Column(
							      			crossAxisAlignment: CrossAxisAlignment.start,
							      			children: [
							      				Text(
							      					"John Doe",
							      					style: TextStyle(
							      						color: Colors.black,
							      						fontWeight: FontWeight.w500
							      					),
							      				),
							      				Text(
							      					"Paris, France",
							      					style: TextStyle(
							      						color: Colors.grey.shade600,
							      						fontWeight: FontWeight.w300
							      					),
							      				),
							      			],
							      		),
							      	],
							      ),
							  		IconButton(
							  			onPressed: () {},
							  			icon: Icon(
							  				CupertinoIcons.ellipsis_vertical,
							  			)
							  		)
							    ],
							  ),
							),
				    Container(
				    	width: MediaQuery.of(context).size.width,
				    	height: MediaQuery.of(context).size.width,
				    	color: Colors.red,
							child: Image.network(
								"https://picsum.photos/250?image=${20 + i}",
								fit: BoxFit.cover,
							),
				    ),
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
						  children: [
						    Row(
						    	children: [
						    		IconButton(
						    			onPressed: () {},
						    			icon: Icon(CupertinoIcons.heart)
						    		),
						    		IconButton(
						    			onPressed: () {},
						    			icon: Icon(CupertinoIcons.chat_bubble)
						    		),
						    		IconButton(
						    			onPressed: () {},
						    			icon: Icon(CupertinoIcons.paperplane)
						    		)
						    	],
						    ),
								IconButton(
									onPressed: () {},
									icon: Icon(CupertinoIcons.square_arrow_down)
								)
						  ],
						),
						Padding(
						  padding: EdgeInsets.symmetric(horizontal: 15.0),
						  child: Text(
						  	'5 likes',
								style: TextStyle(
									fontWeight: FontWeight.w600
								),
						  ),
						),
						Padding(
						  padding: EdgeInsets.symmetric(horizontal: 15.0),
						  child: RichText(
								text: TextSpan(
									text: "John Doe ",
									style: TextStyle(
										color: Colors.black,
										fontWeight: FontWeight.w600
									),
         // ignore: prefer_const_literals_to_create_immutables
									children: [
										TextSpan(
											text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus semper imperdiet mollis.',
											style: TextStyle(
												fontWeight: FontWeight.normal
											),
										)
									],
								),
							),
						),
						SizedBox(height: 5),
						Padding(
						  padding: const EdgeInsets.symmetric(horizontal: 15.0),
						  child: Row(
								crossAxisAlignment: CrossAxisAlignment.center,
						  	children: [
						  		Container(
						  			width: 30,
						  			height: 30,
						  			decoration: BoxDecoration(
						  				color: Colors.red,
						  				borderRadius: BorderRadius.circular(100),
						  			),
										child: ClipRRect(
											borderRadius: BorderRadius.circular(100),
											child: Image.network(
												"https://picsum.photos/250?image=${8 + i}",
											),
										),
						  		),
									SizedBox(width: 8),
									Expanded(
										child: TextField(
											decoration: InputDecoration(
												border: InputBorder.none,
												hintText: 'Add a comment...',
												hintStyle: TextStyle(
													fontSize: 14
												),
											),
										)
									),
									Row(
										crossAxisAlignment: CrossAxisAlignment.center,
										children: [
											Text("❤️",),
											SizedBox(width: 5,),
											Text("🙌"),
											SizedBox(width: 5,),
											Icon(
												CupertinoIcons.add_circled,
												color: Colors.grey.shade400,
												size: 14,
											)
										],
									),
						  	],
						  ),
						),
						Padding(
						  padding: const EdgeInsets.symmetric(horizontal: 15.0),
						  child: Text(
								"40 minutes ago",
								style: TextStyle(
									fontSize: 10,
									color: Colors.grey.shade500
								),
							),
						),
						SizedBox(height: 15,),
				  ],
				);
			},
		);
  }
}