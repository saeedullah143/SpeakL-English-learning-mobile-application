import 'package:flutter/widgets.dart';

import '../core/controllers/colored_text_editing_controller.dart';
import '../utils/popup_overlay_renderer.dart';
import 'mistake.dart';


/// Callback used to build popup body
typedef MistakeBuilderCallback = Widget Function(
  PopupOverlayRenderer popupRenderer,
  Mistake mistake,
  ColoredTextEditingController controller,
);

/// Function called after mistake was clicked
typedef ShowPopupCallback = void Function(
  BuildContext context,
  Mistake mistake,
  Offset mistakePosition,
  ColoredTextEditingController controller,
);
