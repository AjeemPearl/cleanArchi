part of 'onboard_widgets_import.dart';

class OnBoardWidgetFirst extends StatelessWidget {
  const OnBoardWidgetFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/bg1.png"),
        "Hello this application is making awsome"
            .text
            .size(15.h)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w600)
            .make()
      ],
    );

  }
}
