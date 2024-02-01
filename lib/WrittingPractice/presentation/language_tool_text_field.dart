import 'package:flutter/material.dart';
import '../core/controllers/colored_text_editing_controller.dart';
import '../utils/mistake_popup.dart';


class LanguageToolTextField extends StatefulWidget {
  final TextStyle style;
  final InputDecoration decoration;
  final ColoredTextEditingController coloredController;
  final MistakePopup mistakePopup;
  final bool expands;
  final double containerWidth;
  final double containerHeight;

  const LanguageToolTextField({
    required this.style,
    required this.decoration,
    required this.coloredController,
    required this.mistakePopup,
    this.expands = false,
    this.containerWidth = double.infinity,
    this.containerHeight = 550,
    Key? key,
  });

  @override
  State<LanguageToolTextField> createState() => _LanguageToolTextFieldState();
}

class _LanguageToolTextFieldState extends State<LanguageToolTextField> {
  @override
  void initState() {
    widget.coloredController.showPopup = widget.mistakePopup.show;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2.0, right: 2.0, top: 20.0),
          child: Container(
            width: widget.containerWidth,
            height: widget.containerHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: SingleChildScrollView(
            child: TextField(
               controller: widget.coloredController,
               style: widget.style,
               decoration: widget.decoration,
               expands: widget.expands,
               minLines: 1,
               maxLines: 30,
             ),
             ),
          ),
        ),
      ],
    );
  }
}
