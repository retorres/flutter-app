import 'package:flutter/material.dart';
import 'package:myapp/models/IconModel.dart';
import 'package:myapp/pages/home/CustomDrawer.dart';
import 'package:myapp/pages/home/PageViewIcons.dart';
import 'package:myapp/shared/LayoutTypes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LayoutGroup _layoutGroup = LayoutGroup.nonScrollable;

  void _onLayoutGroupToggle() {
    setState(() {
      _layoutGroup = _layoutGroup == LayoutGroup.nonScrollable
          ? LayoutGroup.scrollable
          : LayoutGroup.nonScrollable;
    });
  }

  @override
  Widget build(BuildContext context) {
    final icons = IconModel.get();
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Xpto'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_pin),
            onPressed: () {},
          ),
        ],
      ),
      body: PageViewIcons(
        layoutGroup: _layoutGroup,
        onLayoutToggle: _onLayoutGroupToggle,
        icons: icons,
      ),
    );
  }
}
