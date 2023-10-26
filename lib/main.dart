import 'package:flutter/material.dart';
import 'package:producto_cliente/routes/app_routes.dart';

void main() => runApp(const Tienda());

class Tienda extends StatelessWidget {
  const Tienda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute, // 1.
      theme: ThemeData.light(),
    );
  }
}

/*
1. Todos los onLoQueSea requiren una función. En este caso, la función es
   onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings)
   pero cuando la función recibe un solo parámetro, se puede simplificar.
*/
