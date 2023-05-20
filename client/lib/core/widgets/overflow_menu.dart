import 'package:flutter/material.dart';

class OverflowMenuItem {
  const OverflowMenuItem({
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final IconData icon;
  final String title;
  final VoidCallback onPressed;
}

/// A widget for showing an overflow menu in the app bar.
class OverflowMenu extends StatelessWidget {
  const OverflowMenu({
    super.key,
    required this.items,
  });

  final List<OverflowMenuItem> items;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        position: PopupMenuPosition.under,
        offset: const Offset(-8, 0),
        onSelected: (value) => value.onPressed(),
        itemBuilder: (context) => items.map((item) {
              return PopupMenuItem(
                value: item,
                child: Row(
                  children: [
                    Icon(item.icon),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(item.title),
                  ],
                ),
              );
            }).toList()
        // itemBuilder: (context) => [
        //   PopupMenuItem(
        //     value: 'edit',
        //     child: Row(
        //       children: [
        //         Icon(Icons.edit),
        //         SizedBox(
        //           width: 8,
        //         ),
        //         Text('Edit'),
        //       ],
        //     ),
        //   ),
        //   PopupMenuItem(
        //     value: 'remove',
        //     child: Row(
        //       children: [
        //         Icon(Icons.delete),
        //         SizedBox(
        //           width: 8,
        //         ),
        //         Text('Remove'),
        //       ],
        //     ),
        //   ),

        );
  }
}
