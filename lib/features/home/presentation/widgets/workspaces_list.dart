import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workspace/core/helpers/extensions.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/core/theming/styles.dart';
import 'package:workspace/features/home/presentation/cubit/home_cubit.dart';
import 'package:workspace/features/home/presentation/cubit/home_states.dart';
import 'package:workspace/features/home/presentation/widgets/workspace_item.dart';
import 'package:workspace/features/workspace_details/presentation/widgets/workspace_details_arguments.dart';

class WorkspacesList extends StatelessWidget {
  const WorkspacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return _buildBody(context, state);
      },
    );
  }
  Widget _buildBody(BuildContext context, HomeStates state) {
    if (state is HomeSuccessState) {
      return Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: state.workspaces.length,
          itemBuilder: (context,index){
            final workspace = state.workspaces[index];
            return WorkSpaceItem(
                workspaceName: workspace.name,
                capacity: workspace.capacity,
                location: workspace.location,
                firstAmenity: workspace.availableAmenities[0],
                secondAmenity: workspace.availableAmenities[1],
                onTap: ()=>context.pushNamed(
                    Routes.workspaceDetailsScreen,
                    arguments: WorkspaceDetailsArguments(
                    name: workspace.name,
                    location: workspace.location,
                    capacity: workspace.capacity,
                    availableAmenities: workspace.availableAmenities,
                  ),
                ),
            );
          },
        ),
      );
    } else if (state is HomeLoadingState) {
      return const Center(child: CircularProgressIndicator.adaptive());
    } else if (state is HomeErrorState) {
      return Center(child: Text(state.error??'',style: TextStyles.font18BlackSemiBold,));
    } else {
      return const SizedBox.shrink();
    }
  }
}
