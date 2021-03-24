import 'package:flutter/foundation.dart';

class WallpaperModel {
  String photographer;
  String photographer_url;
  String avg_color;
  int photographer_id;
  bool liked;
  SrcModel src;

  WallpaperModel(
      {this.src,
      this.photographer,
      this.photographer_id,
      this.avg_color,
      this.liked,
      this.photographer_url});
  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
      src: SrcModel.fromMap(jsonData["src"]),
      photographer_url: jsonData["photographer_url"],
      photographer: jsonData["photographer"],
      photographer_id: jsonData["photographer_id"],
      liked: jsonData["liked"],
      avg_color: jsonData["avg_color"],
    );
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;

  SrcModel({this.portrait, this.original, this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
      portrait: jsonData["portrait"],
      small: jsonData["small"],
      original: jsonData["original"],
    );
  }
}
