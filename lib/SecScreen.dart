import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final defWidth = MediaQuery.of(context).size.width;
    final defHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: defHeight,
        width: defWidth,
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
            stops: [0.1, 0.5, 0.8, 1],
            tileMode: TileMode.clamp,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.only(top: defHeight / 25),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 20, 0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.black12.withOpacity(0.1),
                          onPressed: () {},
                          child: Icon(
                            Icons.home,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: defWidth / 2,
                      height: defHeight / 18,
                      decoration: BoxDecoration(
                          color: Color(0xFFFDFDFE),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black54, width: 0.4)),
                      child: Container(
                        child: Center(
                          child: Text(
                            'سنجش سلامتی',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: defWidth / 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  width: defWidth / 2,
                  height: defHeight / 18,
                  child: Center(
                    child: Text(
                      'خود ارزیابی احتمال کرونا',
                      style: TextStyle(
                          fontSize: defWidth / 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF586163),
                          shadows: [
                            Shadow(
                              offset: Offset(4, 4),
                              blurRadius: 8.0,
                              color: Colors.black38,
                            ),
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: defHeight / 30,
                ),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Container(
                        width: defWidth / 1.1,
                        height: defHeight / 1.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xFFF4F4F4),
                          image: DecorationImage(
                            image: AssetImage('Images/corona1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: defHeight / 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                'جواب صحیح شما به سوالات تست، باعث ارزیابی دقیق سلامتی شما میشود.',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        defWidth / 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF636363),
                                    shadows: [
                                      Shadow(
                                        offset: Offset(4, 4),
                                        blurRadius: 8.0,
                                        color: Colors.black38,
                                      ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: defHeight / 15,
                            ),
                            Material(
                              color: Color(0xFFFCAC5E),
                              borderRadius: BorderRadius.circular(40),
                              child: MaterialButton(
                                onPressed: () {},
                                minWidth:
                                    defWidth / 1.2,
                                height: defHeight / 13,
                                child: Text(
                                  'شروع ارزیابی',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFF9F9FE)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: defHeight / 80,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'در انتها نتیجه به شما اعلام میشود',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFB3B3B3),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: defWidth / 3,
                      child: CircleAvatar(
                        radius: defWidth / 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: defWidth / 8.5,
                          backgroundImage: AssetImage('Images/1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
