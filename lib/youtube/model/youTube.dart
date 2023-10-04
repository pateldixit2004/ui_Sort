// To parse this JSON data, do
//
//     final youTubeModel = youTubeModelFromJson(jsonString);

import 'dart:convert';

YouTubeModel youTubeModelFromJson(String str) => YouTubeModel.fromJson(json.decode(str));

String youTubeModelToJson(YouTubeModel data) => json.encode(data.toJson());

class YouTubeModel {
  String? kind;
  List<Item>? items;

  YouTubeModel({
    this.kind,
    this.items,
  });

  factory YouTubeModel.fromJson(Map<String, dynamic> json) => YouTubeModel(
    kind: json["kind"],
    items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class Item {
  Kind? kind;
  String? id;
  Snippet? snippet;

  Item({
    this.kind,
    this.id,
    this.snippet,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    kind: kindValues.map[json["kind"]]!,
    id: json["id"],
    snippet: json["snippet"] == null ? null : Snippet.fromJson(json["snippet"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kindValues.reverse[kind],
    "id": id,
    "snippet": snippet?.toJson(),
  };
}

enum Kind {
  YOUTUBE_CAPTION
}

final kindValues = EnumValues({
  "youtube#caption": Kind.YOUTUBE_CAPTION
});

class Snippet {
  VideoId? videoId;
  DateTime? lastUpdated;
  TrackKind? trackKind;
  String? language;
  String? name;
  AudioTrackType? audioTrackType;
  bool? isCc;
  bool? isLarge;
  bool? isEasyReader;
  bool? isDraft;
  bool? isAutoSynced;
  Status? status;

  Snippet({
    this.videoId,
    this.lastUpdated,
    this.trackKind,
    this.language,
    this.name,
    this.audioTrackType,
    this.isCc,
    this.isLarge,
    this.isEasyReader,
    this.isDraft,
    this.isAutoSynced,
    this.status,
  });

  factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
    videoId: videoIdValues.map[json["videoId"]]!,
    lastUpdated: json["lastUpdated"] == null ? null : DateTime.parse(json["lastUpdated"]),
    trackKind: trackKindValues.map[json["trackKind"]]!,
    language: json["language"],
    name: json["name"],
    audioTrackType: audioTrackTypeValues.map[json["audioTrackType"]]!,
    isCc: json["isCC"],
    isLarge: json["isLarge"],
    isEasyReader: json["isEasyReader"],
    isDraft: json["isDraft"],
    isAutoSynced: json["isAutoSynced"],
    status: statusValues.map[json["status"]]!,
  );

  Map<String, dynamic> toJson() => {
    "videoId": videoIdValues.reverse[videoId],
    "lastUpdated": lastUpdated?.toIso8601String(),
    "trackKind": trackKindValues.reverse[trackKind],
    "language": language,
    "name": name,
    "audioTrackType": audioTrackTypeValues.reverse[audioTrackType],
    "isCC": isCc,
    "isLarge": isLarge,
    "isEasyReader": isEasyReader,
    "isDraft": isDraft,
    "isAutoSynced": isAutoSynced,
    "status": statusValues.reverse[status],
  };
}

enum AudioTrackType {
  UNKNOWN
}

final audioTrackTypeValues = EnumValues({
  "unknown": AudioTrackType.UNKNOWN
});

enum Status {
  SERVING
}

final statusValues = EnumValues({
  "serving": Status.SERVING
});

enum TrackKind {
  STANDARD
}

final trackKindValues = EnumValues({
  "standard": TrackKind.STANDARD
});

enum VideoId {
  M7_F_IVFX5_J10
}

final videoIdValues = EnumValues({
  "M7FIvfx5J10": VideoId.M7_F_IVFX5_J10
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
