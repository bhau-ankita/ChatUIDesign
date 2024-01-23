import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:ThemeData(
        drawerTheme: DrawerThemeData(
          scrimColor:Colors.transparent
        )
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage>{
  final GlobalKey<ScaffoldState> _globalKey= GlobalKey();  // to open over drawer we add global key

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    key: _globalKey,
 backgroundColor: Color(0xff171717),
    body: Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left:5, right: 5 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, //space dene ke lia spacebetween ka use kra hai
                children: [
                  IconButton(onPressed: () {
                    _globalKey.currentState!.openDrawer();
                  },
                      icon:  Icon(Icons.menu, color: Colors.white,)),
                  IconButton(onPressed: () {} ,
                      icon: Icon(Icons.search, color: Colors.white,))
                ],
              ),
            ),

            SizedBox(height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                     TextButton(onPressed: () {},
                         child: Text("Message",
                         style: TextStyle(color: Colors.white, fontSize: 26),)),
                  SizedBox(height: 35,),
                  TextButton(onPressed: () {},
                      child: Text("Online",
                      style: TextStyle(color: Colors.grey,fontSize: 26),)),
                  SizedBox(height: 35,),
                  TextButton(onPressed: () {},
                      child: Text("Group",
                      style: TextStyle(color: Colors.grey, fontSize: 26),)),
                  SizedBox(height: 35,),
                  TextButton(onPressed: () {},
                      child: Text("More",
                      style: TextStyle(color: Colors.grey, fontSize: 26),)),
                  SizedBox(height: 35,),
                  TextButton(onPressed: () {},
                      child: Text('Suggestion', style: TextStyle(color: Colors.grey, fontSize: 26),)),


                ],
              ),
            )
          ],
        ),
        Positioned(
          top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 15,left: 25,right: 25),
          height: 220,
          decoration: BoxDecoration(
            color: Color(0xFF27c1a9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)
            ),
          ),
           child: Column(
             children: [

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                        Text("Favorite contacts",
                         style: TextStyle(color: Colors.white,fontSize: 20 ),),
                   IconButton(onPressed: () {},
                       icon: const Icon(Icons.more_horiz, color: Colors.white,)),
                 ],
               ),
               SizedBox(
                 height: 90,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: [
                       buildContactAvatar("Maa" , '100.jpg'),
                       buildContactAvatar("Adi" , '108.jpg'),
                       buildContactAvatar("Diya" , '102.jpg'),
                       buildContactAvatar("Mannat" , '103.jpg'),
                       buildContactAvatar("Daksh" , '104.jpg'),
                       buildContactAvatar("Ankita" , '105.jpg'),
                       buildContactAvatar("Ankita 2" , '106.jpg'),
                       buildContactAvatar("Ankita 3" , '107.jpg'),
                       buildContactAvatar("Aditya" , '101.jpg'),

                     ],
                   ))

             ],

           ),
        ),),
        Positioned(
          top: 365,
            left: 0,
            right: 0,
            bottom: 0,
            child:
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEFFFFC),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: ListView(
            padding: EdgeInsets.only(left: 25),
            //scrollDirection: Axis.vertical,
            children: [
              builsConversationRow('Maa', 'Hello', '100.jpg',0),
              builsConversationRow('Adi', 'Hii', '108.jpg',2),
              builsConversationRow('Diya', 'Hello', '102.jpg',4),
              builsConversationRow('Mannat', 'Hello', '103.jpg',0),
              builsConversationRow('Daksh', 'Hii', '104.jpg',5),
              builsConversationRow('Ankita', 'Hello', '105.jpg',2),
              builsConversationRow('Ankita 2', 'Helo', '106.jpg',0),
              builsConversationRow('Ankita 3', 'Hello', '107.jpg',3),
              builsConversationRow('Aditya', 'Hello', '102.jpg',0),

                ],
              ),


          ),
        ),
      ],
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    floatingActionButton: SizedBox(
      height: 65,
      width: 65,
      child: FloatingActionButton(
        backgroundColor: Color(0xFF27c1a9),
       // shape: RoundedRectangleBorder(
         // borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
       // ),
        onPressed: () {},
        child: Icon(Icons.edit_outlined, size: 30,),
      ),
    ),
    drawer: Drawer(
      width: 275,
      backgroundColor:Colors.black26 ,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xF71F1E1E),
        //  borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Color(0x3D000000,), spreadRadius: 30,blurRadius: 20
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,50,20,20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text('Setting',style: TextStyle(color: Colors.white,
                      fontSize: 20),)
                    ],
                  ),
                  SizedBox(height: 56,),
                  Row(
                    children: [
                      userAvatar(filename: '107.jpg'),
                      SizedBox(width: 12,),
                      Text('Ankita Bhau', style: TextStyle(fontSize: 20, color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 35,),
                  DrawerItems(title: 'Account',icon: Icons.key,),
                  DrawerItems(title: 'Chat',icon: Icons.chat,),
                  DrawerItems(title: 'Notifications',icon: Icons.notifications,),
                  DrawerItems(title: 'Data and Storage',icon: Icons.storage,),
                  DrawerItems(title: 'Help',icon: Icons.help,),
                  Divider(
                    height: 35,
                    color: Colors.green,
                  ),
                  DrawerItems(title: 'Invite a Friend',icon: Icons.people,),


                ],
              ),
              DrawerItems(title: 'Log out',icon: Icons.logout,),
            ],
          ),
        ),
      ),
    ),

  );
  }

  Column builsConversationRow(String name, String message, String filename, int mssgCount) {
    return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        userAvatar(filename: filename),
                        SizedBox(width: 15,), //row mai width dete hao aur column mai height
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name, style: TextStyle(color: Colors.black,fontSize: 16),),
                            SizedBox( height: 5,),
                            Text(message, style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),

                          ],
                        ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25,top: 5),
                            child: Column(
                               children: [
                                  Text('16.25', style: TextStyle(fontSize: 9),
                                  ),
                                SizedBox(height: 15,),
                                if(mssgCount>0)
                                CircleAvatar(
                                  radius: 7,
                                 backgroundColor: Color(0xFF27c1a9),
                                  child: Text(mssgCount.toString(), style: TextStyle(fontSize: 10, color: Colors.white),),
                                       )
                                    ],
                                ),
                          ),
                      ],

                    ),
                Divider(
                  indent: 70,
                )
              ],
            );
  }

  Padding buildContactAvatar( String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
                         children: [
                           userAvatar( filename: filename,),
                            const SizedBox(height: 1,),
                            Text( name,style: TextStyle(color: Colors.white,
                           fontSize: 16),)
                         ],
                       ),
    );
  }

}

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItems({
    super.key, required this.title, required  this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(icon,
            color: Colors.white,
            size: 20,),
            SizedBox(width: 56,),

            Text(title,style: TextStyle(color: Colors.white, fontSize: 20),),
          ],
        ),
      ),
    );
  }
}

class userAvatar extends StatelessWidget {//iska shortcut hai jis b widgit ko extrart krna hai uspe click kro fir refactor option chose kro aur extrat widget choose kro aur name de do
  final String filename; //yeh property hai
  const userAvatar({
    super.key, required this.filename, //add kei peoperty
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}