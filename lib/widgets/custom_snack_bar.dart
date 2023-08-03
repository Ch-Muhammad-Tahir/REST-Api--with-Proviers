import 'package:flutter/material.dart';
import 'package:to_do_list/utils/media_query.dart';
import 'package:to_do_list/widgets/custom_sized_box.dart';

class CustomSnackBar {
  static void showToast(BuildContext context, String text) {
    var scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      content: Container(
        height: GetScreenSize.getScreenHeight(context) * 0.1,
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
              bottom: 0,
              left: -10,
              child: Image.asset("assets/abc.png",
                  height: 120, color: Colors.red)),
          Row(
            children: [
              const CustomSizedBox(
                width: 100,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Paai jaan Error!",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          text,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
          Positioned(
              top: 10,
              left: 40,
              child: Image.asset(
                "assets/close.png",
                height: 20,
                color: Colors.yellow,
              )),
        ]),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,

      // margin: const EdgeInsets.all(20),

      // action: SnackBarAction(
      //   label: "Okay",
      //   onPressed: scaffold.hideCurrentSnackBar,
      // ),
    ));
  }
}
