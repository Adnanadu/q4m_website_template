import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:q4m_website_template/feature/homePage/view/pages/home_page.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/appbar_after_login.dart';

class HomeAfterLoginPage extends HookWidget {
  const HomeAfterLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useSearchController();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // header with logo and menu icon - appbar
              AppBarAfterLoginWidget(),

              HomeBeforeLoginWidget(searchController: searchController),
            ],
          ),
        ),
      ),
    );
  }
}
