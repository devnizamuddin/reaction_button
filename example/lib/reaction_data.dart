import 'package:flutter/material.dart';
import 'package:reaction_button/reaction_button.dart';
import 'app_assets.dart';

const double width = 32;
final reactions = [
  ReactionModel(
    value: 'angry',
    initialView: const Image(
      width: width,
      image: AssetImage(AppAssets.ANGRY_ICON),
    ),
    selectedView: const Row(
      children: [
        Image(
          width: width,
          image: AssetImage(AppAssets.ANGRY_ICON),
        ),
        Text('Angry'),
      ],
    ),
  ),
  ReactionModel(
    value: 'haha',
    initialView: const Image(
      width: width,
      image: AssetImage(AppAssets.HAHA_ICON),
    ),
    selectedView: const Row(
      children: [
        Image(
          width: width,
          image: AssetImage(AppAssets.HAHA_ICON),
        ),
        Text('Haha'),
      ],
    ),
  ),
  ReactionModel(
    value: 'like',
    initialView: const Image(
      width: width,
      image: AssetImage(AppAssets.LIKE_ICON),
    ),
    selectedView: const Row(
      children: [
        Image(
          width: width,
          image: AssetImage(AppAssets.LIKE_ICON),
        ),
        Text('Like'),
      ],
    ),
  ),
  ReactionModel(
    value: 'love',
    initialView: const Image(
      width: width,
      image: AssetImage(AppAssets.LOVE_ICON),
    ),
    selectedView: const Row(
      children: [
        Image(
          width: width,
          image: AssetImage(AppAssets.LOVE_ICON),
        ),
        Text('Love'),
      ],
    ),
  ),
  ReactionModel(
    value: 'sad',
    initialView: const Image(
      width: width,
      image: AssetImage(AppAssets.SAD_ICON),
    ),
    selectedView: const Row(
      children: [
        Image(
          width: width,
          image: AssetImage(AppAssets.SAD_ICON),
        ),
        Text('Sad'),
      ],
    ),
  ),
  ReactionModel(
    value: 'unlike',
    initialView: const Image(
      width: width,
      image: AssetImage(AppAssets.UNLIKE_ICON),
    ),
    selectedView: const Row(
      children: [
        Image(
          width: width,
          image: AssetImage(AppAssets.UNLIKE_ICON),
        ),
        Text('Unlike'),
      ],
    ),
  ),
  ReactionModel(
    value: 'wow',
    initialView: const Image(
      width: width,
      image: AssetImage(AppAssets.WOW_ICON),
    ),
    selectedView: const Row(
      children: [
        Image(
          width: width,
          image: AssetImage(AppAssets.WOW_ICON),
        ),
        Text('Wow'),
      ],
    ),
  )
];
