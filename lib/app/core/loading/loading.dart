import 'package:flutter/material.dart';

Widget loading(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height,
    child: const Center(
      child: SizedBox(
        height: 35.0,
        width: 35.0,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xff811ac0)),
        ),
      ),
    ),
  );
}
