import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ExpandableList extends StatefulWidget {
  const ExpandableList({
    Key? key,
    required this.itemCount,
    this.controller,
    required this.loading,
    required this.itemBuilder,
    required this.onLoad,
  }) : super(key: key);

  final int itemCount;
  final ScrollController? controller;
  final bool loading;
  final Widget Function(BuildContext, int) itemBuilder;
  final void Function() onLoad;

  @override
  State<ExpandableList> createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? ScrollController();

    // Load as soon as possible, since listener only loads when scrolling.
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      widget.onLoad();
      setState(() {});
    });

    _controller.addListener(() {
      if (!widget.loading && _controller.position.pixels + 100 >= _controller.position.maxScrollExtent) {
        widget.onLoad();
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: widget.itemCount,
            controller: widget.controller,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: widget.itemBuilder,
          ),
        ),
        if (widget.loading)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
