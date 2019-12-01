import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        home: MainPage()
    );
  }
}

class ToastMsg extends StatefulWidget {
  @override
  _ToastMsgState createState() => _ToastMsgState();

  static showToast() {
    Fluttertoast.showToast(
        msg: "Clicked",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white
    );
  }
}

class _ToastMsgState extends State<ToastMsg> {

    static showToast(){



    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Demo App'),
      ),
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              child: ClipOval(
                child: Image.asset("images/maleavatar.png"),
              ),
              backgroundColor: Colors.white,
            ),
            Container(
              child: Center(
                child: Text("Darot Peacedude", style: TextStyle(fontSize: 40, fontFamily: "Pacifico"),),
              )
            ),
            Center(

               child: Text("Flutter Developer".toUpperCase(), style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, letterSpacing: 5),),

            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10, horizontal: 45
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color:Colors.blue
                ),
                title: Text(
                  "+234 806 008 5192",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red.shade50
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                  vertical: 10, horizontal: 45
              ),
              child: ListTile(
                leading: Icon(
                    Icons.email,
                    color:Colors.blue
                ),
                title: Text(
                  "darotudeen@gmail.com",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red.shade50
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => ToastMsg.showToast()
 ,
        child: Icon(Icons.add),
      ),
    );
  }
}
