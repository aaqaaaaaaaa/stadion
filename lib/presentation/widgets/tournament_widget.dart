import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stadion/presentation/widgets/transfer_widget.dart';

class TournamentWidget extends StatelessWidget {
  const TournamentWidget(
      {Key? key, required this.image, required this.description})
      : super(key: key);
  final String image, description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 129.h,
      width: 129.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: Stack(
          fit: StackFit.expand,
          // alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/cubok.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10.h,
              // left: 5.w,
              // right: 5.w,
              width: 129.w,
              child: Center(
                child: Text(
                  description,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: 'Inter-Medium'),
                ),
              ),
            ),
            SizedBox(height: 10.h),

          ],
        ),
      ),
    );
  }
}
