import 'package:go_router/go_router.dart';
import 'package:q4m_website_template/feature/authPage/view/pages/auth_page.dart';
import 'package:q4m_website_template/feature/homePage/view/pages/coupen_page.dart';
import 'package:q4m_website_template/feature/homePage/view/pages/home_page.dart';
import 'package:q4m_website_template/feature/homePage/view/pages/product_description_page.dart';

final router = GoRouter(
  initialLocation: '/home',

  routes: [
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'auth',
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      name: 'coupen',
      path: '/coupen',
      builder: (context, state) => const CoupenPage(),
    ),
    GoRoute(
      name: 'productDetailsPage',
      path: '/productDetailsPage',

      builder: (context, state) {
        // Pass the extra parameter to ProductDescriptionPage
        final int index = state.extra as int;
        return ProductDescriptionPage(index: index);
      },
    ),
  ],
);
