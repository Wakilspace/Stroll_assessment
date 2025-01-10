import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_interview_task/presentation/components/background.dart';
import 'package:scroll_interview_task/presentation/components/card.dart';
import 'package:scroll_interview_task/presentation/ui/colors.dart';
import 'package:scroll_interview_task/presentation/ui/type.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: strollBlack,
      body: Column(
        children: [
          Stack(
            children: [
              const Background(),
              Positioned(
                bottom: 0,
                left: 20.h,
                child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: const AssetImage('assets/Image.png'),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Angelina, 28',
                    style: TextStyle(
                      color: strollSilver,
                      fontSize: 12.sp,
                      fontWeight: StrollWeight.light,
                    ),
                  ),
                ],
                            ),
              ),
            ],
         ),
          SizedBox(height: 10.h),
          Text(
            'What is your favorite time\n of the day?',
            style: TextStyle(
              color: strollWhite,
              fontSize: 16.sp,
              fontWeight: StrollWeight.bold,
            ),
          ),
          Text(
            '“Mine is definitely the peace in the morning.”',
            style: TextStyle(
              color: strollWhite,
              fontSize: 10.sp,
              fontWeight: StrollWeight.light,
            ),
          ),
          const Expanded(child: CustomCard()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pick your option.\nSee who has a similar mind.',
                  style: TextStyle(
                    color: strollSilver,
                    fontSize: 12.sp,
                    fontWeight: StrollWeight.light,
                  ),
                ),
                Row(
                  children: [
                    Image.asset('assets/button1.png'),
                    Image.asset('assets/button2.png'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),


      bottomNavigationBar: Container(
        height: 70.h, // Reduced height of the BottomNavigationBar
        decoration: const BoxDecoration(
          color: strollBlack, // Explicit background color
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent, // Make it transparent since parent sets color
          type: BottomNavigationBarType.fixed, // Ensures all items are visible
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/pokercard.png',
                height: 24.h, // Adjust icon size
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Image.asset(
                    'assets/fire.png',
                    height: 24.h,
                  ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: NotificationBadge(),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Image.asset(
                    'assets/Icons.png',
                    height: 24.h,
                  ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: NotificationBadge(),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/User.png',
                height: 24.h,
              ),
              label: '',
            ),
          ],
          currentIndex: 0,
          onTap: (index) {
            // Handle item tap
          },
        ),
      ),
    );
  }
}

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8, // Dot width
      height: 8, // Dot height
      decoration: const BoxDecoration(
        color: strollPurple, // Badge color
        shape: BoxShape.circle, // Circular shape
      ),
    );
  }
}