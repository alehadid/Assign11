import 'dart:io';
import 'dart:js_util';

import 'package:asign11/MyDate.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Scound())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Icon(
                Icons.star,
                size: 180,
                color: Colors.lightBlue[500],
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "Relics of Afghanistan",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "V 0.1.1",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class Scound extends StatefulWidget {
  const Scound({Key? key}) : super(key: key);

  @override
  State<Scound> createState() => _ScoundState();
}

final ali = infor;

class _ScoundState extends State<Scound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            content: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FloatingActionButton(
                                                    onPressed: () {},
                                                    child: Icon(
                                                      Icons.telegram,
                                                      size: 50,
                                                    )),
                                                FloatingActionButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        const url =
                                                            'https://www.instagram.com/flutter.dev/';
                                                      });
                                                    },
                                                    child: Icon(
                                                        Icons.tiktok_rounded)),
                                              ],
                                            ),
                                          ));
                                },
                                child: Text(
                                  'Share the app',
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    minimumSize: Size(230, 50)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text('''Hello
I am Relics of Afghanistan app
I am here to help you to know more about the ancient monuments of Afghanistan 

سلام
من اپلیکیشن
 (Relics of Afghanistan) 
 هستم 
من اینجام تا به شما کمک کنم که بیشتر راجع به اثار های باستانی افغانستان بدانید''')
                                                ],
                                              ),
                                            ));
                                  },
                                  child: Text(
                                    'About',
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      minimumSize: Size(235, 50)),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Text(
                                  'Exit',
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    minimumSize: Size(235, 50)),
                              ),
                            ],
                          ),
                        ));
              },
              icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      body: ListView.separated(
        itemCount: ali.length,
        itemBuilder: (bc, i) {
          return Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3),
            child: Card(
              color: Colors.lightBlue,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (p) => MyScaffold(num: i),
                          ));
                    });
                  },
                  tileColor: Colors.black,
                  title: Text(
                    ali[i].Ename,
                    style: TextStyle(color: Colors.yellow),
                  ),
                  subtitle: Text(ali[i].name,
                      style: TextStyle(color: Colors.yellow, fontSize: 12)),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                      image: AssetImage(
                        ali[i].image,
                      ),
                      height: 45,
                      width: 45,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (bc, i) {
          return Divider(
            indent: 3,
            endIndent: 3,
            height: 0,
            color: Colors.black,
          );
        },
      ),
    );
  }
}

class MyScaffold extends StatefulWidget {
  final int num;

  MyScaffold({required this.num});

  @override
  State<MyScaffold> createState() => _MyScafoldState();
}

class _MyScafoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                ali[widget.num].image,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              color: Colors.yellow,
              child: Text(
                ali[widget.num].name + "\n " + ali[widget.num].Ename,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: ListTile(
                    title: Text(
                      ali[widget.num].text,
                      style: TextStyle(
                          fontSize: 18, height: 1.5, color: Colors.grey[700]),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class input extends StatelessWidget {
  const input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
