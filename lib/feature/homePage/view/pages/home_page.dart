import 'package:flutter/material.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/cafe_at_home_ads_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/categories_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/customized_list_view_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/footer_table_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/login_and_signup_button_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/product_container_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/product_filter_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/search_bar_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/video_ads_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> services = [
      {'iconPath': 'assets/icons/icons_3.png', 'title': 'delivery'},
      {'iconPath': 'assets/icons/icons_4.jpg', 'title': 'Document'},
      {'iconPath': 'assets/icons/icons_5.jpg', 'title': 'Ticket'},
      {'iconPath': 'assets/icons/icons_6.jpg', 'title': 'Professional'},
    ];

    final List<Map<String, String>> brands = [
      {'iconPath': 'assets/icons/top_brand_logo_1.png'},
      {'iconPath': 'assets/icons/top_brand_logo_2.png'},
      {'iconPath': 'assets/icons/top_brand_logo_3.png'},
      {'iconPath': 'assets/icons/top_brand_logo_4.png'},
      {'iconPath': 'assets/icons/top_brand_logo_5.png'},
    ];
    final List<Map<String, String>> categories = [
      {'iconPath': 'assets/icons/catogaries_icon_1.png', 'title': 'Pharmacy'},
      {'iconPath': 'assets/icons/catogaries_icon_2.png', 'title': 'Fashions'},
      {'iconPath': 'assets/icons/catogaries_icon_3.png', 'title': 'Mobiles'},
      {
        'iconPath': 'assets/icons/catogaries_icon_4.png',
        'title': 'Electronics',
      },
      {'iconPath': 'assets/icons/catogaries_icon_5.png', 'title': 'Wellness'},
    ];
    SearchController searchController = SearchController();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('assets/icons/Q4M_logo.png')),
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                ],
              ),
              // country and language selection
              CountryAndLanguageSelectorWidget(),
              //search bar
              SearchBarWidget(searchController: searchController),
              //login button
              LoginAndSignupButtonWidget(),

              //cafe at home image - ads
              CafeatHomeAdsWidget(),
              SizedBox(height: 8),

              //categories
              CategoriesSelectorWidget(),

              CustomizedListViewWidget(
                text: 'Top Brands',
                categories: services,
              ),
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
          ),
        ),
      ),
    );
  }
}
