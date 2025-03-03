import 'package:flutter/material.dart';
import 'package:sports/core/utils/colors.dart';
import 'package:sports/core/utils/constats.dart';
import 'package:sports/features/home/presentation/views/form_body.dart';
import 'package:sports/features/home/presentation/views/widgets/home_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColors,
        onPressed: () {},
        child: Icon(Icons.check),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
          child: Column(
            children: [
              HomeTabBar(tabController: _tabController),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    FormBody(),
                    FormBody(),
                    FormBody(),
                    FormBody(),
                    FormBody(),
                    FormBody(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
