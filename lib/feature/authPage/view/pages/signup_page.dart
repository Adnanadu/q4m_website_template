import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/appbar_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/footer_table_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/search_bar_widget.dart';

class SignupPage extends HookWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useSearchController();
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    AppBarWidget(),
                    CountryAndLanguageSelectorWidget(),
                    SearchBarWidget(searchController: searchController),

                    ///Register Form 
                  ],
                ),
              ),

              ///footer
              FooterTableWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
