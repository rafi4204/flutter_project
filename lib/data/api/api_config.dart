import 'package:flutter_template/injection/injector.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/app_flavor.dart';

@Injectable()
class ApiConfig {
  final baseUrl = injector.get<AppFlavor>().baseUrl;

  String get apiUrl => baseUrl;

}
