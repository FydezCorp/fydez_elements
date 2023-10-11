import 'package:flutter/cupertino.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../../general_data/blocks/cta.dart';
import '../video_factory.dart';

class NormalVideoFactory implements VideoFactory {
  @override
  Widget create(
    BuildContext context, {
    required String videoUrl,
    required double aspectRatio,
    required CTA cta,
    required double cornerRadius,
  }) {
    return NormalVideoFactoryWidget(
      aspectRatio: aspectRatio,
      videoUrl: videoUrl,
      cta: cta,
      cornerRadius: cornerRadius,
    );
  }
}

class NormalVideoFactoryWidget extends StatefulWidget {
  final String videoUrl;
  final double aspectRatio;
  final CTA cta;
  final double cornerRadius;
  const NormalVideoFactoryWidget({
    super.key,
    required this.videoUrl,
    required this.aspectRatio,
    required this.cta,
    required this.cornerRadius,
  });

  @override
  State<NormalVideoFactoryWidget> createState() =>
      _NormalVideoFactoryWidgetState();
}

class _NormalVideoFactoryWidgetState extends State<NormalVideoFactoryWidget> {
  @override
  void initState() {
    super.initState();
    /* _controller = VideoPlayerController.network(
      widget.videoUrl,
    )..initialize().then((_) {
        setState(() {});
      }); */
    settings();
  }

  settings() {
    /* 
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play(); */
  }

  @override
  void dispose() {
/*     _controller.dispose();
 */
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.cornerRadius),
      child: GestureDetector(
        onTap: widget.cta.action,
        child: AspectRatio(
          aspectRatio: widget.aspectRatio,
          child: Container(
            color: context.fyColors.textTwoColor,
            child: /* _controller.value.isPlaying
                ? VideoPlayer(_controller)
                : const */
                const CupertinoActivityIndicator(),
          ),
        ),
      ),
    );
  }
}
