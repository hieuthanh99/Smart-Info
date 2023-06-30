import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:base_core/src/file_entity.dart';

class DownloadFileHelper implements DownloadFile {
  factory DownloadFileHelper() {
    return _instance;
  }

  DownloadFileHelper._internal();

  static final DownloadFileHelper _instance = DownloadFileHelper._internal();

  @override
  Future<Directory> getDocumentDirectorySystem() async {
    return getApplicationDocumentsDirectory();
  }

  @override
  Future<File?> onDownload({required FileEntity fileEntity}) async {
    try {
      final file = File(await getLocationFileDownloaded(file: fileEntity));
      if (await file.exists()) {
        await file.delete();
      }

      final response = await Dio().get(
        fileEntity.url ?? '',
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: 0,
        ),
      );

      if (response.statusCode == 200) {
        await file.create(recursive: true);
        final raf = file.openSync(mode: FileMode.write);
        raf.writeFromSync(response.data);
        await raf.close();
        return file;
      } else {
        print('Download error: status code ${response.statusCode}');
      }
    } catch (e) {
      print('Download error: $e');
    }
    return null;
  }

  @override
  Future<String> getLocationFileDownloaded({required FileEntity file}) async {
    final appDirectory = await getApplicationDocumentsDirectory();
    final dir = Directory('${appDirectory.path}/Download');
    if (!await dir.exists()) {
      await dir.create();
    }
    return '${dir.path}/${file.hashCode.toString()}${getExtension(file.url ?? '')}';
  }

  String getExtension(String url) {
    final ext = url.split('.').last;
    return '.$ext';
  }

  @override
  Future<void> onPreviewFile({required FileEntity fileEntity}) async {
    final file = await onDownload(fileEntity: fileEntity);
    if (file == null) return;
  }
}

abstract class DownloadFile {
  Future<Directory> getDocumentDirectorySystem();

  Future<String> getLocationFileDownloaded({required FileEntity file});

  Future<File?> onDownload({required FileEntity fileEntity});

  Future<void> onPreviewFile({required FileEntity fileEntity});
}
