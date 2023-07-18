part of 'sql_imports.dart';
@RoutePage()

class sqlScreen extends StatefulWidget {
  const sqlScreen({super.key});

  @override
  State<sqlScreen> createState() => _sqlScreenState();
}

class _sqlScreenState extends State<sqlScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: MyColors.secondaryColor,
                      backgroundColor: MyColors.blueColor,
                      minimumSize: Size(100.w, 40.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      )
                  ),
                  onPressed: () async {
                    await Databasehelper.databasehelper.insertRecord({Databasehelper.columnName:"Vipin_Negi"});

                  },
                  child: Text(
                    "INSERT",
                    style: TextStyle(color: MyColors.whiteColor, fontSize: 5.sp),
                  )),
              12.h.heightBox,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: MyColors.secondaryColor,
                      backgroundColor: MyColors.blueColor,
                      minimumSize: Size(100.w, 40.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      )
                  ),
                  onPressed: () async {
                    var dbquery = await Databasehelper.databasehelper.queryDatabase();
                    print(dbquery);
                  },
                  child: Text(
                    "Read QUERY",
                    style: TextStyle(color: MyColors.whiteColor, fontSize: 5.sp),
                  )),
              12.h.heightBox,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: MyColors.secondaryColor,
                      backgroundColor: MyColors.lightBrownColor,
                      minimumSize: Size(100.w, 40.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      )
                  ),
                  onPressed: () async {
                    print("update");
                    await Databasehelper.databasehelper.updateRecord({
                      Databasehelper.columnID:2,
                      Databasehelper.columnName:"Shubham_khanduri"
                    });
                  },
                  child: Text(
                    "UPDATE",
                    style: TextStyle(color: MyColors.whiteColor, fontSize: 5.sp),
                  )),

              12.h.heightBox,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: MyColors.secondaryColor,
                      backgroundColor: MyColors.lighcolor,
                      minimumSize: Size(100.w, 40.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      )
                  ),
                  onPressed: () async {
                    print("delete method");
                    await Databasehelper.databasehelper.deleteRecord(6);
                  },
                  child: Text(
                    "DELETE",
                    style: TextStyle(color: MyColors.whiteColor, fontSize: 5.sp),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
