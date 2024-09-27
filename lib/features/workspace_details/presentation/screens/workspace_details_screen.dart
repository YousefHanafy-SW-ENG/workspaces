import 'package:flutter/material.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_details_photo.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_name_description.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_tabs.dart';

class WorkspaceDetailsScreen extends StatelessWidget {
  const WorkspaceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WorkspaceDetailsPhoto(),
            WorkspaceNameAndDescription(),
            WorkspaceTabs(),
          ],
        ),
      ),
    );
  }
}
