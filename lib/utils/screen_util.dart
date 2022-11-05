import 'package:flutter/material.dart';

bool isScreenS(BuildContext context) {
  return getScreenWidth(context) < 576;
}

bool isScreenM(BuildContext context) {
  return getScreenWidth(context) >= 576 && getScreenWidth(context) < 768;
}

bool isScreenL(BuildContext context) {
  return getScreenWidth(context) >= 768 && getScreenWidth(context) < 992;
}

bool isScreenXL(BuildContext context) {
  return getScreenWidth(context) >= 992;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
