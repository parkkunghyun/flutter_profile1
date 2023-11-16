
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SizedBox(width: 20,),
        _buildHeaderAvatar(),
        SizedBox(width: 20,),
        _buildHeaderProfile(),
      ],
    );
  }

  // ImageProvider조사하기
  // NetworkImage()
  Widget _buildHeaderAvatar() {
    return const SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
        //child: Image.asset("assets/avatar.png"), 이렇게 적으면 꽉차지는 않음
      ),
    );
  }

  // MainAxisAlignment는 주축을 따라가고
  // CrossAxisAlignment는 서브축을 따라감
  Widget _buildHeaderProfile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("GetinThere",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        Text("프로그래머/작가/강사",
          style: TextStyle(fontSize: 20),
        ),
        Text("데어프로그래밍", style: TextStyle(
          fontSize: 15
        ),
        ),
      ],
    );
  }

}