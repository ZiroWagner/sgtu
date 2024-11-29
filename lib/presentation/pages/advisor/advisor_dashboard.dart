import 'package:flutter/material.dart';
import '../../../domain/entities/user.dart';
import '../../widgets/dashboard/profile_card.dart';
import '../../widgets/dashboard/bottom_nav_bar.dart';

class AdvisorDashboard extends StatefulWidget {
  final User user;

  const AdvisorDashboard({super.key, required this.user});

  @override
  State<AdvisorDashboard> createState() => _AdvisorDashboardState();
}

class _AdvisorDashboardState extends State<AdvisorDashboard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050522),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.white,
            onPressed: () {
              // Implementar notificaciones
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ProfileCard(user: widget.user),
          // Aquí irá el contenido específico del asesor
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}