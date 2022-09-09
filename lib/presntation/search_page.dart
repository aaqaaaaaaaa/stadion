import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stadion/presntation/widgets/capacity_of_fields_widget.dart';
import 'package:stadion/presntation/widgets/day_of_widget.dart';
import 'package:stadion/presntation/widgets/fields_type_widget.dart';
import 'package:stadion/presntation/widgets/payments_type_widget.dart';
import 'package:stadion/presntation/widgets/working_hours_widget.dart';

import 'styles.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          height: 36.h,
          margin: EdgeInsets.symmetric(horizontal: 14.w),
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          decoration: BoxDecoration(
              color: iconBackColor, borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/search.svg'),
              SizedBox(width: 14.w),
              Expanded(
                child: Text(
                  'Maydonlarni qidirish...',
                  style: TextStyle(
                      color: const Color(0xff23C16B),
                      fontSize: 16.sp,
                      fontFamily: 'Inter-Regular'),
                ),
              ),
              SvgPicture.asset('assets/icons/filter.svg'),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 20,
                  child: const VerticalDivider(
                      color: Color(0xffE3E5E6), width: 1)),
              SvgPicture.asset('assets/icons/filter2.svg'),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 20,
                  child: const VerticalDivider(
                      color: Color(0xff4CD571), width: 1)),
              SvgPicture.asset('assets/icons/bookmark.svg'),
            ],
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 18.h),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 20.h),
              padding: EdgeInsets.only(bottom: 10.h),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE3E5E5)),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10.r)),
                    child: Image.asset(
                      'assets/images/Image_stadium.png',
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                      height: 189.h,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                        dividerColor: Colors.transparent,
                        splashColor: Colors.white,
                        highlightColor: Colors.transparent),
                    child: ExpansionTile(
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: EdgeInsets.only(right: 10.w),
                              height: 35.h,
                              width: 35.w,
                              decoration: BoxDecoration(
                                  color: iconBackColor,
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: SvgPicture.asset(
                                  'assets/icons/map-pin.svg',
                                  height: 16.h,
                                  width: 16.w),
                            ),
                            Text('Chilonzor, 24 kvartal',
                                style: TextStyle(
                                    fontFamily: 'Inter-Medium',
                                    color: const Color(0xff6C7072),
                                    fontSize: 14.sp)),
                          ],
                        ),
                      ),
                      childrenPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      title: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Text('Uzarena Stadium',
                            style: TextStyle(
                                fontFamily: 'Inter-Medium',
                                color: const Color(0xff303437),
                                fontSize: 18.sp)),
                      ),
                      children: [
                        const Divider(color: Color(0xffEBEBEB)),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.w),
                                    child: Text(
                                      'Dam olish kunlari',
                                      style: titleStyle,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const DayOffWidget(title: "Sesh"),
                                      SizedBox(width: 5.w),
                                      const DayOffWidget(title: "Pay"),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.w),
                                    child:
                                        Text('Ish vaqtlari', style: titleStyle),
                                  ),
                                  Row(
                                    children: [
                                      const WorkingHoursWidget(time: '07:00'),
                                      SizedBox(width: 5.w),
                                      const WorkingHoursWidget(time: '07:00'),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(color: Color(0xffEBEBEB)),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const FieldsTypeWidget(
                                  fieldType: 'Stadion',
                                  icon: 'assets/icons/futsal 1.svg'),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10.w),
                                      child: Text(
                                        'To‘lov shakli',
                                        style: titleStyle,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const PaymentsTypeWidget(
                                          icon: 'assets/icons/credit-card.svg',
                                          isPaymentTypeHave: true,
                                        ),
                                        SizedBox(width: 5.w),
                                        const PaymentsTypeWidget(
                                          icon: 'assets/icons/money_ic.svg',
                                          isPaymentTypeHave: false,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(color: Color(0xffEBEBEB)),
                        Container(
                          margin: EdgeInsets.only(top: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10.w),
                                      child: Text(
                                        'Maydonlar sig\'imi',
                                        style: titleStyle,
                                      ),
                                    ),
                                    const CapacityOfFieldsWidget(
                                      title: 'A',
                                      price: 60000,
                                      number: 5,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}


