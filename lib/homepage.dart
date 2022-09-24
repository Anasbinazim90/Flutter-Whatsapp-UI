import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      PopupMenuItem(
                        child: Text('New Group'),
                        value: 1,
                      ),
                      PopupMenuItem(child: Text('Linked devices'), value: 2),
                      PopupMenuItem(child: Text('Starred Messages'), value: 3),
                      PopupMenuItem(child: Text('Settings'), value: 4),
                      PopupMenuItem(child: Text('Log out'), value: 5),
                    ])
          ],
          bottom: TabBar(tabs: [
            Container(height: 30, child: Icon(Icons.camera_alt)),
            Container(
              height: 30,
              child: Text(
                'CHATS',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Container(
              height: 30,
              child: Text(
                'STATUS',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Container(
              height: 30,
              child: Text(
                'CALLS',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          //CAMERA

          Center(child: Text('Camera will be opening soon')),

          //CHATS

          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text('Anas Bin Azim'),
                subtitle: Text('The tea is fantastic'),
                trailing: Text('12:35Pm'),
              );
            },
          ),

          //STATUS

          ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tap to add status update',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text('Recent updates',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // 1ST STATUS

              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text(
                  'Ali',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('48 minutes ago',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),

              // 2ND STATUS

              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text(
                  'Ahmed',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Today, 1:34 pm',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),

              // 3RD STATUS

              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text(
                  'Anas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Today, 9:00 am',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),

              // 4TH STATUS

              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text(
                  'Areeb',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Today, 2:00 pm',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),

              // 5TH STATUS

              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text(
                  'Osama',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Today, 11:50 pm',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),
            ],
          ),

          //CALLS

          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/WhatsappLogo.png')),
                title: Text('Babar Azam'),
                subtitle: Text('58 minutes ago'),
                trailing: Icon(Icons.call),
              );
            },
          ),
        ]),
      ),
    );
  }
}

// children: [
//               ListTile(
//                 leading: CircleAvatar(
//                     backgroundImage:
//                         AssetImage('assets/images/WhatsappLogo.png')),
//                 title: Text(
//                   'My Status',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: Text('Tap to add status update',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.grey)),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15),
//                 child: Row(
//                   children: [
//                     Text('Recent updates',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, color: Colors.grey))
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),

//             ],
