import 'package:flutter/material.dart';
import '../widgets/widegets.dart';
import 'Animation/FadeAnimation.dart';
import 'languagetool_textfield.dart';

// Example App main page
class WritingPractice extends StatefulWidget {
  // Example app constructor
  const WritingPractice({super.key});

  @override
  State<WritingPractice> createState() => _WritingPracticeState();
}

class _WritingPracticeState extends State<WritingPractice> {
  // Initialize LanguageTool
  static final LanguageTool _languageTool = LanguageTool();

  // Initialize DebounceLangToolService
  static final DebounceLangToolService _debouncedLangService =
  DebounceLangToolService(
    LangToolService(_languageTool),
    const Duration(milliseconds: 500),
  );

  // Initialize ColoredTextEditingController
  final ColoredTextEditingController _controller =
  ColoredTextEditingController(languageCheckService: _debouncedLangService);

  int currentAlignmentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mygradientContainer(
        pagename: 'Writting Practice',
        myContainer: Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                        1.4,
                        LanguageToolTextField(
                          style: const TextStyle(),
                          decoration: const InputDecoration(
                            hintText: 'Enter your text here',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          coloredController: _controller,
                          mistakePopup: MistakePopup(
                              popupRenderer: PopupOverlayRenderer()),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ), // Use resizeToAvoidBottomInset
    );
  }
}
