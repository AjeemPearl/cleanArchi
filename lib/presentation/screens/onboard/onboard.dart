part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                MyAssets.mainlogo,
                color: MyColors.primaryColor,
                height: 120.h,
                filterQuality: FilterQuality.high,
              ),
              PageView(
                children: const [
                  OnBoardWidgetFirst(),
                  OnBoardWidgetSecond(),
                  OnBoardWidgetThird(),
                  OnBoardWidgetFourth()
                ],
              ).expand(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: MyColors.secondaryColor,
                      backgroundColor: MyColors.primaryColor,
                      minimumSize: Size(MediaQuery.sizeOf(context).width*0.3, 20.w)),
                  onPressed: () => AutoRouter.of(context).push(const AuthRoute()),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: MyColors.whiteColor, fontSize: 20.sp),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "SKIP",
                        style: TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
