import 'package:flutter/material.dart';
import 'package:soul_meter/user/user.dart';

///      Dev Mode
bool isLocal = true;

/// canlıya geçince değiştir
const primarySwatch = Colors.blue;
ButtonStyle defaultButtonDecoration =
    ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(130, 20));
String situation = "Login";
String createSituation = "Create Account";
String loginButtonText = "Log in";
String createButtonText = "Create Account";
Color loginBoxColor = Colors.white;
TextStyle situationTextStyle = TextStyle(fontSize: 36);
TextStyle clickableText = TextStyle(color: Colors.blue);
String emailValidRegex = "[\w-]+@([\w-]+\.)+[\w-]+";
var mobileLoginTabButtonStyleActive = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[100]),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    )));
var mobileLoginTabButtonStylePassive = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    )));
var loginBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
    color: loginBoxColor,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 10,
        offset: Offset(0, 5),
      )
    ]);

ButtonStyle apiButtonDecoration = ElevatedButton.styleFrom(
  // context gerek olduğundan kullanılmıyo
  primary: Colors.green,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  minimumSize: Size(200, 40),
);
PopupMenuItem appBarMenuItem = PopupMenuItem(
    child: Row(children: [
  Icon(Icons.account_balance_outlined),
  Text("settings"),
]));

var isSpotifySelected = ValueNotifier(false);
var isNetflixSelected = ValueNotifier(false);
var isSteamSelected = ValueNotifier(false);
List<User> dummyUserList = [
  User("1", "mail1", "name1", "username1"),
  User("2", "mail1", "name1", "username1"),
  User("3", "mail1", "name1", "username1"),
  User("4", "mail1", "name1", "username1"),
  User("5", "mail1", "name1", "username1"),
  User("6", "mail1", "name1", "username1"),
  User("7", "mail1", "name1", "username1"),
  User("8", "mail1", "name1", "username1"),
  User("9", "mail1", "name1", "username1"),
];

String spAuthCode = "";
String userEmail = "";
String userName = "";
String serverUrl = "127.0.0.1:8080";

//-----------Spotiffy---------
String spClientID = "f1c7433d34324ec5bd7edc2885ea0e5c";
String spResponseType = "code";
String spRedirectUrl = "http://127.0.0.1:8080/spauth";
String spScope =
    "user-read-private%20user-read-email%20user-top-read%20user-read-playback-state%user-library-read";

//-----------------------------------
String spAuthUrl = "https://accounts.spotify.com/authorize";
