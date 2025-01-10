import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui/colors.dart';
import '../ui/type.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: 500.h,
        ),
        Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle dropdown logic here
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Stroll Bonfire',
                        style: TextStyle(
                          color: strollPale,
                          fontSize: 30.sp,
                          fontWeight: StrollWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: strollSilver,
                      ),
                    ],
                  ),
                ),
                // Dropdown items
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/clock.png',
                          width: 20.w,
                          height: 20.h,
                        ),
                         Text(
                          '22h 00m',
                          style: TextStyle(
                            color: strollWhite,
                            fontSize: 12.sp,
                            fontWeight: StrollWeight.regular,
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Image.asset(
                          'assets/profile.png',
                          width: 20.w,
                          height: 20.h,
                        ),
                         Text(
                          '103',
                          style: TextStyle(
                            color: strollWhite,
                            fontSize: 12.sp,
                            fontWeight: StrollWeight.regular,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}
