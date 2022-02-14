import 'package:flutter/material.dart';

double getPercentH(double percent, BuildContext context) =>
    (MediaQuery.of(context).size.height * percent) / 100;
double getPercentW(double percent, BuildContext context) =>
    (MediaQuery.of(context).size.width * percent) / 100;
