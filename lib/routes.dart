import 'package:flutter/material.dart';
import 'package:my_portfolio/web/leading_page_web.dart';

import 'mobile/leading_page_mobile.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constriant) {
              if (constriant.maxWidth > 800) {
                return LeadingPageWeb();
              } else {
                return LeadingPageMobile();
              }
            },
          ),
        );

      default:

        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
    }


  }
}
