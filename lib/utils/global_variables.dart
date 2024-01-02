import 'package:art_directory/screens/add_post_screen.dart';
import 'package:art_directory/screens/feed_screen.dart';
import 'package:art_directory/screens/profile_screen.dart';
import 'package:art_directory/screens/search_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('favorite'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
