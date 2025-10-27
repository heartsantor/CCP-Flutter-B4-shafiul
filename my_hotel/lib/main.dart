import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme/app_theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BaliBookingApp());
}

class BaliBookingApp extends StatelessWidget {
  const BaliBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bali Booking UI',
      theme: AppTheme.light(),
      home: const HomeScreen(),
    );
  }
}
