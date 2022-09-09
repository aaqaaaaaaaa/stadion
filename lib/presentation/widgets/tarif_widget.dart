import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TarifWidget extends StatelessWidget {
  const TarifWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      height: 255.h,
      decoration: BoxDecoration(
        color: const Color(0xff0078FF),
        borderRadius: BorderRadius.circular(11.32.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 23.h),
            child: Text('Oddiy', style: tSWhiteReg14),
          ),
          Text(
            '\$60.99',
            style: TextStyle(
                color: Colors.white,
                fontSize: 33.95.sp,
                fontFamily: 'Inter-Bold'),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 23.h, top: 9.h),
            child: Text('Yillik', style: tSWhiteReg14),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 37.w),
            child: Text('Stadionlarni qidirish va oldindan band qilish',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontFamily: 'Inter-Regular')),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(17.w, 12.h, 17.w, 15.h),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.95.r))),
                  fixedSize: MaterialStateProperty.all(Size(186.w, 34.h))),
              child: Text(
                'Tarifga o’tish',
                style: TextStyle(
                    color: const Color(0xff0078FF),
                    fontSize: 11.32.sp,
                    fontFamily: 'Inter-Medium'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

TextStyle tSWhiteReg14 = TextStyle(
    color: Colors.white, fontSize: 14.sp, fontFamily: 'Inter-Regular');
