import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_company_screen.dart';
import 'screens/services_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/privacy_policy_screen.dart';
import 'screens/about_app_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MinormendApp());
}

class MinormendApp extends StatelessWidget {
  const MinormendApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minormend Construction',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1565C0),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF1565C0),
          foregroundColor: Colors.white,
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ServicesScreen(),
    ContactScreen(),
    PrivacyPolicyScreen(),
    AboutAppScreen(),
    AboutCompanyScreen(),
  ];

  final List<String> _titles = const [
    'Home',
    'Services',
    'Contact Us',
    'Privacy Policy',
    'About App',
    'About Company',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_currentIndex])),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF1565C0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.construction,
                      size: 40,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'MINORMEND CONSTRUCTION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'PRIVATE LIMITED',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(Icons.home, 'Home', 0),
            _buildDrawerItem(Icons.business, 'About Company', 5),
            _buildDrawerItem(Icons.build, 'Services', 1),
            _buildDrawerItem(Icons.phone, 'Contact Us', 2),
            _buildDrawerItem(Icons.privacy_tip, 'Privacy Policy', 3),
            _buildDrawerItem(Icons.info, 'About App', 4),
          ],
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex > 4 ? 0 : _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.build_outlined),
            selectedIcon: Icon(Icons.build),
            label: 'Services',
          ),
          NavigationDestination(
            icon: Icon(Icons.phone_outlined),
            selectedIcon: Icon(Icons.phone),
            label: 'Contact',
          ),
          NavigationDestination(
            icon: Icon(Icons.privacy_tip_outlined),
            selectedIcon: Icon(Icons.privacy_tip),
            label: 'Privacy',
          ),
          NavigationDestination(
            icon: Icon(Icons.info_outline),
            selectedIcon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, int index) {
    final isSelected = _currentIndex == index;
    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? const Color(0xFF1565C0) : Colors.grey[600],
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isSelected ? const Color(0xFF1565C0) : Colors.black87,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: isSelected,
      selectedTileColor: const Color(0xFF1565C0).withAlpha(25),
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
        Navigator.pop(context);
      },
    );
  }
}
