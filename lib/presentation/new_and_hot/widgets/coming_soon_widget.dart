import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            child: Column(
              children: [
                Text(
                  "FEB",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kGrayColor,
                  ),
                ),
                Text(
                  "11",

                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            // height: 500,
            width: screenSize.width - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network(
                        'https://media.themoviedb.org/t/p/w500_and_h282_face/b0PlSFdDwbyK0cf5RxwDpaOJQvQ.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: kBlackColor.withAlpha(100),
                        radius: 25,
                        child: IconButton(
                          color: kWhiteColor,
                          onPressed: () {},
                          icon: Icon(Icons.volume_mute_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight,
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TALL GIRL 2",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomHomeButtonWidget(
                          icon: Icons.all_out_sharp,
                          title: "Remind me",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kWidth,
                        CustomHomeButtonWidget(
                          icon: Icons.info,
                          title: "Info",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kWidth,
                      ],
                    ),
                  ],
                ),
                kHeight,
                Text("Coming on Friday"),
                kHeight,
                Text(
                  "TALL GIRL 2",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                kHeight,
                Text(
                  "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence — and her relationship — into a tailspin.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
