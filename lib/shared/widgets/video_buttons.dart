import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/utils/helpers_functions.dart';
import "package:animate_do/animate_do.dart";

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  final bool isLiked;

  const VideoButtons({
    super.key,
    required this.video,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 20,
      right: 10,
      child: Column(
        children: [
          CustomButton(icon: Icons.favorite),
          CustomButton(icon: Icons.comment),
          CustomButton(
            icon: Icons.play_circle_outline,
            rotatingIcon: true,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final bool isLiked;
  final IconData icon;
  final Color activeColor;
  final Color inactiveColor;
  final bool rotatingIcon;

  const CustomButton({
    super.key,
    required this.icon,
    this.isLiked = false,
    this.activeColor = Colors.red,
    this.inactiveColor = Colors.white,
    this.rotatingIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: rotatingIcon == true
                ? SpinPerfect(
                    infinite: true,
                    duration: const Duration(seconds: 5),
                    child: Icon(
                      icon,
                      color: isLiked ? activeColor : inactiveColor,
                    ),
                  )
                : Icon(
                    icon,
                    color: isLiked ? activeColor : inactiveColor,
                  )),
        Text(formatNumber(1231345))
      ],
    );
  }
}
