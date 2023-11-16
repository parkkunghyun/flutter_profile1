
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// tabbar가 작동하면 그림이 다시 그려진다!
// Stateful 상태가 있는 위젯 => 상태에 따라 위젯이 변경된다.

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  // ProfileTab그림이 그려질때ㅑ 단 한번만 실행되는 함수
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // new는 굳이 안써도 되나봄
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
          Tab(icon: Icon(Icons.directions_car),),
          Tab(icon: Icon(Icons.directions_transit)),

        ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
        children: [
          Container(color: Colors.green,),
          Container(color: Colors.red,),

    ]);
  }
}