import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: const Icon(Icons.info, size: 60, color: Color(0xFF1565C0)),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'About This App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // App Info Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow(
                    Icons.app_shortcut,
                    'App Name',
                    'Minormend Construction – Official Company Profile',
                  ),
                  const Divider(height: 24),
                  _buildInfoRow(
                    Icons.code,
                    'Package Name',
                    'com.minormend.construction.profile',
                  ),
                  const Divider(height: 24),
                  _buildInfoRow(Icons.category, 'Category', 'Business'),
                  const Divider(height: 24),
                  _buildInfoRow(
                    Icons.description,
                    'App Type',
                    'Official Company Profile (Informational)',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Ownership Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.business, color: Colors.grey[600]),
                      const SizedBox(width: 12),
                      const Text(
                        'Ownership',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  const Text(
                    'This app is owned and operated by MINORMEND CONSTRUCTION PRIVATE LIMITED.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // App Features Card
          Card(
            color: const Color(0xFF1565C0).withAlpha(13),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.check_circle, color: Color(0xFF1565C0)),
                      SizedBox(width: 12),
                      Text(
                        'App Features',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureItem('No advertisements'),
                  _buildFeatureItem('No login required'),
                  _buildFeatureItem('No analytics or tracking'),
                  _buildFeatureItem('No background services'),
                  _buildFeatureItem('Works offline'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: const Color(0xFF1565C0), size: 24),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.check, color: Color(0xFF1565C0), size: 20),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
