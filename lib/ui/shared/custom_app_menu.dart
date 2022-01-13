import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => ( constraints.maxWidth > 520 )
          ? _TabletDesktopMenu()
          : _MobileMenu()
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(children: [
        CustomFlatButton(
          text: 'Contador Statfull', 
          // onPressed: () => Navigator.pushNamed(context, '/stateful'),
          onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
          color: Colors.black,
        ),
        const SizedBox( width: 10),
        CustomFlatButton(
          text: 'Contador Provider', 
          // onPressed: () => Navigator.pushNamed(context, '/provider'),
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          color: Colors.black,
        ),
        const SizedBox( width: 10),
        CustomFlatButton(
          text: 'Otra Página', 
          // onPressed: () => Navigator.pushNamed(context, '/abc123'),
          onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          color: Colors.black,
        ),
      ],),
    );
  }
}
class _MobileMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomFlatButton(
          text: 'Contador Statfull', 
          // onPressed: () => Navigator.pushNamed(context, '/stateful'),
          onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
          color: Colors.black,
        ),
        const SizedBox( width: 10),
        CustomFlatButton(
          text: 'Contador Provider', 
          // onPressed: () => Navigator.pushNamed(context, '/provider'),
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          color: Colors.black,
        ),
        const SizedBox( width: 10),
        CustomFlatButton(
          text: 'Otra Página', 
          // onPressed: () => Navigator.pushNamed(context, '/abc123'),
          onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          color: Colors.black,
        ),
      ],),
    );
  }
}