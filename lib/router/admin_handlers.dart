import 'package:fluro/fluro.dart';
import 'package:photo_dashboard_matuca/providers/auth_provider.dart';
import 'package:photo_dashboard_matuca/ui/views/dashboard_view.dart';
import 'package:photo_dashboard_matuca/ui/views/login_view.dart';
import 'package:photo_dashboard_matuca/ui/views/register_view.dart';
import 'package:provider/provider.dart';

class AdminHandlers {
  static Handler login = Handler(
    handlerFunc: (context, parameters) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.notAuthenticated) {
        return LoginView();
      } else {
        return DashboardView();
      }
    },
  );

  static Handler register = Handler(
    handlerFunc: (context, parameters) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.notAuthenticated) {
        return RegisterView();
      } else {
        return DashboardView();
      }
    },
  );
}
