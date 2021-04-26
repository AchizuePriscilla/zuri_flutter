import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyProfile(), debugShowCheckedModeBanner: false);
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipPath(
                    clipper: ContainerClipper(),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('Priscilla Achizue',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            letterSpacing: 2.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                              'I\'m passionate about honing my skills and I look forward to getting hands-on experience while working on a real project',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                              'I\'m sorry but i\'m a boring person who has no real hobbies asides coding. Not so boring though, since I also write for fun and depend on music to live',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.black,
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                title: Text('+2348145518998',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.black,
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                title: Text('priscillaachizue@gmail.com',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              // top: screenHeight * (1 / 8) - 100 / 2,
              left: screenWidth * 0.28,
              bottom: screenHeight - 220,
              // right: 30,
              child: Container(
                margin: const EdgeInsets.all(4),
                height: 150,
                width: 150,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/me.jpg'),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
