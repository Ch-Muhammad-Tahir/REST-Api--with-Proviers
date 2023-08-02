import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/providers/home_provider/home_provider.dart';
import 'package:to_do_list/views/home_page/home_page_screen.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<HomeProvider>(create: (context) => HomeProvider())
    ],
    child: const MaterialApp(
      home: HomePageScreenWidget(),
    ),
  ));
}
