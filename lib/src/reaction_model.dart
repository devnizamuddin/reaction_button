import 'package:flutter/material.dart';

class ReactionModel {
  String value;
  Widget initialView;
  Widget selectedView;
  ReactionModel({
    required this.value,
    required this.initialView,
    required this.selectedView,
  });
}
