import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyProfile"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? buildPortraitLayout()
              : buildLandscapeLayout();
        },
      ),
    );
  }

  Widget buildPortraitLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 180,
            backgroundImage: AssetImage('images/dslr.jpeg'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Jhon Doe',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "It is a long established fact that a reader will be distracted by the readable content",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(6, (index) {
              return Center(
                child: Image.asset('images/car.png'),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget buildLandscapeLayout() {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 180,
            backgroundImage: AssetImage('images/dslr.jpeg'),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Jhon Doe',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(6, (index) {
                    return Center(
                      child: Image.asset('images/car.png'),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
