import 'package:flutter/material.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/core/widgets/button_bottom_nav_bar.dart';
import 'package:workspace/core/widgets/primary_button.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/custom_back_arrow.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_details_photo.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_name_description.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_tabs.dart';

class WorkspaceDetailsScreen extends StatelessWidget {
  final String name;
  final String location;
  final String capacity;
  final List<String> availableAmenities;
  const WorkspaceDetailsScreen({
    super.key,
    required this.name,
    required this.location,
    required this.capacity,
    required this.availableAmenities
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WorkspaceDetailsPhoto(),
                WorkspaceNameAndDescription(name: name,),
                WorkspaceTabs(
                  location: location,
                  capacity: capacity,
                  firstAmenity: availableAmenities[0],
                  secondAmenity: availableAmenities[1],
                ),
              ],
            ),
          ),
          const CustomBackArrow(),
        ],
      ),
      bottomNavigationBar: ButtonBottomNavBar(
        button: PrimaryButton(
          text: AppStrings.bookNow,
          onTap: ()=>context.pushNamed(Routes.bookingScreen),
        ),
      ),
    );
  }
}
