import 'package:componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jackson',
      'last_name': 'Nieto',
      'email': 'jacksonnieto98@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Input Screen'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre de usuario',
                    fromProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido de usuario',
                    fromProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo de usuario',
                    keyboardType: TextInputType.emailAddress,
                    fromProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña de usuario',
                    obscureText: true,
                    fromProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'SuperUser',
                        child: Text('SuperUser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      )
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no válido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('guardar')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
