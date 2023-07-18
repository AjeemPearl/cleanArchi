part of 'dashboard_imports.dart';
@RoutePage()
class DashBoard extends StatefulWidget {
  final id;
  const DashBoard({super.key, this.id});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  String devicetokenToSendPushNotification = "";
  @override
  void initState(){
    super.initState();
    FirebaseMessaging.instance.getInitialMessage().then((message){
      if(message!= null){
       print("New Notification");
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DashBoard(id: message.data['_id'],)));
      }
    });

    FirebaseMessaging.onMessage.listen((message) {
      print("FirebaseMessaging.onMessage.listen");
      if(message.notification != null){
        print(message.notification!.title);
        print(message.notification!.body);
        LocalNotificationService.createanddisplaynotification(message);
      }


    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print("FirebaeMessaging.onMessageOpenedApp.listen");
      if(message.notification != null){
        print(message.notification!.title);
        print(message.notification!.body);
        print("message.data22 ${message.data['_id']}");
      }
    });
  }
  Future<void> getDeviceTokenToSendNotification() async{
    final FirebaseMessaging _fcm = FirebaseMessaging.instance;
    final token = await _fcm.getToken();
    devicetokenToSendPushNotification = token.toString();
    print('Token Value $devicetokenToSendPushNotification');
  }
  @override
  Widget build(BuildContext context) {
    getDeviceTokenToSendNotification();
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              AutoRouter.of(context).push( const AuthRoute());

            },
          child: Text("Auth Screen"),
        )
      ),

    );
  }
}
