import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:q4m_website_template/feature/homePage/controller/category_controller.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/appbar_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/cafe_at_home_ads_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/categories_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/customized_list_view_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/footer_table_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/product_container_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/product_filter_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/search_bar_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/video_ads_widget.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useSearchController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // header with logo and menu icon - appbar
              AppBarWidget(),
              HomeBeforeLoginWidget(searchController: searchController),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeBeforeLoginWidget extends StatelessWidget {
  const HomeBeforeLoginWidget({super.key, required this.searchController});

  final SearchController searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // country and language selection
        CountryAndLanguageSelectorWidget(),
        //search bar
        SearchBarWidget(searchController: searchController),
        //login button
        // LoginAndSignupButtonWidget(),

        //cafe at home image - ads
        CafeatHomeAdsWidget(),
        SizedBox(height: 8),

        //categories
        CategoriesSelectorWidget(),

        CustomizedListViewWidget(text: 'Our Services', categories: services),
        CustomizedListViewWidget(text: 'Top Brands', categories: brands),
        CustomizedListViewWidget(
          text: 'Top Categories',
          categories: categories,
        ),
        // Advertisement Container
        VideoAdsWidget(),
        VideoAdsWidget(),

        // Products Filter Container
        ProductFilterWidget(),
        Row(
          children: [
            Text(
              "UAE - DUBAI offers in q4m Online",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),

        // Products
        ProductContainerWidget(),

        FooterTableWidget(),
      ],
    );
  }
}
