import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/country_and_language_selector_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/footer_table_widget.dart';
import 'package:q4m_website_template/feature/homePage/view/widgets/search_bar_widget.dart';
import 'package:q4m_website_template/feature/vendorPage/view/widgets/agree_term_widget.dart';
import 'package:q4m_website_template/core/widgets/customized_elevated_button_widget.dart';
import 'package:q4m_website_template/feature/vendorPage/view/widgets/customized_text_field_widget.dart';
import 'package:q4m_website_template/feature/vendorPage/view/widgets/store_category_Widget.dart';
import 'package:q4m_website_template/feature/vendorPage/view/widgets/store_description_widget.dart';
import 'package:q4m_website_template/feature/vendorPage/view/widgets/upload_box_widget.dart';
import 'package:q4m_website_template/feature/vendorPage/view/widgets/upload_data_picker_widget.dart';

class VendorRegistrationPage extends HookWidget {
  const VendorRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///controllers
    final searchController = useSearchController();
    final storeNameController = useTextEditingController();
    final businessRegistrationNumberController = useTextEditingController();
    final storeLocationController = useTextEditingController();
    final contactNumberController = useTextEditingController();
    final emailAddressController = useTextEditingController();
    final operatingHoursController = useTextEditingController();
    final storeCategoryController = useTextEditingController();
    final storeCategoryValue = useState<String>('Select Store Category');
    final storeDescriptionController = useTextEditingController();
    final storeCategoryList = useState<List<String>>([
      'Grocery',
      'Electronics',
      'Clothing',
      'Furniture',
      'Toys',
      'Books',
      'Sports',
      'Beauty',
      'Health',
    ]);
    final isAgree = useState<bool>(false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // header with logo and menu icon - appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('assets/icons/Q4M_logo.png')),
                  // menu icon
                  SizedBox(width: 8),

                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                ],
              ),
              CountryAndLanguageSelectorWidget(),
              SearchBarWidget(searchController: searchController),

              //// Register as a vendor Form
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// back Text button
                      Row(
                        children: [
                          SizedBox(
                            width: 64,
                            child: InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: Colors.black,
                                    size: 12,
                                    weight: 500,
                                  ),
                                  Text(
                                    '  Back',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              "Register as a Vendor",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Join our network of trusted hypermarket vendors",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF4B5563),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        'Business Information',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      ///Store Name TextField
                      CustomizedTextFieldWidget(
                        text: 'Store Name',
                        hintText: 'Enter store name',
                        keyboardType: TextInputType.text,
                        textController: storeNameController,
                      ),

                      ///Business Registration Number TextField
                      CustomizedTextFieldWidget(
                        text: 'Business Registration Number',
                        hintText: 'Enter business registration number',
                        keyboardType: TextInputType.number,
                        textController: businessRegistrationNumberController,
                      ),

                      ///Store Location TextField
                      CustomizedTextFieldWidget(
                        text: 'Store Location',
                        hintText: 'Enter store location',
                        keyboardType: TextInputType.text,
                        textController: storeLocationController,
                      ),

                      ///Contact Number TextField
                      CustomizedTextFieldWidget(
                        text: 'Contact Number',
                        hintText: 'Enter contact number',
                        keyboardType: TextInputType.phone,
                        textController: contactNumberController,
                      ),

                      ///Email Address TextField
                      CustomizedTextFieldWidget(
                        text: 'Email Address',
                        hintText: 'Enter email address',
                        keyboardType: TextInputType.emailAddress,
                        textController: emailAddressController,
                      ),
                      Text(
                        'Store Details',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 16),

                      ///Store category dropdown
                      // StoreCategoryWidget(),
                      StoreCategoryWidget(
                        storeCategoryValue: storeCategoryValue,
                        storeCategoryList: storeCategoryList,
                        storeCategoryController: storeCategoryController,
                      ),

                      ///Operating Hours TextField
                      CustomizedTextFieldWidget(
                        text: 'Operating Hours',
                        hintText: 'e.g. 9:00 AM - 10:00 PM',
                        keyboardType: TextInputType.text,
                        textController: operatingHoursController,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Store Description',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      StoreDescriptionWidget(
                        storeDescriptionController: storeDescriptionController,
                      ),
                      SizedBox(height: 16),

                      SizedBox(height: 16),

                      UploadBoxWidget(),
                      SizedBox(height: 8),

                      UploadDataPickerWidget(),
                      SizedBox(height: 16),

                      AgreeTermsWidget(isAgree: isAgree),
                      SizedBox(height: 16),
                      CustomizedElevatedButtonWidget(
                        text: 'Register Now',
                        width: double.infinity,

                        onTap: () {
                          if (isAgree.value == true) {
                            context.push('/coupen');
                          }
                        },
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF676A71),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.push('/login');
                            },
                            child: Text(
                              'Login here',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1977F2),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                    ],
                  ),
                ),
              ),

              FooterTableWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
