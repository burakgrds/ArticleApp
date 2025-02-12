// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_dto.freezed.dart';
part 'articles_dto.g.dart';

@freezed
class ArticlesDto with _$ArticlesDto {
  factory ArticlesDto({@Default([]) List<ResultsDto> results}) = _ArticlesDto;

  factory ArticlesDto.fromJson(Map<String, dynamic> json) =>
      _$ArticlesDtoFromJson(json);
}

@freezed
class ResultsDto with _$ResultsDto {
  factory ResultsDto(
      {@JsonKey(name: 'uri') final String? uri,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'asset_id') int? assetId,
      @JsonKey(name: 'source') String? source,
      @JsonKey(name: 'published_date') String? publishedDate,
      @JsonKey(name: 'updated') String? updated,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'subsection') String? subsection,
      @JsonKey(name: 'unytdsectionri') String? nytdsection,
      @JsonKey(name: 'adx_keywords') String? adxKeywords,
      @JsonKey(name: 'column') String? column,
      @JsonKey(name: 'byline') String? byline,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'abstract') String? abstract,
      @JsonKey(name: 'des_facet') @Default([""]) List<String> desFacet,
      @JsonKey(name: 'org_facet') @Default([""]) List<String> orgFacet,
      @JsonKey(name: 'per_faceturi') @Default([""]) List<String> perFacet,
      @JsonKey(name: 'geo_facet') @Default([""]) List<String> geoFacet,
      @JsonKey(name: 'media') @Default([]) List<MediaDto> media,
      @JsonKey(name: 'eta_id') int? etaId}) = _ResultsDto;

  factory ResultsDto.fromJson(Map<String, dynamic> json) =>
      _$ResultsDtoFromJson(json);
}

@freezed
class MediaDto with _$MediaDto {
  factory MediaDto(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'subtype') String? subtype,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'copyright') String? copyright,
      @JsonKey(name: 'approved_for_syndication') int? approvedForSyndication,
      @JsonKey(name: 'media-metadata')
      @Default([])
      List<MediaMetadataDto> mediaMetadata}) = _MediaDto;

  factory MediaDto.fromJson(Map<String, dynamic> json) =>
      _$MediaDtoFromJson(json);
}

@freezed
class MediaMetadataDto with _$MediaMetadataDto {
  factory MediaMetadataDto(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width}) = _MMediaMetadataDto;

  factory MediaMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataDtoFromJson(json);
}
