// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_clone_romain_girou/feed/feed_screen.dart';
import 'package:insta_clone_romain_girou/profile_screen.dart';
import 'package:insta_clone_romain_girou/reel_screen.dart';
import 'package:insta_clone_romain_girou/search_screen.dart';
import 'package:insta_clone_romain_girou/shop_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

		PersistentTabController _controller;
		_controller = PersistentTabController(initialIndex: 0);
		
		List<Widget> _buildScreens() {
        return [
          FeedScreen(),
					Searchcreen(),
					ReelScreen(),
					ShopScreen(),
					ProfileScreen()
        ];
    }

		List<PersistentBottomNavBarItem> _navBarsItems() {
			return [
					PersistentBottomNavBarItem(
							icon: Icon(CupertinoIcons.home),
							activeColorPrimary: CupertinoColors.black,
							inactiveColorPrimary: CupertinoColors.systemGrey,
					),
					PersistentBottomNavBarItem(
							icon: Icon(CupertinoIcons.search),
							activeColorPrimary: CupertinoColors.black,
							inactiveColorPrimary: CupertinoColors.systemGrey,
					),
					PersistentBottomNavBarItem(
							icon: Icon(CupertinoIcons.play_rectangle),
							activeColorPrimary: CupertinoColors.black,
							inactiveColorPrimary: CupertinoColors.systemGrey,
					),
					PersistentBottomNavBarItem(
							icon: Icon(CupertinoIcons.bag),
							activeColorPrimary: CupertinoColors.black,
							inactiveColorPrimary: CupertinoColors.systemGrey,
					),
					PersistentBottomNavBarItem(
							icon: Icon(CupertinoIcons.person),
							activeColorPrimary: CupertinoColors.black,
							inactiveColorPrimary: CupertinoColors.systemGrey,
					),
			];
    }

    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
					border: Border(top: BorderSide(color: Colors.grey.shade500, width: 0))
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}


