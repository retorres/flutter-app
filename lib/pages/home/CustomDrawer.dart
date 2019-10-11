import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  Widget _menuDivider(String text) {
    return SizedBox(
      height: 45,
      child: Container(
        alignment: Alignment.centerLeft,
        color: Colors.grey[200],
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Menu',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _menuItem(String text, IconData icon, Function onTap) {
    return ListTile(
      dense: true,
      leading: Icon(icon),
      title: Text(text),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _menuDivider('Menu'),
            _menuItem('Início', Icons.home, () {}),
            _menuItem('Favoritos', Icons.star_border, () {}),
            _menuItem('Consulta Processual', Icons.open_in_new, () {}),
            _menuItem('Leia aqui seu código', Icons.chrome_reader_mode, () {}),
            _menuDivider('Pje'),
            _menuItem('Pje - Mandados', Icons.filter_1, () {}),
            _menuItem('Pje - Pauta de Julgamento/Audiência', Icons.flip_to_back,
                () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuDivider('Pje'),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
            _menuItem('Pje - Monitor', Icons.text_rotation_angledown, () {}),
          ],
        ),
      ),
    );
  }
}
