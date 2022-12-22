import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_file_sharing_app/app/dummyData/theme_settings.dart';
import 'app/views/splash/splash_view.dart';
import 'package:flutter_file_sharing_app/firebase_options.dart';
import 'package:provider/provider.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeSettings()),
      ],
      child: Consumer<ThemeSettings>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: value.darkTheme ? darkTheme : lightTheme,
            home: const SplashView(),
          );
        },
      ),
    );
  }
}
