import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
              child: const Icon(
                Icons.privacy_tip,
                size: 60,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Privacy Policy Content
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPolicySection(
                    Icons.security,
                    'Data Privacy',
                    'MINORMEND CONSTRUCTION PRIVATE LIMITED respects user privacy.',
                  ),
                  const Divider(height: 32),
                  _buildPolicySection(
                    Icons.storage,
                    'Data Collection',
                    'This application does not collect, store, or share any personal user data.',
                  ),
                  const Divider(height: 32),
                  _buildPolicySection(
                    Icons.info_outline,
                    'App Purpose',
                    'The app is intended solely to provide official company information.',
                  ),
                  const Divider(height: 32),
                  _buildPolicySection(
                    Icons.mail_outline,
                    'External Communication',
                    'Any communication initiated through email or phone is handled externally and is not stored within the application.',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Summary Card
          Card(
            color: const Color(0xFF1565C0).withAlpha(13),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(Icons.verified_user, color: Color(0xFF1565C0), size: 40),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Privacy is Protected',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1565C0),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'This app does not collect or store any user data.',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ],
                    ),
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

  Widget _buildPolicySection(IconData icon, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: const Color(0xFF1565C0), size: 24),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 36),
          child: Text(
            content,
            style: const TextStyle(
              fontSize: 15,
              height: 1.6,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
