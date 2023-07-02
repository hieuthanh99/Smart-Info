/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_left.svg
  String get icArrowLeft => 'packages/base_ui/assets/icons/ic_arrow_left.svg';

  /// File path: assets/icons/ic_caret_down.svg
  String get icCaretDown => 'packages/base_ui/assets/icons/ic_caret_down.svg';

  /// File path: assets/icons/ic_error.svg
  String get icError => 'packages/base_ui/assets/icons/ic_error.svg';

  /// File path: assets/icons/ic_filter2.svg
  String get icFilter2 => 'packages/base_ui/assets/icons/ic_filter2.svg';

  /// File path: assets/icons/ic_notification.svg
  String get icNotification =>
      'packages/base_ui/assets/icons/ic_notification.svg';

  /// File path: assets/icons/ic_search.svg
  String get icSearch => 'packages/base_ui/assets/icons/ic_search.svg';

  /// File path: assets/icons/ic_success.svg
  String get icSuccess => 'packages/base_ui/assets/icons/ic_success.svg';

  /// File path: assets/icons/ic_tick.svg
  String get icTick => 'packages/base_ui/assets/icons/ic_tick.svg';

  /// File path: assets/icons/ic_warning.svg
  String get icWarning => 'packages/base_ui/assets/icons/ic_warning.svg';

  /// List of all assets
  List<String> get values => [
        icArrowLeft,
        icCaretDown,
        icError,
        icFilter2,
        icNotification,
        icSearch,
        icSuccess,
        icTick,
        icWarning
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'base_ui',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package = 'base_ui',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/base_ui/$_assetName';
}
