import 'package:reaction_button/reaction_button.dart';

class PostModel {
  int id;
  ReactionModel? selectedReaction;
  PostModel({
    required this.id,
    this.selectedReaction,
  });
}
