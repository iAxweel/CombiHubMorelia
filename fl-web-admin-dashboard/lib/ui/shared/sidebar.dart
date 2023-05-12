import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:admin_dashboard/providers/sidemenu_provider.dart';

import 'package:admin_dashboard/router/router.dart';

import 'package:admin_dashboard/services/navigation_service.dart';

import 'package:admin_dashboard/ui/shared/widgets/menu_item.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';

class Sidebar extends StatelessWidget {
  void navigateTo(String routeName) {
    NavigationService.replaceTo(routeName);
    SideMenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {
    final sideMenuProvider = Provider.of<SideMenuProvider>(context);

    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Logo(),
          SizedBox(height: 30),
          TextSeparator(text: 'Principal'),
          MenuItems(
            text: 'Dashboard',
            icon: Icons.compass_calibration_outlined,
            onPressed: () => navigateTo(Flurorouter.dashboardRoute),
            isActive:
                sideMenuProvider.currentPage == Flurorouter.dashboardRoute,
          ),
          MenuItems(
              text: 'Análisis',
              icon: Icons.show_chart_outlined,
              onPressed: () {}),
          MenuItems(
            text: 'Paradas',
            icon: Icons.map_sharp,
            onPressed: () => navigateTo(Flurorouter.categoriesRoute),
            isActive:
                sideMenuProvider.currentPage == Flurorouter.categoriesRoute,
          ),
          MenuItems(
            text: 'Usuarios',
            icon: Icons.people_alt_outlined,
            onPressed: () => navigateTo(Flurorouter.usersRoute),
            isActive: sideMenuProvider.currentPage == Flurorouter.usersRoute,
          ),
          SizedBox(height: 30),
          TextSeparator(text: 'Otras opciones'),
          MenuItems(
            text: 'Opción 1',
            icon: Icons.list_alt_outlined,
            onPressed: () => navigateTo(Flurorouter.iconsRoute),
            isActive: sideMenuProvider.currentPage == Flurorouter.iconsRoute,
          ),
          MenuItems(
              text: 'Opción 2',
              icon: Icons.mark_email_read_outlined,
              onPressed: () {}),
          MenuItems(
              text: 'Opción 3',
              icon: Icons.note_add_outlined,
              onPressed: () {}),
          MenuItems(
            text: 'Opción 4',
            icon: Icons.post_add_outlined,
            onPressed: () => navigateTo(Flurorouter.blankRoute),
            isActive: sideMenuProvider.currentPage == Flurorouter.blankRoute,
          ),
          SizedBox(height: 50),
          TextSeparator(text: 'Salir'),
          MenuItems(
              text: 'Cerrar Sesión',
              icon: Icons.exit_to_app_outlined,
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).logout();
              }),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(colors: [
        Color(0xff092044),
        Color(0xff092042),
      ]),
      boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)]);
}
