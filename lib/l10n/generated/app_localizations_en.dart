// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Welcome';

  @override
  String get changeLanguage => 'Change Lenguaje';

  @override
  String get login => 'Login';

  @override
  String get register => 'Register';

  @override
  String get userOrEmail => 'User or Email';

  @override
  String get password => 'Password';

  @override
  String get repeatPassword => 'Repeat Password';

  @override
  String get alreadyAccount => 'Already have account?';

  @override
  String get loginHere => 'Login here';

  @override
  String get dontHaveAccount => 'Don\'t have account?';

  @override
  String get createHere => 'Create here';
}
