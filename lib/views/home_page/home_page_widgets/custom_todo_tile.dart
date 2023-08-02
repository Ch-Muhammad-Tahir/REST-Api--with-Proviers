import 'package:flutter/material.dart';
import 'package:to_do_list/utils/media_query.dart';
import 'package:to_do_list/widgets/custom_icon_button.dart';

import '../../../widgets/custom_sized_box.dart';

class CustomTodoListTile extends StatelessWidget {
  final Color color;
  final IconData thumbnail;
  final String price;
  final String description;
  final String title;
  final VoidCallback onTickTab;
  final VoidCallback onTileTab;

  const CustomTodoListTile(
      {super.key,
      required this.color,
      required this.price,
      required this.onTickTab,
      required this.onTileTab,
      required this.description,
      required this.title,
      required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTileTab,
        child: Container(
            //color: Colors.blue.shade400,
            width: GetScreenSize.getScreenWidth(context),
            //height: GetScreenSize.getScreenHeight(context) * 0.2,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(35)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: GetScreenSize.getScreenWidth(context) * 0.06,
                        child: Icon(thumbnail),
                      ),
                      Row(
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    GetScreenSize.getScreenWidth(context) *
                                        0.05),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomIconButton(
                              iconData: Icons.done,
                              onTap: onTickTab,
                              buttonBackGroundColor: Colors.blueGrey.shade300),
                        ],
                      )
                    ],
                  ),
                  const CustomSizedBox(height: 20),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: GetScreenSize.getScreenWidth(context) * 0.05,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: GetScreenSize.getScreenWidth(context) * 0.07),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
