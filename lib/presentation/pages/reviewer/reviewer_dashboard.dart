import 'package:flutter/material.dart';
import '../../../domain/entities/user.dart';

class ReviewerDashboard extends StatelessWidget {
  final User user;

  const ReviewerDashboard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel de Dictaminador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, ${user.nombre}!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para ver tesis asignadas
              },
              child: Text('Ver Tesis Asignadas'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para evaluar tesis
              },
              child: Text('Evaluar Tesis'),
            ),
          ],
        ),
      ),
    );
  }
}