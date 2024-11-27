import 'package:flutter/material.dart';
import '../../../domain/entities/user.dart';

class AdvisorDashboard extends StatelessWidget {
  final User user;

  const AdvisorDashboard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel de Asesor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, ${user.nombre}!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para ver estudiantes asignados
              },
              child: Text('Ver Estudiantes Asignados'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para evaluar avances
              },
              child: Text('Evaluar Avances'),
            ),
          ],
        ),
      ),
    );
  }
}