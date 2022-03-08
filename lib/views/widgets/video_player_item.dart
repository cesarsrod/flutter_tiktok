import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VidePlayerItem extends StatefulWidget {
  final String videoUrl;
  const VidePlayerItem({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VidePlayerItem> createState() => _VidePlayerItemState();
}

class _VidePlayerItemState extends State<VidePlayerItem> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) => {
            videoPlayerController.play(),
            videoPlayerController.setVolume(1),
          });
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: VideoPlayer(videoPlayerController),
    );
  }
}
