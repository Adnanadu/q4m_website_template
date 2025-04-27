import 'package:flutter/material.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/appbar_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/categories_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/coupen_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/footer_table_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/product_filter_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/search_bar_widget.dart';

class CoupenPage extends StatelessWidget {
  const CoupenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = SearchController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // header with logo and menu icon - appbar
              AppBarWidget(),
              // country and language selection
              CountryAndLanguageSelectorWidget(),
              //search bar
              SearchBarWidget(searchController: searchController),
              //login button
              // LoginAndSignupButtonWidget(),
              SizedBox(height: 8),

              //categories
              CategoriesSelectorWidget(),

              // Products Filter Container
              ProductFilterWidget(),
              // Products
              CoupenWidget(),
              SizedBox(height: 32),

              FooterTableWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
