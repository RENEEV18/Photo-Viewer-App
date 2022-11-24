import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/core/const.dart';
import 'package:gallery_app/view/widgets/grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const CupertinoSearchTextField(
            suffixIcon: kSearchIcon,
            placeholder: 'Search Keywords',
            suffixMode: OverlayVisibilityMode.always,
            prefixIcon: SizedBox(
              width: 10,
            ),
          ),
          bottom: const TabBar(
              isScrollable: true,
              padding: EdgeInsets.only(left: 20),
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Mountains',
                ),
                Tab(
                  text: 'Birds',
                ),
                Tab(
                  text: 'Animals',
                ),
                Tab(
                  text: 'Food',
                ),
              ]),
        ),
        body: const TabBarView(children: [
          GridviewCustom(
            color: Colors.black,
          ),
          GridviewCustom(
            color: Colors.yellow,
          ),
          GridviewCustom(
            color: Colors.red,
          ),
          GridviewCustom(
            color: Colors.blue,
          ),
          GridviewCustom(
            color: Colors.green,
          ),
        ]),
      ),
    );
  }
}
