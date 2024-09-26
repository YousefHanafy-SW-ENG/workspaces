import 'package:flutter/material.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/helpers/spacer.dart';
import 'package:workspace/core/widgets/primary_app_bar.dart';
import 'package:workspace/core/widgets/primary_padding.dart';
import 'package:workspace/features/home/presentation/widgets/workspaces_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, context.height * 0.08),
        child: const PrimaryAppBar(title: AppStrings.workspaces),
      ),
      body: PrimaryPadding(
        child: Column(
          children: [
            verticalSpace(24),
            const WorkspacesList()
          ],
        ),
      ),
    );
  }
}
