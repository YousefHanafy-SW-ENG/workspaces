import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 20.h),
            child: GestureDetector(
              onTap: (){
                context.pop();
              },
              child: Container(
                width: 50.w,
                height: 50.h,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                ),
                child: Center(child: Icon(Icons.arrow_back,size: 33.r,),),
              ),
            ),
          ),
        )
      ],
    );
  }
}
