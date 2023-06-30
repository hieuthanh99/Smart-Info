
import 'package:path/path.dart' as path;

enum PostStatus { completed, inProgress, overdue, rejected, waiting }

enum TypeFile {
  isVideo,
  isImage,
  isAudio,
  isPdf,
  isPpt,
  isDoc,
  isExcel,
  isUnknown;

  static TypeFile checkTypeFile(String filePath) {
    final extension = path.extension(filePath).toLowerCase();
    if (extension == '.jpg' ||
        extension == '.jpeg' ||
        extension == '.png' ||
        extension == '.gif' ||
        extension == '.webp') {
      return TypeFile.isImage;
    } else if (extension == '.mp4' ||
        extension == '.avi' ||
        extension == '.mov' ||
        extension == '.wmv' ||
        extension == '.flv' ||
        extension == '.mkv') {
      return TypeFile.isVideo;
    } else if (extension == '.doc' ||
        extension == '.docx' ||
        extension == '.odt' ||
        extension == '.rtf') {
      return TypeFile.isDoc;
    } else if (extension == '.pdf') {
      return TypeFile.isPdf;
    } else if (extension == '.ppt' || extension == '.pptx') {
      return TypeFile.isPpt;
    } else if (extension == '.xls' ||
        extension == '.xlsx' ||
        extension == '.ods' ||
        extension == '.csv') {
      return TypeFile.isExcel;
    } else if (extension == '.mp3') {
      return TypeFile.isAudio;
    } else {
      return TypeFile.isUnknown;
    }
  }
}

enum DataSourceType { asset, network, file, contentUri, unknown }

enum NetworkSpeedType { veryFast, fast, slow }

enum StatusFlightType {
  Departed,
  Cancelled,
  Briefing,
  Arrived,
  ACReady,
  Boarding,
  Finished,
  Delayed;
}

enum DrawerSelection { menu, profile, policy, help, setting}
