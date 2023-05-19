import 'package:flutter/material.dart';

/// A widget that unfocuses the currently focused node when [child] is pressed.
class Unfocuser extends StatefulWidget {
  const Unfocuser({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<Unfocuser> createState() => _UnfocuserState();
}

class _UnfocuserState extends State<Unfocuser> {
  PointerDownEvent? _pointerDownEvent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Positioned.fill(
          // Unfocus the current textfield if the user taps anywhere that is not
          // tappable itself (like the background of the app).
          //
          // This has to be a [Listener] as not to block [GestureDetector]s behind
          // this one.
          child: Listener(
            behavior: HitTestBehavior.translucent,
            onPointerDown: (event) => _pointerDownEvent = event,
            onPointerUp: (event) {
              final focusNode = FocusManager.instance.primaryFocus;

              if (focusNode == null) return;

              // For a better UX, we don't want to unfocus the textfield on a scroll.
              //
              // The limit of 200 is based on testing.
              if ((_pointerDownEvent!.position - event.position).distanceSquared < 200) {
                // Don't unfocus if the tap is inside the currently focused area.
                if (focusNode.context == null || !focusNode.rect.contains(event.position)) {
                  focusNode.unfocus();
                }
              }
            },
          ),
        ),
      ],
    );
  }
}