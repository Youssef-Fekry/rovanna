import 'package:go_router/go_router.dart';
import 'package:rovanna_app/features/categories/presentation/views/assessoriesscreen.dart';
import 'package:rovanna_app/features/categories/presentation/views/cosmeticsscreen.dart';
import 'package:rovanna_app/features/categories/presentation/views/fashionscreen.dart';
import 'package:rovanna_app/features/home/presentation/views/homescreen.dart';
import 'package:rovanna_app/features/home/presentation/widgets/custmebottombar.dart';
import 'package:rovanna_app/features/profile/presentation/views/aboutusscreen.dart';
import 'package:rovanna_app/features/profile/presentation/views/loginscreen.dart';
import 'package:rovanna_app/features/profile/presentation/views/registerscreen.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/signup.dart';
import 'package:rovanna_app/features/splash/presentation/views/splashscreen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetialsView = '/bookDetialsView';
  static const kSearchView = '/searchView';
  static const kcustomebottombar = '/Custmebottombar';
  static const kFashionScreen = '/fashionscreen';
  static const kAccessoriesScreen = '/AccessoriesScreen';
  static const kcosmeticesScreen = '/cosmeticsscreen';
  static const kAboutUsScreen = '/aboutusscreen';
  static const kSignUp = '/signup';
  static const kLogin = '/loginscreen';
  static const kRegister = '/registerscreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splashscreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const Homescreen(),
      ),
      GoRoute(
        path: kcustomebottombar,
        builder: (context, state) => const Custmebottombar(),
      ),
      GoRoute(
        path: kFashionScreen,
        builder: (context, state) => const FashionScreen(),
      ),
      GoRoute(
        path: kAccessoriesScreen,
        builder: (context, state) => const AccessoriesScreen(),
      ),
      GoRoute(
        path: kcosmeticesScreen,
        builder: (context, state) => const Cosmeticsscreen(),
      ),
      GoRoute(
        path: kAboutUsScreen,
        builder: (context, state) => const AboutUsScreen(),
      ),
      GoRoute(
        path: kSignUp,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: kRegister,
        builder: (context, state) => const Registerscreen(),
      ),
    ],
  );
}
