import 'package:findjob/features/onboarding/page_splash_screen.dart';
import 'package:findjob/providers/auth_provider.dart';
import 'package:findjob/providers/category_provider.dart';
import 'package:findjob/providers/job_provider.dart';
import 'package:findjob/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider()),
        ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider()),
        ChangeNotifierProvider<CategoryProvider>(
            create: (context) => CategoryProvider()),
        ChangeNotifierProvider<JobProvider>(create: (context) => JobProvider()),
      ],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: GetMaterialApp(
          home: PageSplashScreen(),
        ),
      ),
    );
  }
}
