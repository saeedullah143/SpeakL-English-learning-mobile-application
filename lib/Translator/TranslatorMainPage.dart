import 'package:flutter/material.dart';

import 'components/choose_language.dart';
import 'components/input_text.dart';
import 'components/translate_text.dart';


class Translator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ChooseLanguage(),
            InputText(),
            TranslateText(),
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: Text('Translator'),
    centerTitle: true,
    elevation: 0.0,
  );
}
