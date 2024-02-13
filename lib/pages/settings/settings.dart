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
        padding: EdgeInsets.all(10.0),
        children: [
          ListTile(
            title: Text('General Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              // Navigate to general settings page
            },
          ),
          Divider(),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            trailing: Switch(
              value: enableNotifications,
              onChanged: (value) {
                setState(() {
                  enableNotifications = value;
                });
              },
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Dark Mode'),
            leading: Icon(Icons.brightness_4),
            trailing: Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Appearance'),
            leading: Icon(Icons.palette),
            onTap: () {
              // Navigate to appearance settings page
            },
          ),
          Divider(),
          ListTile(
            title: Text('Accessibility'),
            leading: Icon(Icons.accessibility),
            onTap: () {
              // Navigate to accessibilty
            },
          ),
          Divider(),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info),
            onTap: () {
              // Navigate to about page
            },
          ),
          Divider(),
          buildAccOption(context, "Social"),
          buildAccOption(context, "Language"),
          buildAccOption(context, "Privacy and Security"),
          Divider(),
          ListTile(
            iconColor: Colors.blue,
            autofocus: true,
            contentPadding: EdgeInsets.only(left: 40),
            title: Text('Support'),
            leading: Icon(Icons.support_agent_sharp),
            onTap: () {
              // Navigate to about page
            },
          ),
          ListTile(
            iconColor: Colors.grey[500],
            autofocus: true,
            contentPadding: EdgeInsets.only(left: 40),
            title: const Text('Help and Feedback',
                style: TextStyle(fontWeight: FontWeight.w600)),
            leading: Icon(Icons.help_outline_rounded),
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
                  child: Text('Click'))
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
