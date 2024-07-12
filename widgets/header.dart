import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Header extends ConsumerWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: const Text('SNS APP', style: TextStyle(color: Colors.white)),
      actions: [
        PopupMenuButton<int>(
          icon: const Icon(Icons.menu, color: Colors.white),
          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: ListTile(
                title: Text("user name"),
                subtitle: Text("user email"),
              ),
            ),
            const PopupMenuItem<int>(
                value: 1,
                child: ListTile(
                  title: Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
