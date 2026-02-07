import 'package:flutter/material.dart';

class AboutCompanyScreen extends StatelessWidget {
  const AboutCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1565C0).withAlpha(25),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.business,
                size: 60,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'About Our Company',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Main Description Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      const Text(
                        'Company Overview',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  const Text(
                    'MINORMEND CONSTRUCTION PRIVATE LIMITED is engaged in construction-related services with a focus on quality execution, reliability, and professional standards. The company operates from Chandigarh and serves clients across various construction requirements.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.7,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Core Values
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_outline, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      const Text(
                        'Core Values',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  _buildValueItem(Icons.high_quality, 'Quality Execution'),
                  _buildValueItem(Icons.handshake, 'Reliability'),
                  _buildValueItem(
                    Icons.workspace_premium,
                    'Professional Standards',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Location Info
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      const Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  const Text(
                    'Operating from Chandigarh, India',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildValueItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF1565C0).withAlpha(25),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: const Color(0xFF1565C0), size: 24),
          ),
          const SizedBox(width: 16),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
