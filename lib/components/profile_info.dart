
import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      // Spacer를 여러개 사이에 두는거랑 같은 효과!
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }

  Widget _buildInfo(String count, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(count, style: const TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 2,),
        Text(title, style: const TextStyle(fontSize:15 ),)
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      color: Colors.blue,
      width: 2,
      height: 60,
    );
  }
}