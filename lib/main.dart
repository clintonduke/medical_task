import 'package:youtube_app/src/ui/home_tabbar.dart';
import './src/allpackage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  String? token = await FirebaseMessaging.instance.getToken();
  print('FCM Token: $token');
  commonFuntion = CommonFuntion();
  commonFuntion.myfcm = token.toString();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      home: const HomeBottomtabbar(),
    );
  }
}
