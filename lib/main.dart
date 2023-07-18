import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed',
      home: NewsFeed(),
    );
  }
}

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              if (orientation == Orientation.landscape) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.grey.shade200,
                        child: Center(
                          child: Text('Mukarrom'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.grey.shade200,
                        child: Center(
                          child: Text('Mukarrom'),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Container(
                  width: 320,
                  height: 150,
                  color: Colors.grey[150],
                  child: Center(
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                      ),
                      child: Text('Mukarrom'),
                    ),
                  ),
                );
              }
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
          );
        },
      ),
    );
  }
}
