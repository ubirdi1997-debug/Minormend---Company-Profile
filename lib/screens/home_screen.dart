import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Company Logo/Icon
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFF1565C0).withAlpha(25),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.construction,
              size: 80,
              color: Color(0xFF1565C0),
            ),
          ),
          const SizedBox(height: 24),
          // Company Name
          const Text(
            'MINORMEND CONSTRUCTION',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1565C0),
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            'PRIVATE LIMITED',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF546E7A),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          // Description Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Icon(Icons.business, size: 40, color: Colors.grey[600]),
                  const SizedBox(height: 16),
                  const Text(
                    'MINORMEND CONSTRUCTION PRIVATE LIMITED is a construction and infrastructure services company based in India.',
                    style: TextStyle(fontSize: 16, height: 1.6),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // App Purpose Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Icon(Icons.app_shortcut, size: 40, color: Colors.grey[600]),
                  const SizedBox(height: 16),
                  const Text(
                    'This application serves as the official company profile, providing business information, services overview, and contact details.',
                    style: TextStyle(fontSize: 16, height: 1.6),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          // Quick Info
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildQuickInfo(Icons.location_on, 'Chandigarh'),
                _buildQuickInfo(Icons.category, 'Construction'),
                _buildQuickInfo(Icons.verified, 'Registered'),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildQuickInfo(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFF1565C0), size: 28),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
