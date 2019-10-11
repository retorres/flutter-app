import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/models/IconModel.dart';
import 'package:myapp/shared/LayoutTypes.dart';

class PageViewIcons extends StatelessWidget implements HasLayoutGroup {
  PageViewIcons({Key key, this.layoutGroup, this.onLayoutToggle, this.icons})
      : super(key: key);

  final List<IconModel> icons;
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;

  Widget _buildPageView() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: PageView(
        children: [
          _buildPage(index: 1, color: Colors.green),
          _buildPage(index: 2, color: Colors.blue),
        ],
      ),
    );
  }

  Widget _buildPage({int index, Color color}) {
    return Container(
      alignment: AlignmentDirectional.center,
      color: color,
      child: Text(
        '$index',
        style: TextStyle(fontSize: 132.0, color: Colors.white),
      ),
    );
  }

  Widget _buildPageGrid() {
    final maxIconsPerPage = 10;
    final widgetsCount = (icons.length / maxIconsPerPage).ceil();

    return PageView.builder(
        itemCount: widgetsCount,
        itemBuilder: (ctx, int index) {
          print(
              'Len: ${icons.length}, take $maxIconsPerPage, skip=> $index * $maxIconsPerPage = ${index * maxIconsPerPage}');

          var iconList = icons
              .take(maxIconsPerPage)
              .skip(index * maxIconsPerPage)
              .toList();

          print('page $index - ${iconList.length} icons');

          return _buildGrid(maxIconsPerPage, iconList);
        });
  }

  List<Widget> BuildPagesGrid(List<IconModel> icons) {
    final maxIconsPerPage = 10;
    var widgets = List<Widget>();

    print(icons == null);

    var widgetsCount = (icons.length / maxIconsPerPage).ceil();

    for (var i = 0; i < widgetsCount; i++) {
      var iconList =
          icons.take(maxIconsPerPage).skip(i * maxIconsPerPage).toList();

      widgets.add(_buildGrid(maxIconsPerPage, iconList));
    }
  }

  Widget _buildGrid(int maxIcons, List<IconModel> icons) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Container(
        // color: Colors.red,
        alignment: AlignmentDirectional.center,
        child: _buildIconsGrid(maxIcons, icons),
      ),
    );
  }

  Widget _buildIconsGrid(int maxIcons, List<IconModel> icons) {
    return GridView.count(
      mainAxisSpacing: 3,
      crossAxisCount: 3,
      children: icons
          .map(
            (f) => FlatButton(
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 48,
                    height: 60,
                    // child: Image.asset('assets/icons/${f.iconPath}'),
                    child: new SvgPicture.asset('assets/icons/${f.iconPath}'),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      f.texto,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildPageGrid();
  }
}
