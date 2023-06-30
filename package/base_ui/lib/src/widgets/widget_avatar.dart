import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:base_ui/base_ui.dart';

class WidgetAvatar extends StatelessWidget {
  const WidgetAvatar({
    Key? key,
    this.width,
    this.height,
    this.url,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 145,
      height: height ?? 145,
      decoration: const BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: url ?? '',
            width: width ?? 136,
            height: height ?? 136,
            fit: BoxFit.cover,
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
