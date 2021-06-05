import 'package:flutter/material.dart';

class DefaultDrawer extends StatefulWidget {
  const DefaultDrawer({Key? key}) : super(key: key);

  @override
  _DefaultDrawerState createState() => _DefaultDrawerState();
}

class _DefaultDrawerState extends State<DefaultDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323,
      color: Colors.white,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset('assets/images/user.png'),
              accountName: Text('Usuário',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Poppins-Bold',
                      fontWeight: FontWeight.w700)),
              accountEmail: null),
          ListTile(
            leading: Icon(
              Icons.accessibility,
              color: Color(0xffB80078),
            ),
            title: Text('Calculadora de IMC',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                )),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/ImcCalculator');
            },
          ),
          Container(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.playlist_add_check,
              color: Color(0xffB80078),
            ),
            title: Text('Lista de Tarefas',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                )),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/Tarefas');
            },
          ),
          Container(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.monetization_on_sharp,
              color: Color(0xffB80078),
            ),
            title: Text('Conversor de Moedas',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                )),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/Conversor');
            },
          )
        ],
      ),
    );
  }
}
