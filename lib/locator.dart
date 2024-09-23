
import 'package:get_it/get_it.dart';
import 'package:photo_dashboard_matuca/providers/auth_provider.dart';

GetIt locator = GetIt.instance;

void setUp() {
  locator.registerLazySingleton<AuthProvider>(() => AuthProvider());
}
