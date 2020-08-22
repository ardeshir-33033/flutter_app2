import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            stops: [0.1, 0.5, 0.8, 1],
            tileMode: TileMode.clamp,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 25),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 18,
                      decoration: BoxDecoration(
                          color: Color(0xFFFDFDFE),
                          borderRadius: BorderRadius.circular(20.0),
                          border:
                              Border.all(color: Colors.black54, width: 0.4)),
                      child: Container(
                        child: Center(
                          child: Text(
                            'سنجش سلامتی',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 18),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.black12.withOpacity(0.1),
                          onPressed: () {},
                          child: Icon(
                            Icons.home,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 18,
                  child: Center(
                    child: Text(
                      'خود ارزیابی احتمال کرونا',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 19,
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
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Stack(
                  children: <Widget>[
                    Positioned(
                      left: MediaQuery.of(context).size.width / 3.3,
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 7,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width / 7.5,
                          backgroundImage: AssetImage('Images/1.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height / 1.8,
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
                              height: MediaQuery.of(context).size.height / 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                'جواب صحیح شما به سوالات تست، باعث ارزیابی دقیق سلامتی شما میشود.',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 16,
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
                              height: MediaQuery.of(context).size.height / 15,
                            ),
                            Material(
                              color: Color(0xFFFCAC5E),
                              borderRadius: BorderRadius.circular(40),
                              child: MaterialButton(
                                onPressed: () {},
                                minWidth:
                                    MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 13,
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
                              height: MediaQuery.of(context).size.height / 80,
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
