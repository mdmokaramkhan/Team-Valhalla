import 'package:flutter/material.dart';
import 'package:jobtal/style.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  State<VideoApp> createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://rr3---sn-npoldn7l.googlevideo.com/videoplayback?expire=1713015798&ei=ljcaZvPhD8SHkucP5p2_4A0&ip=44.221.50.147&id=o-ADZti1IHofPvQvewjIrXrj7jDuOQtPV04-WuD58mEouX&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&bui=AaUN6a1C0yXicah8ziWN_hs86hMd_jzF5ysLUMG3uv-EvCM1l0WmYLr69SSYr3ZRTrSzmUGIR3T6dFRA&spc=UWF9fx69noB4hjMIQ_v-GZld_vmAbjVpRGliRBcuP_33SnB7KneZPz2TZ0Ek&vprv=1&svpuc=1&mime=video%2Fmp4&ns=PwibglCXzwbhXuQvo9LgZgUQ&cnr=14&ratebypass=yes&dur=559.693&lmt=1665675613722008&c=WEB&sefc=1&txp=5538434&n=O2r9W0Bz4urz6A&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRQIgcEB6QaR0d9JSBuAgf7360UXjqPuAVQ2tQekj87FpY7gCIQCqS-7SBZz7ukXUdCC1jFxItSl2iUvA_X4CXQMEW8FuXQ%3D%3D&redirect_counter=1&cm2rm=sn-p5qe7s7z&req_id=a209ee8dd9c9a3ee&cms_redirect=yes&cmsv=e&mh=ke&mip=210.89.61.51&mm=34&mn=sn-npoldn7l&ms=ltu&mt=1712993666&mv=u&mvi=3&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=ALClDIEwRQIhAPPyXLPBCmCaDKHryRc_6tdtcHUTv6F2gzmbeHNxV0HGAiBo-wDdNggh2YooWnKcH3rWf2N0dcDu7U2PE9Z3RaKQMg%3D%3D'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
              SizedBox(height: S.sizes.defaultPadding),
              Padding(
                padding: EdgeInsets.all(S.sizes.gap),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'JavaScript & JQuery - Part 01',
                      style: S.textStyles.cardTittleL,
                    ),
                    SizedBox(height: S.sizes.gap),
                    Text(
                      'In today\'s web development landscape, proficiency in JavaScript and jQuery is indispensable. This comprehensive course is designed to equip you with the essential skills and knowledge to become a proficient front-end developer.',
                      style: S.textStyles.cardDescription,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
