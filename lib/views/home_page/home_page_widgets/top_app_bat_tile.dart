import 'package:flutter/material.dart';

import '../../../utils/media_query.dart';
import '../../../widgets/custom_icon_button.dart';

class TopAppBarTile extends StatelessWidget {
  const TopAppBarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: GetScreenSize.getScreenWidth(context) * 0.06,
          child: const Icon(Icons.person),
        ),
        Row(
          children: [
            CustomIconButton(
                onTap: () {},
                iconData: Icons.notifications_none,
                buttonBackGroundColor: Colors.grey.shade700),
            SizedBox(
              width: 10,
            ),
            CustomIconButton(
                onTap: () {},
                iconData: Icons.add,
                buttonBackGroundColor: Colors.grey.shade700)
          ],
        )
      ],
    );
  }
}
