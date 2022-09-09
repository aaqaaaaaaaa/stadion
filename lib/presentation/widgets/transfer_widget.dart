import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransferMarketWidget extends StatelessWidget {
  const TransferMarketWidget(
      {Key? key,
      required this.transferName,
      required this.reyting,
      required this.shit,
      required this.yosh,
      required this.address})
      : super(key: key);
  final String transferName, reyting, shit, yosh, address;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265.w,
      height: 81.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: const Color(0xffE3E5E5), width: 1)),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            height: 67.h,
            width: 67.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child:
                  Image.asset('assets/images/Image (1).png', fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 14.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transferName,
                style: TextStyle(
                    color: const Color(0xff404446),
                    fontFamily: 'Inter-Medium',
                    fontSize: 16.sp),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/Vector (1).svg'),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 5.w),
                    child: Text(
                      reyting,
                      style: TextStyle(
                          fontFamily: 'Inter-Regular',
                          fontSize: 10.sp,
                          color: const Color(0xff23C16B)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 5.w),
                      height: 15,
                      child: const VerticalDivider(
                          color: Color(0xffEEEEEE), width: 1)),
                  SvgPicture.asset('assets/icons/Group 388.svg'),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 5.w),
                    child: Text(
                      shit,
                      style: TextStyle(
                          fontFamily: 'Inter-Regular',
                          fontSize: 10.sp,
                          color: const Color(0xff23C16B)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 5.w),
                      height: 15,
                      child: const VerticalDivider(
                          color: Color(0xffEEEEEE), width: 1)),
                  Text(
                    '$yosh yosh',
                    style: TextStyle(
                        fontFamily: 'Inter-Regular',
                        fontSize: 10.sp,
                        color: const Color(0xff23C16B)),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                address,
                style: TextStyle(
                    fontFamily: 'Inter-Regular',
                    fontSize: 12.sp,
                    color: const Color(0xff979C9E)),
              )
            ],
          )
        ],
      ),
    );
  }
}
