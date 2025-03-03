import 'package:flutter/material.dart';
import 'package:sports/core/utils/constats.dart';
import 'package:sports/features/home/presentation/views/widgets/custom_drop_down.dart';
import 'package:sports/features/home/presentation/views/widgets/custom_text_field.dart';
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

class FormBody extends StatelessWidget {
  const FormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTextField(label: "Label", hint: "Hint Text..."),
        CustomTextField(label: "Label", hint: "Hint Text..."),
        CustomDropdown(
          label: "label",
          hint: "Hint Text...",
          onChanged: (value) {},
          items: ["Item1", "Item2", "Item3", "Item4"],
        ),
        CustomTextField(label: "Label", hint: "Hint Text..."),
        CustomTextField(label: "Label", hint: "Hint Text..."),
      ],
    );
  }
}
