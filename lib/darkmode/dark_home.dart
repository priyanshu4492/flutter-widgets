import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/darkmode/box.dart';
import 'package:widgets/darkmode/button.dart';
import 'package:widgets/darkmode/theme/themeprovider.dart';

class DarkHome extends StatelessWidget {
  const DarkHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
