import 'package:flutter/material.dart';
import 'package:workspace/core/theming/styles.dart';

class PrimaryAppBar extends StatelessWidget {
  final String title;
  const PrimaryAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2.2,
      backgroundColor: Colors.white,
      title: Text(title,style:TextStyles.font18BlackSemiBold),
      centerTitle: true,
    );
  }
}
