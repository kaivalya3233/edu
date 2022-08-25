import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Course_Video extends StatefulWidget {
  const Course_Video({Key? key}) : super(key: key);

  @override
  State<Course_Video> createState() => _Course_VideoState();
}

class _Course_VideoState extends State<Course_Video> {
  late YoutubePlayerController  _controller;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids =[
   'WRj86iHihgY',
  ];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        captionLanguage: "en-us",
        forceHD: true,
        hideControls: false,
        controlsVisibleAtStart: true,
        hideThumbnail: true,
        disableDragSeek: false,
        mute: false,
        showLiveFullscreenButton: true,
        loop: true,
      ),
    );
    _videoMetaData = const YoutubeMetaData(

    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                thumbnail: Image.asset("assets/images/certificate.png"),
                topActions: <Widget>[
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Text(
                      _controller.metadata.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
                onReady: (){
                  _isPlayerReady = true;
                },
                onEnded: (data){
                  _controller
                      .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
                },
              ),
              builder: (context, player){
                return Scaffold(
                appBar: AppBar(),
                body: Column(
    children: [
      player,
      RichText(text: TextSpan(
    text: "Title",style: const TextStyle(color: Colors.blue)
    ))
    ],
    ),
                );
    }
      ),
      )
    );
  }
}
//flutterwindowmanager for functions like avoiding scrren recordings and screenshots
