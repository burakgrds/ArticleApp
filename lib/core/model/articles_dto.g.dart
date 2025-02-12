// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticlesDtoImpl _$$ArticlesDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArticlesDtoImpl(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => ResultsDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ArticlesDtoImplToJson(_$ArticlesDtoImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ResultsDtoImpl _$$ResultsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ResultsDtoImpl(
      uri: json['uri'] as String?,
      url: json['url'] as String?,
      id: (json['id'] as num?)?.toInt(),
      assetId: (json['asset_id'] as num?)?.toInt(),
      source: json['source'] as String?,
      publishedDate: json['published_date'] as String?,
      updated: json['updated'] as String?,
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      nytdsection: json['unytdsectionri'] as String?,
      adxKeywords: json['adx_keywords'] as String?,
      column: json['column'] as String?,
      byline: json['byline'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      abstract: json['abstract'] as String?,
      desFacet: (json['des_facet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [""],
      orgFacet: (json['org_facet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [""],
      perFacet: (json['per_faceturi'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [""],
      geoFacet: (json['geo_facet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [""],
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => MediaDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      etaId: (json['eta_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResultsDtoImplToJson(_$ResultsDtoImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'asset_id': instance.assetId,
      'source': instance.source,
      'published_date': instance.publishedDate,
      'updated': instance.updated,
      'section': instance.section,
      'subsection': instance.subsection,
      'unytdsectionri': instance.nytdsection,
      'adx_keywords': instance.adxKeywords,
      'column': instance.column,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'abstract': instance.abstract,
      'des_facet': instance.desFacet,
      'org_facet': instance.orgFacet,
      'per_faceturi': instance.perFacet,
      'geo_facet': instance.geoFacet,
      'media': instance.media,
      'eta_id': instance.etaId,
    };

_$MediaDtoImpl _$$MediaDtoImplFromJson(Map<String, dynamic> json) =>
    _$MediaDtoImpl(
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
      caption: json['caption'] as String?,
      copyright: json['copyright'] as String?,
      approvedForSyndication:
          (json['approved_for_syndication'] as num?)?.toInt(),
      mediaMetadata: (json['media-metadata'] as List<dynamic>?)
              ?.map((e) => MediaMetadataDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MediaDtoImplToJson(_$MediaDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'approved_for_syndication': instance.approvedForSyndication,
      'media-metadata': instance.mediaMetadata,
    };

_$MMediaMetadataDtoImpl _$$MMediaMetadataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MMediaMetadataDtoImpl(
      url: json['url'] as String?,
      format: json['format'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MMediaMetadataDtoImplToJson(
        _$MMediaMetadataDtoImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
    };
