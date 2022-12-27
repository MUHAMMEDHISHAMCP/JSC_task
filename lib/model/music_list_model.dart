class MusicListModel {
  MusicListModel({
    this.resultCount,
    this.results,
  });

  int? resultCount;
  List<Result>? results;

  factory MusicListModel.fromJson(Map<String, dynamic> json) => MusicListModel(
      resultCount: json["resultCount"],
      results: List<Result>.from(
        json["results"].map(
          (x) => Result.fromJson(x),
        ),
      ));
}

class Result {
  Result(
      {this.wrapperType,
      this.kind,
      this.artistName,
      this.collectionName,
      this.trackName,
      this.collectionCensoredName,
      this.trackCensoredName,
      this.collectionArtistViewUrl,
      this.collectionViewUrl,
      this.trackViewUrl,
      this.previewUrl,
      this.artworkUrl30,
      this.artworkUrl60,
      this.artworkUrl100,
      this.releaseDate,
      this.primaryGenreName,
      this.longDescription,
      this.hasITunesExtras,
      this.shortDescription,
      this.artistViewUrl,
      this.isStreamable,
      this.copyright,
      this.description,
      this.feedUrl,
      this.artworkUrl600,
      this.country});

  String? wrapperType;
  String? kind;

  String? artistName;
  String? collectionName;
  String? trackName;
  String? collectionCensoredName;
  String? trackCensoredName;

  String? collectionArtistViewUrl;
  String? collectionViewUrl;
  String? trackViewUrl;
  String? previewUrl;
  String? artworkUrl30;
  String? artworkUrl60;
  String? artworkUrl100;

  DateTime? releaseDate;

  String? primaryGenreName;
  String? longDescription;
  bool? hasITunesExtras;

  String? shortDescription;
  String? artistViewUrl;
  bool? isStreamable;
  String? copyright;
  String? description;
  String? feedUrl;
  String? artworkUrl600;
  String? country;

  factory Result.fromJson(Map<String?, dynamic> json) => Result(
        wrapperType: json["wrapperType"],
        kind: json["kind"],
        artistName: json["artistName"],
        collectionName: json["collectionName"],
        trackName: json["trackName"],
        collectionCensoredName: json["collectionCensoredName"],
        trackCensoredName: json["trackCensoredName"],
        collectionArtistViewUrl: json["collectionArtistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"],
        trackViewUrl: json["trackViewUrl"],
        previewUrl: json["previewUrl"],
        artworkUrl30: json["artworkUrl30"],
        artworkUrl60: json["artworkUrl60"],
        artworkUrl100: json["artworkUrl100"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        country: json["country"],
        primaryGenreName: json["primaryGenreName"],
        longDescription: json["longDescription"],
        hasITunesExtras: json["hasITunesExtras"],
        shortDescription: json["shortDescription"],
        artistViewUrl: json["artistViewUrl"],
        isStreamable: json["isStreamable"],
        copyright: json["copyright"],
        description: json["description"],
        feedUrl: json["feedUrl"],
        artworkUrl600: json["artworkUrl600"],
      );
}
