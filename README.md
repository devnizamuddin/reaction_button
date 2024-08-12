## Features

Customizable Reaction button to build social media application.

<img src="https://raw.githubusercontent.com/devnizamuddin/reaction_button/main/assets/example_card.jpg?token=GHSAT0AAAAAACVR2PW3E6YJCOJY6BF3Y6D4ZVZ47SA">

## Usage


```dart
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
    )
```