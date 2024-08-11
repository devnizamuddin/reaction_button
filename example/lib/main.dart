import 'package:flutter/material.dart';
import 'package:reaction_button/reaction_button.dart';
import 'app_assets.dart';
import 'feed_data.dart';
import 'post_model.dart';
import 'reaction_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reaction Button',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) {
                  PostModel postModel = posts[index];
                  return Card(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text('${postModel.id}'),
                        ReactionButton(
                          selectedReaction: postModel.selectedReaction,
                          onChangedReaction: (reaction) {
                            setState(() {
                              postModel.selectedReaction = reaction;
                            });
                          },
                          placeHolder: ReactionModel(
                            value: 'like',
                            initialView: const Image(
                              width: 32,
                              image: AssetImage(AppAssets.LIKE_ACTION_ICON),
                            ),
                            selectedView: const Row(
                              children: [
                                Image(
                                  width: 32,
                                  image: AssetImage(AppAssets.LIKE_ICON),
                                ),
                                Text('Like'),
                              ],
                            ),
                          ),
                          reactions: reactions,
                        ),
                        Text('${postModel.id}'),
                      ],
                    ),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
