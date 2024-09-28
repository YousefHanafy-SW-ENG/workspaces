import 'package:flutter/material.dart';
import 'package:workspace/core/helpers/app_images.dart';
import 'package:workspace/core/helpers/extensions.dart';

class WorkspaceDetailsPhoto extends StatelessWidget {
  const WorkspaceDetailsPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: context.height/2.8,
            child: Image.asset(AppAssets.workspaceImageTwo,fit: BoxFit.fill,)),
      ],
    );
  }
}
