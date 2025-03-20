import 'package:adstacks_assignment/sidebar_widgets.dart/nav_tiles.dart';
import 'package:adstacks_assignment/sidebar_widgets.dart/profile_section.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/adstacks_logo.png',
                    height: 100,
                    width: 100,
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  ProfileSection(),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(),
                  NavTiles(),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.indigo.shade100,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: const Text(
                        'WORKSPACES +',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  ExpansionTile(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text('Adstacks'),
                    ),
                    tilePadding: EdgeInsets.symmetric(horizontal: 16),
                    children: const [
                      ListTile(title: Text('Option 1')),
                      ListTile(title: Text('Option 2')),
                    ],
                  ),
                  ExpansionTile(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text('Finance'),
                    ),
                    tilePadding: EdgeInsets.symmetric(horizontal: 16),
                    children: const [
                      ListTile(title: Text('Overview')),
                      ListTile(title: Text('Reports')),
                    ],
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 48,
                          ),
                          Icon(
                            Icons.settings,
                            size: 18,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Setting', style: TextStyle(fontSize: 18))
                        ]),
                        SizedBox(
                          height: 16,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 48,
                          ),
                          Icon(
                            Icons.logout_rounded,
                            size: 18,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(fontSize: 18),
                          )
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
