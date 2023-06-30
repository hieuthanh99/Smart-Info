import 'dart:io';

class FileEntity extends _BaseFile {
  FileEntity({
    this.fileName,
    this.fileSize,
    this.mimeType,
    this.url,
  });

  FileEntity.fromJson(dynamic json) {
    fileName = json['fileName'];
    fileSize = json['fileSize'];
    mimeType = json['mimeType'];
    url = json['url'];
  }

  String? fileName;
  int? fileSize;
  String? mimeType;
  String? url;

  FileEntity copyWith({
    String? fileName,
    int? fileSize,
    String? mimeType,
    String? url,
  }) =>
      FileEntity(
        fileName: fileName ?? this.fileName,
        fileSize: fileSize ?? this.fileSize,
        mimeType: mimeType ?? this.mimeType,
        url: url ?? this.url,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fileName'] = fileName;
    map['fileSize'] = fileSize;
    map['mimeType'] = mimeType;
    map['url'] = url;
    return map;
  }
}

class _BaseFile {
  File? file;
  String? binary;
  String? originalFilename;
  String? thumbUrl;
}
