import 'package:flutter/material.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/login_and_signup_button_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/search_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SearchController searchController = SearchController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image(image: AssetImage('assets/icons/Q4M_logo.png')),
          actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // country and language selection
              CountryAndLanguageSelectorWidget(),
              //search bar
              SearchBarWidget(searchController: searchController),
              //login button
              LoginAndSignupButtonWidget(),

              //cafe at home image
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 108,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/cafe_at_home.png'),
                ),
              ),
              SizedBox(height: 8),

              //categories
            ],
          ),
        ),
      ),
    );
  }
}
