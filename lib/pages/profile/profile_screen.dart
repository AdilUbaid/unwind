import 'package:flutter/material.dart';



class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          elevation: 0,
          centerTitle: true,
        ),
        body: SettingsScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Center(
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with your own profile picture
          ),
        ),
        SizedBox(height: 16),
        Center(
          child: Text(
            'John Doe', // Replace with the actual user name
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 24),
        SettingsSection(
          title: 'Account',
          tiles: [
            SettingsTile(title: 'Edit Profile', icon: Icons.person),
            SettingsTile(title: 'Change Password', icon: Icons.lock),
            SettingsTile(title: 'Privacy', icon: Icons.privacy_tip),
          ],
        ),
        SettingsSection(
          title: 'Notification',
          tiles: [
            SettingsTileWithSwitch(title: 'Notification', icon: Icons.notifications),
            SettingsTileWithSwitch(title: 'Updates', icon: Icons.system_update),
          ],
        ),
        SettingsSection(
          title: 'Other',
          tiles: [
            SettingsTileWithSwitch(title: 'Dark Mode', icon: Icons.dark_mode),
            SettingsTile(title: 'Language', icon: Icons.language),
            SettingsTile(title: 'Region', icon: Icons.flag),
          ],
        ),
      ],
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> tiles;

  SettingsSection({required this.title, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        SizedBox(height: 8),
        Column(
          children: tiles,
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;

  SettingsTile({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: () {
        // Add functionality here
      },
    );
  }
}

class SettingsTileWithSwitch extends StatefulWidget {
  final String title;
  final IconData icon;

  SettingsTileWithSwitch({required this.title, required this.icon});

  @override
  _SettingsTileWithSwitchState createState() => _SettingsTileWithSwitchState();
}

class _SettingsTileWithSwitchState extends State<SettingsTileWithSwitch> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon, color: Colors.blue),
      title: Text(widget.title),
      trailing: Switch(
        value: switchValue,
        onChanged: (value) {
          setState(() {
            switchValue = value;
          });
        },
      ),
    );
  }
}
