import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../styles.dart';

class CapacityOfFieldsWidget extends StatelessWidget {
  const CapacityOfFieldsWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.number,
  }) : super(key: key);
  final String title;
  final int price;
  final int number;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(bottom: 8.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                    color: const Color(0xff979C9E),
                    fontSize: 18.sp,
                    fontFamily: 'Inter-Bold'),
              ),
              Container(
                height: 32.h,
                width: 172.w,
                margin: EdgeInsets.only(left: 5.w),
                decoration: BoxDecoration(
                    color: iconBackColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8.r)),
                alignment: Alignment.center,
                child: Text(
                  '${number}x$number - $price UZS',
                  style: styleRegular16,
                ),
              ),
              Container(
                width: 101.w,
                height: 32.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: const Color(0xff23C16B)),
                margin: EdgeInsets.only(left: 8.w),
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Band qilish',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: 'Inter-Medium'),
                    ),
                    SizedBox(width: 8.w),
                    SvgPicture.asset('assets/icons/arrow_Icon.svg')
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
