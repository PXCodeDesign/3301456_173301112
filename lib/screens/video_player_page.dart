import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPage extends StatefulWidget {
  final String videoId;

  const VideoPlayerPage({Key? key, required this.videoId}) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late YoutubePlayerController _controller;
  bool _isFullScreen = false;
  bool _isLocked = true;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    )..addListener(() {
        if (_controller.value.isFullScreen != _isFullScreen) {
          setState(() {
            _isFullScreen = _controller.value.isFullScreen;
          });
          if (_controller.value.isFullScreen) {
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                overlays: []);
          } else {
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                overlays: SystemUiOverlay.values);
          }
        }
      });
  }

  void _toggleOrientationLock() {
    setState(() {
      _isLocked = !_isLocked;
    });
    if (_isLocked) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    } else {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
  }

  void _toggleFullScreenMode() {
    _controller.toggleFullScreenMode();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_isFullScreen) {
          _toggleFullScreenMode();
          return false;
        } else {
          _controller.pause();
          return true;
        }
      },
      child: Scaffold(
        appBar: _isFullScreen
            ? null
            : AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, size: 28),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                elevation: 4.0,
              ),
        body: Stack(
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onEnded: (data) {
                Navigator.of(context).pop();
              },
              aspectRatio: 16 / 9,
            ),
            if (!_isFullScreen)
              Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onTap: () {
                    if (_isFullScreen) {
                      _toggleFullScreenMode();
                    } else {
                      SystemChrome.setEnabledSystemUIMode(
                        SystemUiMode.manual,
                        overlays: SystemUiOverlay.values,
                      );
                      _toggleOrientationLock();
                      setState(() {
                        _isFullScreen = true;
                      });
                    }
                  },
                  child: _isFullScreen
                      ? AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          title: Text(
                            _controller.metadata.title,
                            style: const TextStyle(fontSize: 16),
                          ),
                          centerTitle: true,
                        )
                      : null,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
