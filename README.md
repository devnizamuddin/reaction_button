## Features

Customizable Reaction button to build social media application.

## Getting started

To work with this packge first of all you have to understand ReactionModel

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