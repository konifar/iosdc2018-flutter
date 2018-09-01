import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iosdc2018flutter/ui/page_container.dart';
import 'package:meta/meta.dart';

const String icDefault = 'assets/ic_default_user.png';
const String imgHeader = 'assets/img_drawer_header.png';

final googleSignIn = GoogleSignIn();

class MyDrawer extends StatelessWidget {
  MyDrawer({
    @required this.items,
    this.onTap,
    this.currentIndex: 0,
  }) : super() {
    assert(items != null);
    assert(0 <= currentIndex && currentIndex < items.length);
  }

  final List<PageContainer> items;

  final int currentIndex;

  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final List<Widget> lists = [];

    for (int i = 0; i < items.length; i++) {
      PageContainer container = items[i];
      lists.add(
        ListTile(
            leading: container.icon,
            title: Text(container.title),
            selected: currentIndex == i,
            onTap: () {
              Navigator.of(context).pop(); // Hide drawer
              if (onTap != null) onTap(i);
            }),
      );
    }

    _ensureLoggedIn(googleSignIn);
    GoogleSignInAccount user = googleSignIn.currentUser;

    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              // user != null ? user.displayName : S.of(context).appName,
              user != null ? user.displayName : "iOSDC 2018",
            ),
            accountEmail: Text(
              // user != null ? user.email : S.of(context).appDescription,
              user != null ? user.email : "8月30日(木) ー 9月2日(日)",
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: user != null
                  ? NetworkImage(user.photoUrl)
                  : AssetImage(icDefault),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imgHeader,
                ),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.zero,
          ),
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 8.0),
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: lists,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<Null> _ensureLoggedIn(GoogleSignIn googleSignIn) async {
  GoogleSignInAccount user = googleSignIn.currentUser;
  if (user == null) {
    user = await googleSignIn.signInSilently();
  }
}
