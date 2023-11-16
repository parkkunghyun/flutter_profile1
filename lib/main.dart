import 'package:flutter/material.dart';
import 'package:flutter_profile1/components/profile_buttons.dart';
import 'package:flutter_profile1/components/profile_drawer.dart';
import 'package:flutter_profile1/components/profile_header.dart';
import 'package:flutter_profile1/components/profile_info.dart';
import 'package:flutter_profile1/components/profile_tab.dart';
import 'package:flutter_profile1/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      home: ProfilePage(

      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(), // 왼에 놔두면 end Drawer 아니면 그냥 drawer
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 15,),
          ProfileHeader(),
          SizedBox(height: 15,),
          ProfileCountInfo(),
          SizedBox(height: 15,),
          ProfileButtons(),
          SizedBox(height: 15,),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Profile",
        style: TextStyle(color: Colors.black),
        //textAlign: TextAlign.center,
        //텍스트 너비에서 중앙으로 -> 텍스트는 기본적으로 자기 컨튼츠 만큼만 너비 가짐
      ),
     centerTitle: true, // 앱바에서 중앙으로 감
    );
  }
}
