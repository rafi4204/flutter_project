import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/presentation/feature/home/home_screen.dart';
import 'package:flutter_template/presentation/feature/login/login_screen.dart';
import 'package:flutter_template/presentation/feature/splash/splash_screen.dart';
import 'package:injectable/injectable.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, path: '/'),
    AutoRoute(page: HomeScreen, path: '/home'),
    AutoRoute(page: LoginScreen, path: '/login'),
  ],
)
@Injectable()
class $AppRouter {}
