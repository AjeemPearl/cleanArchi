part of "splash_import.dart";
@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToOnBoard();
    super.initState();
  }
  moveToOnBoard() async {
    await Future.delayed(Duration(seconds: 5),(){
      AutoRouter.of(context).push(OnBoardRoute());
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColors.primaryColor,
    body: Center(
      child:FadedScaleAnimation(
        fadeCurve: Curves.bounceInOut,
        fadeDuration: Duration(seconds: 3),
        scaleCurve: Curves.decelerate,
        scaleDuration: Duration(seconds: 3),
        child: Image.asset(
          "assets/images/applogo.png",
          height: 150,
          width: 300,
          fit: BoxFit.cover,
          color: MyColors.whiteColor,

        ),
      ),
    ) ,
    );
  }
}