import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//         // accentColor: Colors.white,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: SettingsPage(),
//     );
//   }
// }

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool enableNotifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          ListTile(
            title: const Text('General Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {
              // Navigate to general settings page
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Notifications'),
            leading: const Icon(Icons.notifications),
            trailing: Switch(
              value: enableNotifications,
              onChanged: (value) {
                setState(() {
                  enableNotifications = value;
                });
              },
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Dark Mode'),
            leading: const Icon(Icons.brightness_4),
            trailing: Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Appearance'),
            leading: const Icon(Icons.palette),
            onTap: () {
              // Navigate to appearance settings page
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Accessibility'),
            leading: const Icon(Icons.accessibility),
            onTap: () {
              // Navigate to accessibilty
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('About'),
            leading: const Icon(Icons.info),
            onTap: () {
              // Navigate to about page
            },
          ),
          const Divider(),
          buildAccOption(context, "Social"),
          buildAccOption(context, "Language"),
          buildAccOption(context, "Privacy and Security"),
          const Divider(),
          ListTile(
            iconColor: Colors.blue,
            autofocus: true,
            contentPadding: const EdgeInsets.only(left: 40),
            title: const Text('Support'),
            leading: const Icon(Icons.support_agent_sharp),
            onTap: () {
              // Navigate to about page
            },
          ),
          ListTile(
            iconColor: Colors.grey[500],
            autofocus: true,
            contentPadding: const EdgeInsets.only(left: 40),
            title: const Text('Help and Feedback',
                style: TextStyle(fontWeight: FontWeight.w600)),
            leading: const Icon(Icons.help_outline_rounded),
            onTap: () {
              // Navigate to about page
            },
          ),

          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Text(
                '.',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    'Terms Of Service',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Text(
                '.',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15,
                    fontWeight: FontWeight.w100),
              ),
            ],
          )
        ],
      ),
    );
  }
}

GestureDetector buildAccOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Option1'),
                Text('Option2'),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Click'))
            ],
          );
        },
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}
