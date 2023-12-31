import 'package:art_directory/screens/add_post_screen.dart';
import 'package:art_directory/screens/feed_screen.dart';
import 'package:flutter/material.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('search'),
  AddPostScreen(),
  Text('favorite'),
  Text('person'),
];
