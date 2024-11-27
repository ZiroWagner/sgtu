import 'package:flutter/material.dart';
import '../../../domain/entities/user.dart';

class StudentDashboard extends StatelessWidget {
  final User user;

  const StudentDashboard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel de Estudiante'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, ${user.nombre}!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para ver progreso de tesis
              },
              child: Text('Ver Progreso de Tesis'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para enviar solicitudes
              },
              child: Text('Enviar Solicitud'),
            ),
          ],
        ),
      ),
    );
  }
}