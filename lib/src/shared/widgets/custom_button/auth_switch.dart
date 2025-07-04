import 'package:bolsify/src/config/constants.dart';
import 'package:bolsify/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bolsify/l10n/generated/app_localizations.dart';

class AuthSwitch extends StatefulWidget {
  final void Function(bool isLogin) onToggle;
  final bool initialValue;

  const AuthSwitch({
    super.key,
    required this.onToggle,
    this.initialValue = true, // true = Login, false = Registro
  });

  @override
  State<AuthSwitch> createState() => _AuthSwitchState();
}

class _AuthSwitchState extends State<AuthSwitch> {
  late bool isLogin;

  @override
  void initState() {
    super.initState();
    isLogin = widget.initialValue;
  }

  void toggle(bool value) {
    setState(() {
      isLogin = value;
    });
    widget.onToggle(isLogin);
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Container(
      width: 325,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.baseBackground, // fondo base
        borderRadius: BorderRadius.circular(AppConstants.buttonRadius),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 200),
            alignment: isLogin ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 162.5,
              height: 50,
              decoration: BoxDecoration(
                color: isLogin
                    ? AppColors.primary
                    : AppColors.secondary,
                borderRadius: BorderRadius.circular(AppConstants.buttonRadius),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => toggle(false),
                  child: Center(
                    child: Text(
                      localizations.register,
                      style: TextStyle(
                        color: isLogin ? AppColors.textStrong: AppColors.textPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => toggle(true),
                  child: Center(
                    child: Text(
                      localizations.login,
                      style: TextStyle(
                        color: isLogin ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
