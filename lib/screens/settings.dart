import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          _buildListTile(
            context,
            icon: Icons.account_circle,
            title: 'Account',
            onTap: () {
              // Navigate to account settings
            },
          ),
          _buildListTile(
            context,
            icon: Icons.notifications,
            title: 'Notifications',
            onTap: () {
              // Navigate to notification settings
            },
          ),
          _buildListTile(
            context,
            icon: Icons.lock,
            title: 'Privacy',
            onTap: () {
              // Navigate to privacy settings
            },
          ),
          _buildThemeSwitchTile(context),
          _buildListTile(
            context,
            icon: Icons.language,
            title: 'Language',
            onTap: () {
              // Navigate to language settings
            },
          ),
          _buildListTile(
            context,
            icon: Icons.help,
            title: 'Help',
            onTap: () {
              // Navigate to help settings
            },
          ),
          _buildListTile(
            context,
            icon: Icons.info,
            title: 'About',
            onTap: () {
              // Navigate to about settings
            },
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
      onTap: onTap,
    );
  }

  ListTile _buildThemeSwitchTile(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.color_lens, color: Colors.blue),
      title: const Text('Theme'),
      trailing: Switch(
        value: Theme.of(context).brightness == Brightness.dark,
        onChanged: (bool value) {
          // Toggle theme
          final theme = value ? ThemeMode.dark : ThemeMode.light;
        },
      ),
    );
  }
}
