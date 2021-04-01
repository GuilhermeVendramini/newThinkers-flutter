import 'package:flutter/material.dart';

class Container100 extends StatelessWidget {
  const Container100({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * Forma errada
     *
     * Informar o valor fixo para altura e largura
     * */
    // return Container(
    //   decoration: BoxDecoration(
    //     color: Colors.red,
    //   ),
    //   height: 1000.0,
    //   width: 2000,
    //   child: Text('Container 100% - Forma errada'),
    // );

    /**
     * Forma correta
     *
     * Pegar do MediaQuery a altura e largura máxima do device
     * */
    final _size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      height: _size.height,
      width: _size.width,
      child: Text('Container 100% - Forma correta'),
    );
  }
}
