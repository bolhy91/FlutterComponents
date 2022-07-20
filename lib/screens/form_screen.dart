import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey();

    final Map<String, String> formValues = {
      'first_name': 'fernando',
      'second_name': 'herrera',
      'email': 'fernando@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(title: const Text('Form')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Nombre de usuario',
              hintText: 'Introduzca el usuario',
              formProperty: 'first_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Apellido',
              hintText: 'Introduzca el apellido',
              formProperty: 'second_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Correo',
              hintText: 'Introduzca el correo',
              keyboardType: TextInputType.emailAddress,
              formProperty: 'email',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Password',
              hintText: 'Introduzca el password',
              formProperty: 'password',
              formValues: formValues,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButtonFormField<String?>(
              items: const [
                DropdownMenuItem(
                  value: 'Admin',
                  child: Text('Admin'),
                ),
                DropdownMenuItem(
                  value: 'User',
                  child: Text('User'),
                ),
                DropdownMenuItem(
                  value: 'Dev',
                  child: Text('Dev'),
                )
              ],
              onChanged: (value) {
                formValues['role'] = value ?? 'Admin';
              },
            ),
            ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print("Formulario no valido");
                    return;
                  }
                  print(formValues);
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Guardar')),
                ))
          ]),
        ),
      )),
    );
  }
}
