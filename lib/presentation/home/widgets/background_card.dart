import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(homeImage2),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomHomeButtonWidget(icon: Icons.add, title: "My List"),
              _PlayButton(),
              CustomHomeButtonWidget(icon: Icons.info, title: " Info"),
            ],
          ),
        ),
      ],
    );
  }
}

TextButton _PlayButton() {
  return TextButton.icon(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
    ),

    onPressed: () {},
    label: Text("Play", style: TextStyle(fontSize: 20, color: kBlackColor)),
    icon: Icon(Icons.play_arrow, size: 30, color: kBlackColor),
  );
}
