import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/providers/home_provider/home_provider.dart';
import 'package:to_do_list/utils/common_functions.dart';
import 'package:to_do_list/views/home_page/home_page_widgets/tab_bar_complete_task_view.dart';
import 'package:to_do_list/views/home_page/home_page_widgets/tab_bar_task_view.dart';
import '../../views/home_page/home_page_widgets/center_text_area.dart';
import '../../views/home_page/home_page_widgets/custom_todo_tile.dart';
import '../../views/home_page/home_page_widgets/top_app_bat_tile.dart';
import '../../widgets/custom_snack_bar.dart';

class HomePageScreenWidget extends StatefulWidget {
  const HomePageScreenWidget({super.key});

  @override
  State<HomePageScreenWidget> createState() => _HomePageScreenWidgetState();
}

class _HomePageScreenWidgetState extends State<HomePageScreenWidget> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<HomeProvider>(context, listen: false).getdataFromApi(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                CommonFunction.printLog("Hello World");
                //CustomSnackBar.showToast(context, "APi Not Found");
              },
              child: const Icon(Icons.add)),
          backgroundColor: const Color.fromRGBO(8, 27, 38, 1),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                TopAppBarTile(),
                CenterTextArae(),
                TabBar(tabs: [Tab(text: "Tasks"), Tab(text: "Completed")]),
                Expanded(
                    child: TabBarView(children: [
                  //First TabView Screen
                  CustomTabBarTaskView(),
                  //Second TabView Screen
                  CustomTabBarCompleteTaskView()
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
