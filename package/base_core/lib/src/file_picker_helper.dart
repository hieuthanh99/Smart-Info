import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:mime/mime.dart';
import 'package:base_core/src/app_extension.dart';
import 'package:base_core/src/file_entity.dart';

class FilePickerHelper {
  static const int typeImage = 3;
  static const int typeVideo = 4;

  Future<FileEntity> selectSingleFile(
    Function(FilePickerStatus status)? onFileLoading,
  ) async {
    late File file;
    final result = await FilePicker.platform.pickFiles(
      onFileLoading: onFileLoading,
    );
    if (result != null) {
      file = File(result.files.single.path.toString());
      return _mapFileToModel(file);
    }
    return FileEntity();
  }

  Future<List<FileEntity>> selectMultipleFile(
    Function(FilePickerStatus status)? onFileLoading,
  ) async {
    final files = <FileEntity>[];
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      onFileLoading: onFileLoading,
    );
    if (result != null) {
      for (final f in result.files) {
        final file = File(f.path.toString());
        final fileEntity = await _mapFileToModel(file);
        files.add(fileEntity);
      }
    } else {}
    return files;
  }

  Future<FileEntity> _mapFileToModel(File file) async {
    final FileEntity entity = FileEntity();
    entity
      ..url = file.path
      ..fileSize = file.size
      ..fileName = file.name
      ..mimeType = lookupMimeType(file.path)
      ..file = file;
    final bytes = await file.readAsBytes();
    final bs4str = base64.encode(bytes);
    entity.binary = bs4str;
    return entity;
  }

  Future<String> fileToBinary(File file) async {
    List<int> fileBytes = await file.readAsBytes();
    final binaryData =
        fileBytes.map((byte) => byte.toRadixString(2).padLeft(8, '0')).join('');
    return binaryData;
  }
}
