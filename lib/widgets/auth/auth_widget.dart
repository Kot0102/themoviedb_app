import 'package:flutter/material.dart';
import 'package:moviedb_app/design/colors.dart';
import 'package:moviedb_app/design/dimentions.dart';
import 'package:moviedb_app/design/styles.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text('Войти в свою учётную запись', style: titleAppBar),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView(children: [_HeaderWidget()]),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding20),
      child: Column(
        children: [
          _FormWidget(),
          SizedBox(height: height32),
          Text(
            'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. Нажмите здесь, чтобы начать.',
            style: textBasic,
          ),
          SizedBox(height: height8),
          ElevatedButton(
            onPressed: () {},
            style: buttonLoginStyle,
            child: Text('Регистрация', style: textBasic),
          ),
          SizedBox(height: height16),
          Text(
            'Если Вы зарегистрировались, но не получили письмо для подтверждения, нажмите здесь, чтобы отправить письмо повторно.',
            style: textBasic,
          ),
          SizedBox(height: height8),
          ElevatedButton(
            onPressed: () {},
            style: buttonLoginStyle,
            child: Text('Подтвердить почту', style: textBasic),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget();

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;

      final navigator = Navigator.of(context);
      navigator.pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Неверный логин или пароль';
    }

    setState(() {});
  }

  void _resetPassword() {
    print('Reset password');
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null)
          Container(
            child: Column(
              children: [
                Text(
                  errorText,
                  style: TextStyle(color: Colors.red, fontSize: fontSize16),
                ),
                SizedBox(height: height16),
              ],
            ),
          ),
        Text('Имя пользователя', style: textBasic),
        SizedBox(height: height4),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecoration,
        ),
        SizedBox(height: height16),
        Text('Пароль', style: textBasic),
        SizedBox(height: height4),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        SizedBox(height: height32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: buttonLoginStyle,
              onPressed: _auth,
              child: Text('Войти', style: textBasic),
            ),
            SizedBox(width: width16),
            TextButton(
              style: buttonResetPswStyle,
              onPressed: _resetPassword,
              child: Text('Сбросить пароль', style: textButResPswStyle),
            ),
          ],
        ),
      ],
    );
  }
}
