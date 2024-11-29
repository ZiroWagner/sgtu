import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF050522),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.transparent,
        selectedItemColor: Color(0xFFFC2B45),
        unselectedItemColor: Colors.white.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showSelectedLabels: true, // Mostrar etiquetas cuando el ícono esté seleccionado
        showUnselectedLabels: false, // Ocultar etiquetas cuando el ícono no está seleccionado
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/icon-home-outlined.svg'),
            activeIcon: SvgPicture.asset('assets/images/icon-home-fill.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon-calendar-outlined.png'),
            activeIcon: Image.asset('assets/images/icon-calendar-fill.png'),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon-message-outlined.png'),
            activeIcon: Image.asset('assets/images/icon-message-fill.png'),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/icon-profile-outlined.svg'),
            activeIcon: Image.asset('assets/images/icon-profile-fill.png'),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}