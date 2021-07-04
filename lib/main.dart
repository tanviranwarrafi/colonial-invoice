import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/controllers/take-photo-controller.dart';
import 'package:colonial_invoice/screens/welcome-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//flutter build apk --split-per-abi
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => InvoiceController()),
        ChangeNotifierProvider(create: (_) => TakePhotoController()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colonial Invoice',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      color: Colors.lightGreen,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
