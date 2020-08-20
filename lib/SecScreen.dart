import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF563786),
                    Color(0xFFFC8470),
                    Color(0xFFFDA660),
                    Color(0xFFBFD7DC)
                  ],
                  begin: FractionalOffset.bottomLeft,
                  end: FractionalOffset.topRight,
                  stops: [0, 1, 0, 1],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 8,
              top: MediaQuery.of(context).size.height / 16,
              child: SafeArea(
                child: Container(
                  child: FloatingActionButton(
                    backgroundColor: Colors.black12.withOpacity(0.1),
                    child: Icon(
                      Icons.home,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 4),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFFF4F4F4),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width / 3.1,
                        top: MediaQuery.of(context).size.height / 6.4,
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width / 7,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width / 7.5,
                            backgroundImage: AssetImage('circle-avatar.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
