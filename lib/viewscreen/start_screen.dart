import 'package:dice_template_app/viewscreen/businesscard_screen.dart';
import 'package:dice_template_app/viewscreen/imagedemo_screen.dart';
import 'package:dice_template_app/viewscreen/materialdesign_screen.dart';
import 'package:dice_template_app/viewscreen/view/view_util.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //Name for mapping to this screen
  static const routeName = '/startScreen';

  //Constant Constructor
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Menu'),
        actions: [
          IconButton(
            onPressed: () => showSnackBar(
              context: context,
              message: 'Alarm Button Pressed',
            ),
            icon: const Icon(Icons.alarm),
          ),
          IconButton(
            onPressed: () => showSnackBar(
              context: context,
              message: 'Message Button Pressed',
            ),
            icon: const Icon(Icons.message),
          ),
          PopupMenuButton(
            onSelected: (String value) {
              showSnackBar(context: context, message: 'Popupmenu = $value');
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<String>>[
                PopupMenuItem(
                  value: 'License',
                  child: Row(
                    children: const [
                      Icon(Icons.description_outlined),
                      Text('License'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'Balance',
                  child: Row(
                    children: const [
                      Icon(Icons.account_balance),
                      Text('Balance'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'Profile',
                  child: Row(
                    children: const [
                      Icon(Icons.person),
                      Text('Profile'),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture:
                  Icon(Icons.account_circle_rounded, size: 80.0),
              accountName: Text('Placed Holder Account Name'),
              accountEmail: Text('Place Holder Account Email'),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Friends'),
              onTap: () {
                Navigator.of(context).pop(); //Close the Drawer
                showSnackBar(context: context, message: 'Friends Menu');
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                Navigator.of(context).pop(); //Close the Drawer
                showSnackBar(context: context, message: 'Logout Menu');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            'Choose a menu to navigate',
            style: Theme.of(context).textTheme.headline5,
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, MaterialDesignClass.routeName),
            child: Text(
              'Material Design Style',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, ImageDemoScreen.routeName),
            child: Text(
              'Image Demo',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, BusinessCardScreen.routeName),
            child: const Text('My Mobile Business Card'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context: context, message: 'Floating Action Button');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex: , specifies which tab is selected
        onTap: (int index) {
          showSnackBar(
              context: context,
              message: 'Bottom Navigation Bar: index = $index');
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Time',
            icon: Icon(Icons.time_to_leave),
          ),
          BottomNavigationBarItem(
            label: 'Business',
            icon: Icon(Icons.business),
          ),
        ],
      ),
    );
  }
}
