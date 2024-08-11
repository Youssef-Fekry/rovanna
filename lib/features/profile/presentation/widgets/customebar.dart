import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';

class Customebar extends StatelessWidget {
  const Customebar(
      {super.key, required this.text, required this.icon, required this.ontap});
  final String text;
  final Icon icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: const Color(0xFFEEEEEE),
            height: 40,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: ontap,
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: ontap, icon: icon)
              ],
            ),
          ),
        ));
  }
}
