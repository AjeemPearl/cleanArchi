part of 'onboard_widgets_import.dart';

class OnBoardWidgetThird extends StatelessWidget {
  const OnBoardWidgetThird({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Image.asset("assets/images/bg3.png"),
          "I walk through the early-morning house, light from the kitchen at my back."
              .text
              .size(15.h)
              .align(TextAlign.center)
              .fontWeight(FontWeight.w600)
              .make()
        ],
      );

  }
}
