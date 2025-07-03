import 'package:flutter/material.dart';

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
    return Container(
      width: 280,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFdbeafe), // fondo base
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 200),
            alignment: isLogin ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 140,
              height: 50,
              decoration: BoxDecoration(
                color: isLogin
                    ? const Color(0xFF1e3a8a)
                    : const Color(0xFF60a5fa),
                borderRadius: BorderRadius.circular(30),
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
                      'Registrarse',
                      style: TextStyle(
                        color: isLogin ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w600,
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
                      'Iniciar Sesión',
                      style: TextStyle(
                        color: isLogin ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w600,
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
