import 'package:cleanarchi/core/constants/my_colors.dart';
import 'package:cleanarchi/core/constants/my_strings.dart';
import 'package:cleanarchi/core/themes/app_themes.dart';
import 'package:cleanarchi/notificationservices/local_notification_service.dart';
import 'package:cleanarchi/presentation/routes/router_imports.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';
Future<void> backgroundHandler( RemoteMessage message) async{
  print(message.data.toString());
  print(message.notification!.title);
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  LocalNotificationService.initialize();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme:AppThemes.light,
          darkTheme: AppThemes.dark,
          routerConfig: _appRouter.config(),
          builder: EasyLoading.init(),
        );
      }
    );
  }
}

