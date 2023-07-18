part of 'onboard_widgets_import.dart';


class OnBoardWidgetSecond extends StatelessWidget {
  const OnBoardWidgetSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Image.asset("assets/images/bg2.png"),
          "Everything I Love Is Illegal, Immoral, or Fattening, said the sign my girlfriend’s mother posted on her screen porch"
              .text
              .size(15.h)
              .align(TextAlign.center)
              .fontWeight(FontWeight.w600)
              .make()
        ],
      );

  }
}
