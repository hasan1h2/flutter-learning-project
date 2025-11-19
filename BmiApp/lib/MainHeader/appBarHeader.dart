import 'package:flutter/material.dart';

class AppBarHeader extends StatelessWidget implements PreferredSizeWidget {
  final bool isDarkMode;
  final VoidCallback onThemeToggle;

  const AppBarHeader({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: isDarkMode ? Colors.grey[900] : Colors.amber,
      title: Text(
        "BMI Calculator",
        style: TextStyle(
          color: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            isDarkMode ? Icons.wb_sunny : Icons.nightlight_round,
            color: isDarkMode ? Colors.yellow : Colors.black,
          ),
          onPressed: onThemeToggle,
        ),
      ],
      elevation: 0,

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60
      // kToolbarHeight + kTextTabBarHeight // ensure space for TabBar
  );
}
