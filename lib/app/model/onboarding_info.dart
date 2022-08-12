import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingInfo {
  final SvgPicture imageAsset;
  final String title;
  final String bodyText;
  OnboardingInfo(this.imageAsset, this.title, this.bodyText);
}
