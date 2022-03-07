import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok/controllers/auth_controller.dart';

import 'views/screens/add_video_screen.dart';

const pages = [
  Text('Home Screeen'),
  Text('Search Screeen'),
  AddVideoScreen(),
  Text('Message Screeen'),
  Text('Profile Screeen'),
];

//COLORS

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//CONTROLLER

var authController = AuthController.instance;
