import 'package:flutter/material.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/appbar_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/footer_table_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/search_bar_widget.dart';

class ProductDescriptionPage extends StatelessWidget {
  final int index;

  const ProductDescriptionPage({super.key, required this.index});

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
              // Products Filter Container
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 79,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF2CC457),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Icon(Icons.home, color: Color(0xFF2CC457)),
                        ),
                        Container(
                          width: 136,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF2CC457),
                            border: Border.all(
                              color: Color(0xFF2CC457),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: Text(
                              'Shope Online',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: '/productImage_$index',
                      child: Image(
                        image: AssetImage('assets/images/product.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("page 1 / 12"),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ],
              ),

              FooterTableWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
