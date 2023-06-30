import 'dart:async';
import 'dart:io';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:base_ui/src/utils/toast_utils.dart';

enum DataSourceType { asset, network, file, contentUri, unknown }

class PopupPreviewFile {
  static Future<void> reviewImage({
    required BuildContext context,
    required File? file,
  }) {
    return showGeneralDialog(
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(.8),
      context: context,
      pageBuilder: (_, __, ___) => _PreviewImage(file: file ?? File('')),
    );
  }

  static Future<void> reviewVideo({
    required BuildContext context,
    required File? file,
  }) {
    return showGeneralDialog(
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(.8),
      context: context,
      pageBuilder: (_, __, ___) => _PreviewVideo(file: file ?? File('')),
    );
  }

  static Future<void> launchURL(String url) async {
    bool success = await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
    if (!success) {
      ToastUtils(
        mess: 'Launch error!',
        backgroundColor: Colors.red,
      );
    }
  }
}

class _PreviewImage extends StatelessWidget {
  const _PreviewImage({required this.file});

  final File file;

  @override
  Widget build(BuildContext context) {
    return _getTypePath(file.path).name == DataSourceType.file.name
        ? _local(context)
        : _network(context);
  }

  Widget _network(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PhotoView(
          imageProvider: NetworkImage(file.path),
          initialScale: PhotoViewComputedScale.contained,
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2.0,
          filterQuality: FilterQuality.high,
        ),
      );

  Widget _local(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PhotoView(
          imageProvider: FileImage(file),
          initialScale: PhotoViewComputedScale.contained,
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2.0,
          filterQuality: FilterQuality.high,
        ),
      );
}

class _PreviewVideo extends StatefulWidget {
  const _PreviewVideo({required this.file});

  final File file;

  @override
  State<_PreviewVideo> createState() => _PreviewVideoState();
}

class _PreviewVideoState extends State<_PreviewVideo> {
  late VideoPlayerController _videoController;

  late FlickManager _flickManager;

  @override
  void initState() {
    super.initState();
    initController();
  }

  void initController() async {
    _getTypePath(widget.file.path).name == DataSourceType.file.name
        ? _videoController = VideoPlayerController.file(widget.file)
        : _videoController = VideoPlayerController.network(widget.file.path);

    _flickManager = FlickManager(
      videoPlayerController: _videoController,
      autoPlay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: _videoController.value.aspectRatio,
            child: FlickVideoPlayer(
              flickManager: _flickManager,
              flickVideoWithControls: FlickVideoWithControls(
                controls: FlickPortraitControls(
                  fontSize: 15,
                  iconSize: 22,
                  progressBarSettings: FlickProgressBarSettings(
                    handleColor: Colors.red,
                    playedColor: Colors.red,
                    backgroundColor: Colors.grey,
                    bufferedColor: Colors.white,
                    height: 2,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _flickManager.dispose();
  }
}

DataSourceType _getTypePath(String path) {
  Uri uri = Uri.parse(path);
  final isFile = uri.scheme == '' || uri.scheme == 'file';
  final isNetWork = uri.scheme == 'http' || uri.scheme == 'https';
  if (isFile) return DataSourceType.file;
  if (isNetWork) return DataSourceType.network;
  throw ArgumentError('Invalid path: $path');
}
