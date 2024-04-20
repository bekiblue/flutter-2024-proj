import 'package:flutter/material.dart';
import 'package:agazsh/presentation/widgets/job_card.dart';
import 'job_details_screen.dart'; // Import your job details screen

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle drawer item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle drawer item 2 tap
              },
            ),
            Divider(), // Divider for visual separation
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                // Handle log out action
                // For example, you can navigate to a login screen
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          JobCard(
            title: 'Electrician Needed',
            description: 'Install new wiring in apartment.',
            budget: 300,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JobDetailsScreen()));
            },
          ),
          JobCard(
            title: 'Plumber Needed',
            description: 'Fix leaking pipes in kitchen.',
            budget: 200,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JobDetailsScreen()));
            },
          ),
        ],
      ),
    );
  }
}
