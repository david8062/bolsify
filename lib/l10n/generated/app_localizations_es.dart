// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get title => 'Bienvenido';

  @override
  String get changeLanguage => 'Cambiar idioma';

  @override
  String get login => 'Login';

  @override
  String get register => 'Registrarse';

  @override
  String get userOrEmail => 'Usuario o correo';

  @override
  String get password => 'Contraseña';

  @override
  String get repeatPassword => 'Repetir contraseña';

  @override
  String get alreadyAccount => '¿Ya tienes cuenta?';

  @override
  String get loginHere => 'Inicia Sesión Aqui';

  @override
  String get dontHaveAccount => '¿Aún no tienes una cuenta?';

  @override
  String get createHere => 'Crea una aqui';
}
