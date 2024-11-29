import 'package:flutter/material.dart';
import '../../../domain/entities/user.dart';
import '../../widgets/dashboard/profile_card.dart';
import '../../widgets/dashboard/bottom_nav_bar.dart';

class ReviewerDashboard extends StatefulWidget {
  final User user;

  const ReviewerDashboard({super.key, required this.user});

  @override
  State<ReviewerDashboard> createState() => _ReviewerDashboardState();
}

class _ReviewerDashboardState extends State<ReviewerDashboard> {
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
          // Aquí irá el contenido específico del dictaminador
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