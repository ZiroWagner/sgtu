import 'package:flutter/material.dart';
import '../../../domain/entities/user.dart';

class AdminDashboard extends StatelessWidget {
  final User user;

  const AdminDashboard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel de Administrador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, ${user.nombre}!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para gestionar usuarios
              },
              child: Text('Gestionar Usuarios'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para aprobar solicitudes
              },
              child: Text('Aprobar Solicitudes'),
            ),
          ],
        ),
      ),
    );
  }
}