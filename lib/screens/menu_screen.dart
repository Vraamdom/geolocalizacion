import 'package:flutter/material.dart';
import 'package:map_flutter/screens/map_screen.dart';
import 'package:map_flutter/screens/foto_screen.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fotos/Geolocalizacion',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView(
        children: [
           ListTile(
            title: const Text('Tomar Fotos'),
            subtitle: const Text('Tomar fotos con el celular'),
            leading: const Icon(Icons.camera_alt_outlined, color: Color.fromARGB(255, 0, 0, 0)),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (context) => const RegistrarProyecto() );
              Navigator.push(context, route);
            }
          ),
          ListTile(
            title: const Text('Localización Actual'),
            subtitle: const Text('Encuentra tu ubicación actual en el mapa'),
            leading: const Icon(Icons.map_outlined, color: Color.fromARGB(255, 0, 0, 0)),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black),
            onTap: (){
              final route = MaterialPageRoute(
                builder: (context) => const MapScreen());
              Navigator.push(context, route);
            },
          ),
           
        ],
      ),
    
    );
  }
}
