import 'package:flutter/material.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              
            ],
          ),
        ),
      ),
    );
  }
}
