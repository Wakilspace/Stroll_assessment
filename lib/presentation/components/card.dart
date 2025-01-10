import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Assuming you are using screenutil for scaling
import 'package:scroll_interview_task/presentation/ui/type.dart';

import '../ui/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardData = [
      {"image": 'assets/a.png', "text": "The peace in the early mornings"},
      {"image": 'assets/b.png', "text": "The magical golden hours"},
      {"image": 'assets/c.png', "text": "Wind-down time after dinners"},
      {"image": 'assets/D.png', "text": "The serenity past midnight"},
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: cardData.length, // Total number of cards
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 16, // Spacing between columns
          mainAxisSpacing: 16, // Spacing between rows
          childAspectRatio: 2.5, // Aspect ratio of the cards
        ),
        itemBuilder: (context, index) {
          return Expanded(
            child: Card(
              color: const Color.fromARGB(33, 105, 105, 119),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // Rounded edges
              ),
              elevation: 4, // Card shadow
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Image.asset(
                      cardData[index]['image'], // Icon
                      
                    ),
                    const SizedBox(width: 8), // Space between icon and text
                    Flexible
                    (
                      child: Text(
                        cardData[index]['text'], // Text
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: fontFamily,
                          fontWeight: StrollWeight.light,
                          color: strollSilver,
                          ),
                          maxLines: 2, // Maximum number of lines
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
