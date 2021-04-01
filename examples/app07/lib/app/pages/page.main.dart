import 'package:app07/app/shared/utils/validators/validator.default.dart';
import 'package:flutter/material.dart';

class PageMain extends StatefulWidget {
  PageMain({Key key}) : super(key: key);

  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  int result = 0;
  TextEditingController _textControllerName = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _textControllerName.dispose();
    super.dispose();
  }

  static const _divider = SizedBox(
    height: 10,
  );

  void _addValue() {
    final _form = _formKey.currentState;
    if (!_form.validate()) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register form'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Cadastro'),
                  _divider,
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _textControllerName,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            helperText: 'Informe seu nome completo',
                            hintText: 'Nome',
                          ),
                          validator: ValidatorDefault.isNotEmpty,
                        ),
                        _divider,
                        TextFormField(
                          decoration: InputDecoration(
                            helperText: 'Informe um email válido',
                            hintText: 'Email',
                          ),
                        ),
                        _divider,
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            helperText: 'No mínimo 8 caracteres',
                            hintText: 'Passwrod',
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            helperText: 'Confirme sua senha',
                            hintText: 'Confirm passwrod',
                          ),
                          validator: ((String value) {
                            // Pegue o valor do password 1
                            // Mande para o validador o password 1 e o password 2
                            return null;
                          }),
                        ),
                        _divider,
                        ElevatedButton(
                          child: Text('Salvar'),
                          onPressed: _addValue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
