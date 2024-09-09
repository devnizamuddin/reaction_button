import 'package:flutter/material.dart';

import 'reaction_model.dart';

class ReactionButton extends StatefulWidget {
  const ReactionButton({
    super.key,
    required this.placeHolder,
    this.selectedReaction,
    required this.reactions,
    required this.onChangedReaction,
    this.alwaysShowSelection = false,
  });

  final ReactionModel placeHolder;
  final ReactionModel? selectedReaction;
  final List<ReactionModel> reactions;
  final Function(ReactionModel reaction) onChangedReaction;
  final bool alwaysShowSelection;

  @override
  State<ReactionButton> createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.alwaysShowSelection ? _showReactions(context) : _changeReaction();
      },
      onLongPressStart: (_) {
        widget.alwaysShowSelection ? null : _showReactions(context);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: widget.selectedReaction?.selectedView ??
            widget.placeHolder.initialView,
      ),
    );
  }

  void _changeReaction() => widget.onChangedReaction(widget.selectedReaction ?? widget.placeHolder);

  void _showReactions(BuildContext context) {
    setState(() {});
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size screenSize = MediaQuery.of(context).size;
    final double overlayWidth = (widget.reactions.length * 50).toDouble();
    double leftPosition = offset.dx;
    if (offset.dx + overlayWidth > screenSize.width) {
      leftPosition = screenSize.width - overlayWidth - 10;
    }

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          GestureDetector(
            onTap: () {
              _hideReactions();
            },
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Positioned(
            left: leftPosition,
            top: offset.dy - 50,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 10)
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: widget.reactions.map((reaction) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: GestureDetector(
                        onTap: () {
                          widget.onChangedReaction(reaction);
                          setState(() {});
                          _hideReactions();
                        },
                        child: reaction.initialView,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideReactions() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
