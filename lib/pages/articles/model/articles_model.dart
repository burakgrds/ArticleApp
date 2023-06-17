import 'dart:convert';

ArticlesModel articlesModelFromJson(String str) =>
    ArticlesModel.fromJson(json.decode(str));

String articlesModelToJson(ArticlesModel data) => json.encode(data.toJson());

class ArticlesModel {
  ArticlesModel({
    this.results = const [],
  });

  List<Results> results;

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        results:
            List<Results>.from(json["results"].map((x) => Results.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Results {
  String? uri;
  String? url;
  int? id;
  int? assetId;
  String? source;
  String? publishedDate;
  String? updated;
  String? section;
  String? subsection;
  String? nytdsection;
  String? adxKeywords;
  Null? column;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  List<String>? desFacet;
  List<String>? orgFacet;
  List<String>? perFacet;
  List<String>? geoFacet;
  List<Media>? media;
  int? etaId;

  Results(
      {this.uri,
      this.url,
      this.id,
      this.assetId,
      this.source,
      this.publishedDate,
      this.updated,
      this.section,
      this.subsection,
      this.nytdsection,
      this.adxKeywords,
      this.column,
      this.byline,
      this.type,
      this.title,
      this.abstract,
      this.desFacet,
      this.orgFacet,
      this.perFacet,
      this.geoFacet,
      this.media,
      this.etaId});

  Results.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    url = json['url'];
    id = json['id'];
    assetId = json['asset_id'];
    source = json['source'];
    publishedDate = json['published_date'];
    updated = json['updated'];
    section = json['section'];
    subsection = json['subsection'];
    nytdsection = json['nytdsection'];
    adxKeywords = json['adx_keywords'];
    column = json['column'];
    byline = json['byline'];
    type = json['type'];
    title = json['title'];
    abstract = json['abstract'];
    desFacet = json['des_facet'].cast<String>();
    orgFacet = json['org_facet'].cast<String>();
    perFacet = json['per_facet'].cast<String>();
    geoFacet = json['geo_facet'].cast<String>();
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    etaId = json['eta_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['uri'] = this.uri;
    data['url'] = this.url;
    data['id'] = this.id;
    data['asset_id'] = this.assetId;
    data['source'] = this.source;
    data['published_date'] = this.publishedDate;
    data['updated'] = this.updated;
    data['section'] = this.section;
    data['subsection'] = this.subsection;
    data['nytdsection'] = this.nytdsection;
    data['adx_keywords'] = this.adxKeywords;
    data['column'] = this.column;
    data['byline'] = this.byline;
    data['type'] = this.type;
    data['title'] = this.title;
    data['abstract'] = this.abstract;
    data['des_facet'] = this.desFacet;
    data['org_facet'] = this.orgFacet;
    data['per_facet'] = this.perFacet;
    data['geo_facet'] = this.geoFacet;
    if (this.media != null) {
      data['media'] = this.media!.map((v) => v.toJson()).toList();
    }
    data['eta_id'] = this.etaId;
    return data;
  }
}

class Media {
  String? type;
  String? subtype;
  String? caption;
  String? copyright;
  int? approvedForSyndication;
  List<MediaMetadata>? mediaMetadata;

  Media(
      {this.type,
      this.subtype,
      this.caption,
      this.copyright,
      this.approvedForSyndication,
      this.mediaMetadata});

  Media.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    subtype = json['subtype'];
    caption = json['caption'];
    copyright = json['copyright'];
    approvedForSyndication = json['approved_for_syndication'];
    if (json['media-metadata'] != null) {
      mediaMetadata = <MediaMetadata>[];
      json['media-metadata'].forEach((v) {
        mediaMetadata!.add(MediaMetadata.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['type'] = this.type;
    data['subtype'] = this.subtype;
    data['caption'] = this.caption;
    data['copyright'] = this.copyright;
    data['approved_for_syndication'] = this.approvedForSyndication;
    if (this.mediaMetadata != null) {
      data['media-metadata'] =
          this.mediaMetadata!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MediaMetadata {
  String? url;
  String? format;
  int? height;
  int? width;

  MediaMetadata({this.url, this.format, this.height, this.width});

  MediaMetadata.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    format = json['format'];
    height = json['height'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = this.url;
    data['format'] = this.format;
    data['height'] = this.height;
    data['width'] = this.width;
    return data;
  }
}
