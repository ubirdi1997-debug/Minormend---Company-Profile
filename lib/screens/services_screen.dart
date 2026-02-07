import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        'title': 'Building Construction',
        'icon': Icons.apartment,
        'description': 'Comprehensive building construction services',
      },
      {
        'title': 'Civil & Structural Works',
        'icon': Icons.foundation,
        'description': 'Professional civil and structural engineering works',
      },
      {
        'title': 'Renovation & Maintenance',
        'icon': Icons.home_repair_service,
        'description': 'Renovation and maintenance services',
      },
      {
        'title': 'Project Support Services',
        'icon': Icons.support_agent,
        'description': 'End-to-end project support services',
      },
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1565C0).withAlpha(25),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.build,
                size: 60,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Our Services',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              'Construction & Infrastructure Solutions',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
          const SizedBox(height: 24),
          // Services List
          ...services.map(
            (service) => _buildServiceCard(
              service['title'],
              service['icon'],
              service['description'],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildServiceCard(String title, IconData icon, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF1565C0).withAlpha(25),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 32, color: const Color(0xFF1565C0)),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
