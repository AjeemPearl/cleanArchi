part of 'auth_imports.dart';
@RoutePage( )
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(MyAssets.auth_bg , ), fit: BoxFit.cover)
      ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(MyAssets.mainlogo,
                    height: 150.h,
                    color: Colors.white,).centered(),
                  Spacer(),

                  "Explore the world,\nBillions of Thoughts."
                  .text
                  .size(10.sp)
                  .white
                  .fontWeight(FontWeight.w700)
                  .make(),
                  24.h.heightBox,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shadowColor: MyColors.secondaryColor,
                          backgroundColor: MyColors.primaryColor,
                          minimumSize: Size(100.w, 40.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                          )
                      ),
                      onPressed: () {
                        AutoRouter.of(context).push( DashBoardRoute());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: MyColors.whiteColor, fontSize: 5.sp),
                      )),
                  12.h.heightBox,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shadowColor: MyColors.secondaryColor,
                          backgroundColor: Colors.transparent,
                          minimumSize: Size(100.w, 40.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          side: BorderSide(color: Colors.blueGrey)
                        )
                      ),

                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: TextStyle(color: MyColors.whiteColor, fontSize: 5.sp),
                      )),
                  10.h.heightBox,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shadowColor: MyColors.secondaryColor,
                          backgroundColor: MyColors.primaryColor,
                          minimumSize: Size(100.w, 40.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          )
                      ),
                      onPressed: () {
                        AutoRouter.of(context).push( const SqlScreenRoute());
                      },
                      child: Text(
                        "Sql lite Screen",
                        style: TextStyle(color: MyColors.whiteColor, fontSize: 5.sp),
                      )),
                  30.h.heightBox,



                ],
              ),
            )),
      ),
    );
  }
}
