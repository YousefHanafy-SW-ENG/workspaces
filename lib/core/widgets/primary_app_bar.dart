import 'package:flutter/material.dart';
import 'package:workspace/core/theming/styles.dart';

class PrimaryAppBar extends StatelessWidget {
  final String title;
  final bool isTitleCentered;
  final bool hasLeadingIcon;

  const PrimaryAppBar({
    super.key,
    required this.title,
    this.isTitleCentered = true,
    this.hasLeadingIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2.2,
      backgroundColor: Colors.white,
      title: Text(title, style: TextStyles.font18BlackSemiBold),
      centerTitle: isTitleCentered,
      leading: hasLeadingIcon
          ? IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )
          : null,
    );
  }
}
