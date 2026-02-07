import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'minormendcon1997@gmail.com',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  Future<void> _launchPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '+919988330113');
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

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
                Icons.contact_phone,
                size: 60,
                color: Color(0xFF1565C0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Contact Us',
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
              'Get in touch with us',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
          const SizedBox(height: 24),
          // Contact Name
          Card(
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF1565C0).withAlpha(25),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.person, color: Color(0xFF1565C0)),
              ),
              title: const Text(
                'Contact Person',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              subtitle: const Text(
                'Rajni',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Email
          Card(
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF1565C0).withAlpha(25),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.email, color: Color(0xFF1565C0)),
              ),
              title: const Text(
                'Email',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              subtitle: const Text(
                'minormendcon1997@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1565C0),
                ),
              ),
              trailing: const Icon(
                Icons.open_in_new,
                color: Color(0xFF1565C0),
                size: 20,
              ),
              onTap: _launchEmail,
            ),
          ),
          const SizedBox(height: 12),
          // Phone
          Card(
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF1565C0).withAlpha(25),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.phone, color: Color(0xFF1565C0)),
              ),
              title: const Text(
                'Phone',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              subtitle: const Text(
                '+91 99883 30113',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1565C0),
                ),
              ),
              trailing: const Icon(
                Icons.call,
                color: Color(0xFF1565C0),
                size: 20,
              ),
              onTap: _launchPhone,
            ),
          ),
          const SizedBox(height: 12),
          // Address
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1565C0).withAlpha(25),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.location_on,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Registered Address',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.only(left: 56),
                    child: Text(
                      'House No. 1387, Deep Complex,\nHallo Majra, Ram Darbar\nChandigarh – 160002\nIndia',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        height: 1.5,
                      ),
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
}
