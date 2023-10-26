import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: EdgeInsets.only(top: 2.h, left: 4.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth / 1.1,
                  height: 10.h,
                  decoration:
                      BoxDecoration(color: const Color(0xffD18585), boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                        offset: const Offset(4, 4))
                  ]),
                  alignment: Alignment.centerLeft,
                  padding:
                      EdgeInsets.only(left: 3.w, top: 1.5.h, bottom: 1.5.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: const Color(0xffC4C4C4),
                        width: 150,
                        height: 2.5.h,
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        color: const Color(0xffA8D8AD),
                        height: 2.8.h,
                        width: constraints.maxWidth / 1.22,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Stack(alignment: Alignment.topCenter, children: [
                  Container(
                    padding:
                        EdgeInsets.only(bottom: 1.5.h, left: 3.w, right: 3.w),
                    margin: EdgeInsets.only(top: 2.8.h),
                    decoration: BoxDecoration(
                      color: const Color(0xffD18585),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                            offset: const Offset(4, 4))
                      ],
                    ),
                    height: 10.h,
                    width: constraints.maxWidth / 1.18,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: constraints.maxWidth / 1.2,
                          color: const Color(0xffA8D8AD),
                          height: 2.8.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xffC4C4C4),
                    width: 180,
                    height: 4.5.h,
                  ),
                ]),
              ],
            ),
          );
        }),
      ),
    );
  }
}
