import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/providers/home_provider/home_provider.dart';
import 'package:to_do_list/views/home_page/home_page_widgets/custom_todo_tile.dart';

class CustomTabBarTaskView extends StatelessWidget {
  const CustomTabBarTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              print("${provider.products[index].title}");
              return CustomTodoListTile(
                onTickTab: () {
                  print("On Tick Tab");
                },
                onTileTab: () {
                  print("On Tile Tab");
                },
                price: "\$${provider.products[index].price}",
                color: Colors.blue.shade400,
                title: provider.products[index].title,
                description: provider.products[index].description,
                thumbnail: Icons.production_quantity_limits_rounded,
              );
            },
            itemCount: provider.products.length);
      },
    );
  }
}
