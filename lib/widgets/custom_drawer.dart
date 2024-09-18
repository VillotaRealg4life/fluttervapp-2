import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menú de Navegación',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              image: DecorationImage(
                image: const NetworkImage('https://www.primefitnessusa.com/cdn/shop/files/ro-t8-handles-banner_800x342_crop_right.jpg?v=1626980099'), // Imagen desde la web
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.deepPurple.withOpacity(0.6),
                  BlendMode.dstATop,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.deepPurple),
            title: Text('Página Principal'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.fitness_center, color: Colors.deepPurple),
            title: Text('Planes de Entrenamiento'),
            onTap: () {
              Navigator.pushNamed(context, '/plans');
            },
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.deepPurple),
            title: Text('Perfil'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
    );
  }
}
