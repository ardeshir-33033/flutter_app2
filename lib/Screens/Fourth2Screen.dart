import 'package:flutter/material.dart';

class Fourth2Screen extends StatefulWidget {
  @override
  _Fourth2ScreenState createState() => _Fourth2ScreenState();
}

class _Fourth2ScreenState extends State<Fourth2Screen> {
  @override
  Widget build(BuildContext context) {
    final defWidth = MediaQuery.of(context).size.width;
    final defHeight = MediaQuery.of(context).size.height;
    int questionNumber = 0;
    List<String> questions = [
      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون',
      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه',
      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و',
    ];
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
            padding: EdgeInsets.only(top: 5),
            child: Column(
              children: <Widget>[
                Container(
                  width: defHeight,
                  height: defHeight / 10,
                  decoration: BoxDecoration(
                    color: Color(0xFFFDFDFE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      ' تبلیغ تبلیغ تبلیغ تبلیغ تبلیغ تبلیغ تبلیغ تبلیغ تبلیغ تبلیغ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFBABABA),
                        fontSize: defWidth / 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: defHeight/7,),
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xFFF4F4F4),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: defHeight/10,
                          ),
                          Container(
                            height: defHeight / 5,
                            width: defWidth / 1.3,
                            decoration: BoxDecoration(
                              color: Color(0xFFFDFDFE),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  offset: Offset(0, 3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(defWidth/40),
                              child: Text(
                                questions[questionNumber],
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: defWidth/19,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBBBBBB),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: defHeight/40,
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
                                'تایید',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF9F9FE)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: defHeight/40,
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
                                'تایید',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF9F9FE)),
                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/25,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'قبلی',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: defWidth/15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFB3B3B3),
                                  ),
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'بعدی',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: defWidth/15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFB3B3B3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: defWidth / 1.7,
                      child: CircleAvatar(
                        radius: defWidth / 9,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: defWidth / 9.5,
                          backgroundImage: AssetImage('Images/1.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(defWidth/15),
                      child: Text(
                        '$questionNumber/15 ',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF878787),
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
