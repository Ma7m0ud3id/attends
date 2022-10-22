import 'package:attends/Screen/Admin/Admin_Screen.dart';
import 'package:attends/Screen/User/UserScreen.dart';
import 'package:flutter/material.dart';

import 'Screen/Home_screen.dart';
import 'package:flutter_nearby_connections/flutter_nearby_connections.dart';
void main() {
  runApp( MyApp());
}
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => AdminScreen());
    case 'browser':
      return MaterialPageRoute(
          builder: (_) => DevicesListScreen(deviceType: DeviceType.browser));
    case 'advertiser':
      return MaterialPageRoute(
          builder: (_) => DevicesListScreen(deviceType: DeviceType.advertiser));
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('No route defined for ${settings.name}')),
          ));
  }
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName:(v)=>HomeScreen(),
        AdminScreen.routName:(v)=>AdminScreen(),
        UserScreen.routName:(c)=>UserScreen(),

      },

    );
  }
}


