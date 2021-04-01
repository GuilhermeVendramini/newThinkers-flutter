import 'package:flutter/material.dart';

class PageMain extends StatefulWidget {
  PageMain({Key key}) : super(key: key);

  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  int result = 0;
  TextEditingController _textController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _textController.text = '1';
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  static const _divider = SizedBox(
    height: 10,
  );

  void _addValue() {
    final _form = _formKey.currentState;
    if (!_form.validate()) return;

    setState(() {
      result += int.parse(_textController.text);
      _textController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter form'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Resultado: $result'),
              _divider,
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _textController,
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      decoration: InputDecoration(
                        helperText: 'Informe um valor inteiro',
                        hintText: 'Valor',
                      ),
                      validator: (String value) {
                        if (value == null || value.isEmpty)
                          return 'Campo obrigatório';

                        return null;
                      },
                    ),
                    _divider,
                    ElevatedButton(
                      child: Text('Somar'),
                      onPressed: _addValue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
