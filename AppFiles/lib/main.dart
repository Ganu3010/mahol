import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'lists.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),
  ));
}

AudioPlayer ap = new AudioPlayer();

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Future<bool> stopApp() async{
    return (await showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Do you want to Exit the App?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context,false);
        }, child: Text("No")),
        TextButton(onPressed: (){
          SystemNavigator.pop();
        }, child: Text("Yes"))
      ],
    )));
  }
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: stopApp,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
              child: Text(
                'Welcome to Mahol',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wallpaperaccess.com/full/2792313.jpg"),
                      fit: BoxFit.cover))),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            }),
          },
          child: Text("Start Here",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Future<bool> stopApp() async{
    return (await showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Do you want to Exit the App?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context,false);
        }, child: Text("No")),
        TextButton(onPressed: (){
          SystemNavigator.pop();
        }, child: Text("Yes"))
      ],
    )));
  }
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: stopApp,
      child: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
            title: Text(
              'Choose your mood',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://c4.wallpaperflare.com/wallpaper/969/304/1012/starry-sky-milky-way-astronomy-galaxy-wallpaper-preview.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page3(1)));
                      });
                    },
                    color: Colors.black54,
                    child: Text('Angry',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page3(2)));
                        });
                      },
                      color: Colors.black54,
                      child: Text('Bored',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold))),
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page3(3)));
                        });
                      },
                      color: Colors.black54,
                      child: Text('Sad',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold))),
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page3(4)));
                        });
                      },
                      color: Colors.black54,
                      child: Text('Happy',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold))),
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page3(5)));
                        });
                      },
                      color: Colors.black54,
                      child: Text('Anxious',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)))
                ],
              ))),
    );
  }
}
class Page3 extends StatefulWidget {
  late Lists l;
  Page3(int n)
  {
    l = new Lists(n);
  }

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  Future<bool> stopMusic() async{
    return (await showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text("Do you want to quit?"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context,false);
          }, child: Text("No")),
          TextButton(onPressed: (){
            ap.stop();
            Navigator.pop(context,true);
          }, child: Text("Yes"))
        ]
    )));
  }
  @override
  Widget build(BuildContext context) {
    ap.play(widget.l.aud);
    return WillPopScope(
        onWillPop: stopMusic,
        child: Scaffold(
          backgroundColor: widget.l.bg,
          appBar: AppBar(
            leading: BackButton(
                color: widget.l.bb,
                onPressed: (){
                  ap.stop();
                  Navigator.pop(context);
                }),
            backgroundColor: widget.l.bg,
            title: widget.l.t,
          ),
          body: Container(child: Image(image: NetworkImage(widget.l.img))),
        ));
  }
}