part of 'voice_imports.dart';

@RoutePage()
class VoiceAI extends StatefulWidget {
  const VoiceAI({super.key});

  @override
  State<VoiceAI> createState() => _VoiceAIState();
}

class _VoiceAIState extends State<VoiceAI> {
  final speechToText = SpeechToText();
  final flutterTts = FlutterTts();
  String lastWords = '';
  String? generatedContent;
  String? generatedImageUrl;
  int start = 200;
  int delay = 200;

  @override
  void initState() {
    super.initState();
    initSpeechToText();
    initTextToSpeech();
  }

  Future<void> initTextToSpeech() async {
    await flutterTts.setSharedInstance(true);
    setState(() {});
  }

  Future<void> initSpeechToText() async {
    await speechToText.initialize();
    setState(() {});
  }

  Future<void> startListening() async {
    await speechToText.listen(onResult: onSpeechResult);
    setState(() {});
  }

  Future<void> stopListening() async {
    await speechToText.stop();
    setState(() {});
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      lastWords = result.recognizedWords;
    });
  }

  Future<void> systemSpeak(String content) async {
    await flutterTts.speak(content);
  }

  @override
  void dispose() {
    super.dispose();
    speechToText.stop();
    flutterTts.stop();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Voice Intigration"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        color: MyColors.skyLightColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Container(
                  height: 123,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(
                          image: AssetImage("assets/images/virtualAssistant.png")
                      )
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              margin: EdgeInsets.symmetric(horizontal: 40).copyWith(
                top: 40
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.zero,
                ),
                border: Border.all(
                  color: Colors.grey
                )
              ),
              child: Text("Good Morning, what task can I do for you?",
              style: TextStyle(
                color: MyColors.blueColor,
                fontSize: 25
              ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                top: 10,
                left: 22
              ),
              alignment: Alignment.centerLeft,
              child: const Text("Here are a few features",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            ),

            FeatureBox(color: MyColors.lightPurpleColor, headerText: "ChatGPT", descriptionText: "A smarter to say organized and informed with chatGPT"),
            FeatureBox(color: MyColors.skyLightColor, headerText: "Dall-E", descriptionText: "Get inspired and stay creative with your personal assistant powered by Dall-E"),
            FeatureBox(color: MyColors.lighcolor, headerText: "Smart Voice Assistant", descriptionText: "Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT"),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        if(await speechToText.hasPermission &&
           speechToText.isNotListening
        ){
          await startListening();
        }
        else if(speechToText.isListening){
          await stopListening();
        }
        else{
          initSpeechToText();
        }
      },
        backgroundColor: MyColors.skyLightColor,
      child: Icon(Icons.mic),),
    );
  }
}
