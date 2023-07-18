import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text('News Feed'),
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
                        height: 300,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 1)
                            ]),
                        child: Center(
                          child: Container(
                            width: 150,
                            height: 150,
                            // padding: const EdgeInsets.symmetric(vertical: 65),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[100],
                            ),
                            child: const Center(child: Text('150 X 150')),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 6.0)
                            ]),
                        child: Center(
                          child: Container(
                            width: 150,
                            height: 150,
                            // padding: const EdgeInsets.symmetric(vertical: 65),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[100],
                            ),
                            child: const Center(child: Text('150 X 150')),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 6.0)
                          ]),
                      child: Center(
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 65),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                          ),
                          child: const Center(child: Text('150 X 150')),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              }
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          );
        },
      ),
    );
  }
}
