import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/helpers/extensions.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
