import 'package:flutter/material.dart';
import 'space.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Animations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: GridView.count(
            crossAxisCount: 1,
            childAspectRatio: 2,
            children: spaces
                .map((space) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailView(data: space)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Hero(
                              tag: space.id,
                              child: Material(
                                child: SpaceCard(space: space),
                              ),
                            ),
                            // ),
                            Positioned(
                              right: 20,
                              child: Hero(
                                tag: '${space.id}-button',
                                child: Material(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    color: Colors.amber[400],
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )).toList(),
          ),
      ),
    );
  }
}

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.data}) : super(key: key);
  final Space data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Hero(
                    tag: data.id,
                    child: Image.asset(data.image),
                  ),
                  Positioned(
                    bottom: -24,
                    right: 20,
                    child: Hero(
                      tag: '${data.id}-button',
                      child: Material(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.amber[400],
                          child: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Hero(
              tag: '${data.id}-title',
              child: Material(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(data.description),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
