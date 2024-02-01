import 'package:flutter/material.dart';
import 'package:speakle_pyf/WrittingPractice/utils/popup_overlay_renderer.dart';
import '../core/controllers/colored_text_editing_controller.dart';
import '../domain/mistake.dart';
import '../domain/typedefs.dart';

/// Builder class that uses specified [popupRenderer] and [mistakeBuilder]
/// to create mistake popup
class MistakePopup {
  /// PopupRenderer class that used to render popup on the screen
  final PopupOverlayRenderer popupRenderer;

  /// Optional builder function that creates popup widget
  final MistakeBuilderCallback? mistakeBuilder;

  /// [MistakePopup] constructor
  const MistakePopup({required this.popupRenderer, this.mistakeBuilder});

  /// Show popup at specified [popupPosition] with info about [mistake]
  void show(
    BuildContext context,
    Mistake mistake,
    Offset popupPosition,
    ColoredTextEditingController controller,
  ) {
    popupRenderer.render(
      context,
      position: popupPosition,
      popupBuilder: (context) =>
          mistakeBuilder?.call(popupRenderer, mistake, controller) ??
          LanguageToolMistakePopup(
            popupRenderer: popupRenderer,
            mistake: mistake,
            controller: controller,
          ),
    );
  }
}

/// Default mistake window that looks similar to LanguageTool popup
class LanguageToolMistakePopup extends StatelessWidget {
  /// [LanguageToolMistakePopup] constructor
  const LanguageToolMistakePopup({
    super.key,
    required this.popupRenderer,
    required this.mistake,
    required this.controller,
  });

  /// Renderer used to display this window.
  final PopupOverlayRenderer popupRenderer;

  /// Mistake object
  final Mistake mistake;

  /// Controller of the text where mistake was found
  final ColoredTextEditingController controller;

  @override
  Widget build(BuildContext context) {
    const _borderRadius = 10.0;
    const _mistakeNameFontSize = 13.0;
    const _mistakeMessageFontSize = 15.0;
    const _replacementButtonsSpacing = 10.0;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.indigo, blurRadius: 15)],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Image.asset(
                        'assets/images/symbol_boxed_white.png',
                        width: 25.0,
                        height: 25.0,
                      ),
                    ),
                    const Text(
                      'Correct',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            mistake.type.name,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: const [BoxShadow(color: Colors.indigo, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              mistake.message,
              style: const TextStyle(fontSize: 15.0),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10.0,
            direction: Axis.horizontal,
            children: mistake.replacements
                .take(9)  // Limit the number of suggestions to 6
                .map(
                  (replacement) => Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: () {
                    controller.replaceMistake(mistake, replacement);
                    popupRenderer.dismiss();
                  },
                  child: Text(replacement),
                ),
              ),
            )
                .toList(growable: false),
          ),

        ],
      ),
    );
  }
}