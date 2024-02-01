import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';
import 'package:speakle_pyf/SpeakPractice/ui/widget/Variables.dart';
import 'package:speakle_pyf/SpeakPractice/ui/widget/button_widget.dart';
import 'package:speakle_pyf/SpeakPractice/ui/widget/text_widget.dart';
import 'package:speakle_pyf/SpeakPractice/ui/widget/two_word_widget.dart';
import 'blocs/main_screen_bloc.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainScreenBloc mainScreenBloc = context.watch<MainScreenBloc>();

    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            backgroundRive,
            fit: BoxFit.fill,
          ),
          mainScreenBloc.state.maybeMap(
            loading: (_) => const SizedBox(),
            listened: (val) => Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .6,
                  width: double.infinity,
                  child: RiveAnimation.asset(
                    robotRive,
                    animations: const ['idel'],
                    controllers: [val.riveAnimationController],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TwoWordsWidget(
                      firstIsChecked: val.correctIndex.contains(0),
                      secondIsChecked: val.correctIndex.contains(1),
                      firstWord: val.word[0],
                      secondWord: val.word[1],
                    ),
                    const SizedBox(height: 12),
                    TwoWordsWidget(
                      firstIsChecked: val.correctIndex.contains(2),
                      secondIsChecked: val.correctIndex.contains(3),
                      firstWord: val.word[2],
                      secondWord: val.word[3],
                    ),
                    const SizedBox(height: 12),
                    Container(),
                    TextWidget(
                      text: val.isListening
                          ? val.listenedValue
                          : val.speechEnabled
                              ? tapToStartText
                              : speechNotAvailableText,
                    ),
                    const SizedBox(height: 12),
                    !mainScreenBloc.isMatched
                        ? const Text(
                            "Didn't match to any word",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          )
                        : const SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonWidget(
                          child: Icon(
                            val.isListening ? Icons.mic : Icons.mic_off,
                          ),
                          onPressed: () {
                            mainScreenBloc.add(
                              val.isListening
                                  ? const MainScreenEvent.stop()
                                  : const MainScreenEvent.start(),
                            );
                          },
                        ),
                        ButtonWidget(
                          child: const TextWidget(
                            text: nextText,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            mainScreenBloc.add(
                              const MainScreenEvent.restart(),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                )
              ],
            ),
            orElse: () => const SizedBox(),
          )
        ],
      ),
    );
  }
}
