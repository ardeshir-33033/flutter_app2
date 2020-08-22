import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ThirdScreen extends StatelessWidget {
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
            stops: [0.1, 0.5,0.8, 1],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Stack(
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.black12.withOpacity(0.1),
                onPressed: () {},
                child: Icon(
                  Icons.home,
                ),
              ),
              Expanded(
                child: Positioned(
                  left: MediaQuery.of(context).size.width /3.3,
                  top: MediaQuery.of(context).size.height /7,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 7,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 7.5,
                      backgroundImage: AssetImage('Images/1.png'),
                    ),
                  ),
                ),
              ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).size.height/19,),
                      TextContainer(
                        title: 'شماره همراه',
                        obscure: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 45,
                      ),
                      TextContainer(
                        title: 'رمز عبور',
                        obscure: true,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 35,
                      ),
                      Material(
                        color: Color(0xFFFCAC5E),
                        borderRadius: BorderRadius.circular(40),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 13,
                          child: Text(
                            'تایید',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF9F9FE)),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text('با شرایط سرویس موافقم',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFB3B3B3),
                        ),),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  TextContainer({this.title, this.obscure});

  final String title;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 13,
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: TextField(
        obscureText: obscure,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              CupertinoIcons.pencil,
              size: 50,
            ),
            hintText: title,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            contentPadding: EdgeInsets.only(top: 20)),
      ),
    );
  }
}
