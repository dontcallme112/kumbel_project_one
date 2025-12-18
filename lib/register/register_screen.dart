import 'package:flutter/material.dart';

enum Gender { male, female }

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Логин',
                  labelStyle: TextStyle(fontSize: 12),
                  hintText: 'Введите логин',
                ),
                maxLength: 10,
              ),
              TextField(
                obscureText: true,
                enableSuggestions: false,
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  labelStyle: TextStyle(fontSize: 12),
                  hintText: 'Введите пароль',
                ),
                maxLength: 12,
              ),
              TextField(
                obscureText: true,
                enableSuggestions: false,
                decoration: InputDecoration(
                  labelText: 'Подтвердите пароль',
                  labelStyle: TextStyle(fontSize: 12),
                  hintText: 'Подтвердите пароль',
                ),
                maxLength: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RadioListTile<Gender>(
                      title: const Text('Мужской'),
                      value: Gender.male,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<Gender>(
                      title: const Text('Женский'),
                      value: Gender.female,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Text('Разрешить уведомления'),
                  Switch(value: false, onChanged: (_) {}),
                ],
              ),

              Row(
                children: [
                  Text('Подписаться на акции'),
                  Checkbox(value: false, onChanged: (_) {}),
                ],
              ),
              Row(
                children: [
                  Text('Разрешить геолокацию'),
                  Checkbox(value: true, onChanged: (_) {}),
                ],
              ),

              DropdownButton<String>(
                hint: const Text('Выберите страну'),
                value: 'Казахстан',
                items: const [
                  DropdownMenuItem(
                    value: 'Казахстан',
                    child: Text('Казахстан'),
                  ),
                  DropdownMenuItem(value: 'США', child: Text('США')),
                  DropdownMenuItem(value: 'Италия', child: Text('Италия')),
                ],
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
