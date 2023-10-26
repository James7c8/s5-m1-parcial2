import 'package:flutter/material.dart'
    show BuildContext, Icons, MaterialPageRoute, Route, RouteSettings, Widget;
import 'package:producto_cliente/models/menu_options.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'homescreen';

  // 1.
  static final menuOptions = [
    MenuOption(
        route: 'homescreen',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'productoscreen',
        name: 'Producto Screen',
        screen: const ProductoScreen(),
        icon: Icons.shopping_cart_outlined),
    MenuOption(
        route: 'clientescreen',
        name: 'Cliente Screen',
        screen: ClienteScreen(),
        icon: Icons.person),
    MenuOption(
        route: 'productocardscreen',
        name: 'Producto Card Screen',
        screen: const ProductoCardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'alertscreen',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.warning_amber_rounded),
    MenuOption(
        route: 'articuloscreen',
        name: 'Articulo Screen',
        screen: const ArticuloScreen(),
        icon: Icons.assignment),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var menuOption in menuOptions) {
      appRoutes.addAll({menuOption.route: (context) => menuOption.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

/*
1. Definir todas las propiedades de los routes en menuOptions nos da un solo 
   lugar donde se puede configurar y manejar toda la información de los routes. 
   Si hay que modificar el route o su icon, se hace en un solo lugar.
*/