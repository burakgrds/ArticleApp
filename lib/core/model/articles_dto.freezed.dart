// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticlesDto _$ArticlesDtoFromJson(Map<String, dynamic> json) {
  return _ArticlesDto.fromJson(json);
}

/// @nodoc
mixin _$ArticlesDto {
  List<ResultsDto> get results => throw _privateConstructorUsedError;

  /// Serializes this ArticlesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticlesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticlesDtoCopyWith<ArticlesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesDtoCopyWith<$Res> {
  factory $ArticlesDtoCopyWith(
          ArticlesDto value, $Res Function(ArticlesDto) then) =
      _$ArticlesDtoCopyWithImpl<$Res, ArticlesDto>;
  @useResult
  $Res call({List<ResultsDto> results});
}

/// @nodoc
class _$ArticlesDtoCopyWithImpl<$Res, $Val extends ArticlesDto>
    implements $ArticlesDtoCopyWith<$Res> {
  _$ArticlesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticlesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticlesDtoImplCopyWith<$Res>
    implements $ArticlesDtoCopyWith<$Res> {
  factory _$$ArticlesDtoImplCopyWith(
          _$ArticlesDtoImpl value, $Res Function(_$ArticlesDtoImpl) then) =
      __$$ArticlesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultsDto> results});
}

/// @nodoc
class __$$ArticlesDtoImplCopyWithImpl<$Res>
    extends _$ArticlesDtoCopyWithImpl<$Res, _$ArticlesDtoImpl>
    implements _$$ArticlesDtoImplCopyWith<$Res> {
  __$$ArticlesDtoImplCopyWithImpl(
      _$ArticlesDtoImpl _value, $Res Function(_$ArticlesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticlesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$ArticlesDtoImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticlesDtoImpl implements _ArticlesDto {
  _$ArticlesDtoImpl({final List<ResultsDto> results = const []})
      : _results = results;

  factory _$ArticlesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticlesDtoImplFromJson(json);

  final List<ResultsDto> _results;
  @override
  @JsonKey()
  List<ResultsDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ArticlesDto(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlesDtoImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  /// Create a copy of ArticlesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlesDtoImplCopyWith<_$ArticlesDtoImpl> get copyWith =>
      __$$ArticlesDtoImplCopyWithImpl<_$ArticlesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticlesDtoImplToJson(
      this,
    );
  }
}

abstract class _ArticlesDto implements ArticlesDto {
  factory _ArticlesDto({final List<ResultsDto> results}) = _$ArticlesDtoImpl;

  factory _ArticlesDto.fromJson(Map<String, dynamic> json) =
      _$ArticlesDtoImpl.fromJson;

  @override
  List<ResultsDto> get results;

  /// Create a copy of ArticlesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticlesDtoImplCopyWith<_$ArticlesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsDto _$ResultsDtoFromJson(Map<String, dynamic> json) {
  return _ResultsDto.fromJson(json);
}

/// @nodoc
mixin _$ResultsDto {
  @JsonKey(name: 'uri')
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_id')
  int? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_date')
  String? get publishedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated')
  String? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'subsection')
  String? get subsection => throw _privateConstructorUsedError;
  @JsonKey(name: 'unytdsectionri')
  String? get nytdsection => throw _privateConstructorUsedError;
  @JsonKey(name: 'adx_keywords')
  String? get adxKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'column')
  String? get column => throw _privateConstructorUsedError;
  @JsonKey(name: 'byline')
  String? get byline => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'abstract')
  String? get abstract => throw _privateConstructorUsedError;
  @JsonKey(name: 'des_facet')
  List<String> get desFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'org_facet')
  List<String> get orgFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_faceturi')
  List<String> get perFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'geo_facet')
  List<String> get geoFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<MediaDto> get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'eta_id')
  int? get etaId => throw _privateConstructorUsedError;

  /// Serializes this ResultsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsDtoCopyWith<ResultsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsDtoCopyWith<$Res> {
  factory $ResultsDtoCopyWith(
          ResultsDto value, $Res Function(ResultsDto) then) =
      _$ResultsDtoCopyWithImpl<$Res, ResultsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri,
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
      @JsonKey(name: 'des_facet') List<String> desFacet,
      @JsonKey(name: 'org_facet') List<String> orgFacet,
      @JsonKey(name: 'per_faceturi') List<String> perFacet,
      @JsonKey(name: 'geo_facet') List<String> geoFacet,
      @JsonKey(name: 'media') List<MediaDto> media,
      @JsonKey(name: 'eta_id') int? etaId});
}

/// @nodoc
class _$ResultsDtoCopyWithImpl<$Res, $Val extends ResultsDto>
    implements $ResultsDtoCopyWith<$Res> {
  _$ResultsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? url = freezed,
    Object? id = freezed,
    Object? assetId = freezed,
    Object? source = freezed,
    Object? publishedDate = freezed,
    Object? updated = freezed,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? nytdsection = freezed,
    Object? adxKeywords = freezed,
    Object? column = freezed,
    Object? byline = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? desFacet = null,
    Object? orgFacet = null,
    Object? perFacet = null,
    Object? geoFacet = null,
    Object? media = null,
    Object? etaId = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      nytdsection: freezed == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String?,
      adxKeywords: freezed == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      desFacet: null == desFacet
          ? _value.desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orgFacet: null == orgFacet
          ? _value.orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      perFacet: null == perFacet
          ? _value.perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      geoFacet: null == geoFacet
          ? _value.geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaDto>,
      etaId: freezed == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultsDtoImplCopyWith<$Res>
    implements $ResultsDtoCopyWith<$Res> {
  factory _$$ResultsDtoImplCopyWith(
          _$ResultsDtoImpl value, $Res Function(_$ResultsDtoImpl) then) =
      __$$ResultsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri,
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
      @JsonKey(name: 'des_facet') List<String> desFacet,
      @JsonKey(name: 'org_facet') List<String> orgFacet,
      @JsonKey(name: 'per_faceturi') List<String> perFacet,
      @JsonKey(name: 'geo_facet') List<String> geoFacet,
      @JsonKey(name: 'media') List<MediaDto> media,
      @JsonKey(name: 'eta_id') int? etaId});
}

/// @nodoc
class __$$ResultsDtoImplCopyWithImpl<$Res>
    extends _$ResultsDtoCopyWithImpl<$Res, _$ResultsDtoImpl>
    implements _$$ResultsDtoImplCopyWith<$Res> {
  __$$ResultsDtoImplCopyWithImpl(
      _$ResultsDtoImpl _value, $Res Function(_$ResultsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? url = freezed,
    Object? id = freezed,
    Object? assetId = freezed,
    Object? source = freezed,
    Object? publishedDate = freezed,
    Object? updated = freezed,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? nytdsection = freezed,
    Object? adxKeywords = freezed,
    Object? column = freezed,
    Object? byline = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? desFacet = null,
    Object? orgFacet = null,
    Object? perFacet = null,
    Object? geoFacet = null,
    Object? media = null,
    Object? etaId = freezed,
  }) {
    return _then(_$ResultsDtoImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      nytdsection: freezed == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String?,
      adxKeywords: freezed == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      desFacet: null == desFacet
          ? _value._desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orgFacet: null == orgFacet
          ? _value._orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      perFacet: null == perFacet
          ? _value._perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      geoFacet: null == geoFacet
          ? _value._geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaDto>,
      etaId: freezed == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsDtoImpl implements _ResultsDto {
  _$ResultsDtoImpl(
      {@JsonKey(name: 'uri') this.uri,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'asset_id') this.assetId,
      @JsonKey(name: 'source') this.source,
      @JsonKey(name: 'published_date') this.publishedDate,
      @JsonKey(name: 'updated') this.updated,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'subsection') this.subsection,
      @JsonKey(name: 'unytdsectionri') this.nytdsection,
      @JsonKey(name: 'adx_keywords') this.adxKeywords,
      @JsonKey(name: 'column') this.column,
      @JsonKey(name: 'byline') this.byline,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'abstract') this.abstract,
      @JsonKey(name: 'des_facet') final List<String> desFacet = const [""],
      @JsonKey(name: 'org_facet') final List<String> orgFacet = const [""],
      @JsonKey(name: 'per_faceturi') final List<String> perFacet = const [""],
      @JsonKey(name: 'geo_facet') final List<String> geoFacet = const [""],
      @JsonKey(name: 'media') final List<MediaDto> media = const [],
      @JsonKey(name: 'eta_id') this.etaId})
      : _desFacet = desFacet,
        _orgFacet = orgFacet,
        _perFacet = perFacet,
        _geoFacet = geoFacet,
        _media = media;

  factory _$ResultsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'uri')
  final String? uri;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'asset_id')
  final int? assetId;
  @override
  @JsonKey(name: 'source')
  final String? source;
  @override
  @JsonKey(name: 'published_date')
  final String? publishedDate;
  @override
  @JsonKey(name: 'updated')
  final String? updated;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'subsection')
  final String? subsection;
  @override
  @JsonKey(name: 'unytdsectionri')
  final String? nytdsection;
  @override
  @JsonKey(name: 'adx_keywords')
  final String? adxKeywords;
  @override
  @JsonKey(name: 'column')
  final String? column;
  @override
  @JsonKey(name: 'byline')
  final String? byline;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'abstract')
  final String? abstract;
  final List<String> _desFacet;
  @override
  @JsonKey(name: 'des_facet')
  List<String> get desFacet {
    if (_desFacet is EqualUnmodifiableListView) return _desFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_desFacet);
  }

  final List<String> _orgFacet;
  @override
  @JsonKey(name: 'org_facet')
  List<String> get orgFacet {
    if (_orgFacet is EqualUnmodifiableListView) return _orgFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orgFacet);
  }

  final List<String> _perFacet;
  @override
  @JsonKey(name: 'per_faceturi')
  List<String> get perFacet {
    if (_perFacet is EqualUnmodifiableListView) return _perFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_perFacet);
  }

  final List<String> _geoFacet;
  @override
  @JsonKey(name: 'geo_facet')
  List<String> get geoFacet {
    if (_geoFacet is EqualUnmodifiableListView) return _geoFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_geoFacet);
  }

  final List<MediaDto> _media;
  @override
  @JsonKey(name: 'media')
  List<MediaDto> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey(name: 'eta_id')
  final int? etaId;

  @override
  String toString() {
    return 'ResultsDto(uri: $uri, url: $url, id: $id, assetId: $assetId, source: $source, publishedDate: $publishedDate, updated: $updated, section: $section, subsection: $subsection, nytdsection: $nytdsection, adxKeywords: $adxKeywords, column: $column, byline: $byline, type: $type, title: $title, abstract: $abstract, desFacet: $desFacet, orgFacet: $orgFacet, perFacet: $perFacet, geoFacet: $geoFacet, media: $media, etaId: $etaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsDtoImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.subsection, subsection) ||
                other.subsection == subsection) &&
            (identical(other.nytdsection, nytdsection) ||
                other.nytdsection == nytdsection) &&
            (identical(other.adxKeywords, adxKeywords) ||
                other.adxKeywords == adxKeywords) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.byline, byline) || other.byline == byline) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            const DeepCollectionEquality().equals(other._desFacet, _desFacet) &&
            const DeepCollectionEquality().equals(other._orgFacet, _orgFacet) &&
            const DeepCollectionEquality().equals(other._perFacet, _perFacet) &&
            const DeepCollectionEquality().equals(other._geoFacet, _geoFacet) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.etaId, etaId) || other.etaId == etaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uri,
        url,
        id,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nytdsection,
        adxKeywords,
        column,
        byline,
        type,
        title,
        abstract,
        const DeepCollectionEquality().hash(_desFacet),
        const DeepCollectionEquality().hash(_orgFacet),
        const DeepCollectionEquality().hash(_perFacet),
        const DeepCollectionEquality().hash(_geoFacet),
        const DeepCollectionEquality().hash(_media),
        etaId
      ]);

  /// Create a copy of ResultsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsDtoImplCopyWith<_$ResultsDtoImpl> get copyWith =>
      __$$ResultsDtoImplCopyWithImpl<_$ResultsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsDtoImplToJson(
      this,
    );
  }
}

abstract class _ResultsDto implements ResultsDto {
  factory _ResultsDto(
      {@JsonKey(name: 'uri') final String? uri,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'asset_id') final int? assetId,
      @JsonKey(name: 'source') final String? source,
      @JsonKey(name: 'published_date') final String? publishedDate,
      @JsonKey(name: 'updated') final String? updated,
      @JsonKey(name: 'section') final String? section,
      @JsonKey(name: 'subsection') final String? subsection,
      @JsonKey(name: 'unytdsectionri') final String? nytdsection,
      @JsonKey(name: 'adx_keywords') final String? adxKeywords,
      @JsonKey(name: 'column') final String? column,
      @JsonKey(name: 'byline') final String? byline,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'abstract') final String? abstract,
      @JsonKey(name: 'des_facet') final List<String> desFacet,
      @JsonKey(name: 'org_facet') final List<String> orgFacet,
      @JsonKey(name: 'per_faceturi') final List<String> perFacet,
      @JsonKey(name: 'geo_facet') final List<String> geoFacet,
      @JsonKey(name: 'media') final List<MediaDto> media,
      @JsonKey(name: 'eta_id') final int? etaId}) = _$ResultsDtoImpl;

  factory _ResultsDto.fromJson(Map<String, dynamic> json) =
      _$ResultsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'uri')
  String? get uri;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'asset_id')
  int? get assetId;
  @override
  @JsonKey(name: 'source')
  String? get source;
  @override
  @JsonKey(name: 'published_date')
  String? get publishedDate;
  @override
  @JsonKey(name: 'updated')
  String? get updated;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'subsection')
  String? get subsection;
  @override
  @JsonKey(name: 'unytdsectionri')
  String? get nytdsection;
  @override
  @JsonKey(name: 'adx_keywords')
  String? get adxKeywords;
  @override
  @JsonKey(name: 'column')
  String? get column;
  @override
  @JsonKey(name: 'byline')
  String? get byline;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'abstract')
  String? get abstract;
  @override
  @JsonKey(name: 'des_facet')
  List<String> get desFacet;
  @override
  @JsonKey(name: 'org_facet')
  List<String> get orgFacet;
  @override
  @JsonKey(name: 'per_faceturi')
  List<String> get perFacet;
  @override
  @JsonKey(name: 'geo_facet')
  List<String> get geoFacet;
  @override
  @JsonKey(name: 'media')
  List<MediaDto> get media;
  @override
  @JsonKey(name: 'eta_id')
  int? get etaId;

  /// Create a copy of ResultsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsDtoImplCopyWith<_$ResultsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaDto _$MediaDtoFromJson(Map<String, dynamic> json) {
  return _MediaDto.fromJson(json);
}

/// @nodoc
mixin _$MediaDto {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtype')
  String? get subtype => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: 'copyright')
  String? get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_for_syndication')
  int? get approvedForSyndication => throw _privateConstructorUsedError;
  @JsonKey(name: 'media-metadata')
  List<MediaMetadataDto> get mediaMetadata =>
      throw _privateConstructorUsedError;

  /// Serializes this MediaDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaDtoCopyWith<MediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDtoCopyWith<$Res> {
  factory $MediaDtoCopyWith(MediaDto value, $Res Function(MediaDto) then) =
      _$MediaDtoCopyWithImpl<$Res, MediaDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'subtype') String? subtype,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'copyright') String? copyright,
      @JsonKey(name: 'approved_for_syndication') int? approvedForSyndication,
      @JsonKey(name: 'media-metadata') List<MediaMetadataDto> mediaMetadata});
}

/// @nodoc
class _$MediaDtoCopyWithImpl<$Res, $Val extends MediaDto>
    implements $MediaDtoCopyWith<$Res> {
  _$MediaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? subtype = freezed,
    Object? caption = freezed,
    Object? copyright = freezed,
    Object? approvedForSyndication = freezed,
    Object? mediaMetadata = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedForSyndication: freezed == approvedForSyndication
          ? _value.approvedForSyndication
          : approvedForSyndication // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaMetadata: null == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as List<MediaMetadataDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaDtoImplCopyWith<$Res>
    implements $MediaDtoCopyWith<$Res> {
  factory _$$MediaDtoImplCopyWith(
          _$MediaDtoImpl value, $Res Function(_$MediaDtoImpl) then) =
      __$$MediaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'subtype') String? subtype,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'copyright') String? copyright,
      @JsonKey(name: 'approved_for_syndication') int? approvedForSyndication,
      @JsonKey(name: 'media-metadata') List<MediaMetadataDto> mediaMetadata});
}

/// @nodoc
class __$$MediaDtoImplCopyWithImpl<$Res>
    extends _$MediaDtoCopyWithImpl<$Res, _$MediaDtoImpl>
    implements _$$MediaDtoImplCopyWith<$Res> {
  __$$MediaDtoImplCopyWithImpl(
      _$MediaDtoImpl _value, $Res Function(_$MediaDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? subtype = freezed,
    Object? caption = freezed,
    Object? copyright = freezed,
    Object? approvedForSyndication = freezed,
    Object? mediaMetadata = null,
  }) {
    return _then(_$MediaDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedForSyndication: freezed == approvedForSyndication
          ? _value.approvedForSyndication
          : approvedForSyndication // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaMetadata: null == mediaMetadata
          ? _value._mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as List<MediaMetadataDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaDtoImpl implements _MediaDto {
  _$MediaDtoImpl(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'subtype') this.subtype,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'copyright') this.copyright,
      @JsonKey(name: 'approved_for_syndication') this.approvedForSyndication,
      @JsonKey(name: 'media-metadata')
      final List<MediaMetadataDto> mediaMetadata = const []})
      : _mediaMetadata = mediaMetadata;

  factory _$MediaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaDtoImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'subtype')
  final String? subtype;
  @override
  @JsonKey(name: 'caption')
  final String? caption;
  @override
  @JsonKey(name: 'copyright')
  final String? copyright;
  @override
  @JsonKey(name: 'approved_for_syndication')
  final int? approvedForSyndication;
  final List<MediaMetadataDto> _mediaMetadata;
  @override
  @JsonKey(name: 'media-metadata')
  List<MediaMetadataDto> get mediaMetadata {
    if (_mediaMetadata is EqualUnmodifiableListView) return _mediaMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaMetadata);
  }

  @override
  String toString() {
    return 'MediaDto(type: $type, subtype: $subtype, caption: $caption, copyright: $copyright, approvedForSyndication: $approvedForSyndication, mediaMetadata: $mediaMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.approvedForSyndication, approvedForSyndication) ||
                other.approvedForSyndication == approvedForSyndication) &&
            const DeepCollectionEquality()
                .equals(other._mediaMetadata, _mediaMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      subtype,
      caption,
      copyright,
      approvedForSyndication,
      const DeepCollectionEquality().hash(_mediaMetadata));

  /// Create a copy of MediaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaDtoImplCopyWith<_$MediaDtoImpl> get copyWith =>
      __$$MediaDtoImplCopyWithImpl<_$MediaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaDtoImplToJson(
      this,
    );
  }
}

abstract class _MediaDto implements MediaDto {
  factory _MediaDto(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'subtype') final String? subtype,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'copyright') final String? copyright,
      @JsonKey(name: 'approved_for_syndication')
      final int? approvedForSyndication,
      @JsonKey(name: 'media-metadata')
      final List<MediaMetadataDto> mediaMetadata}) = _$MediaDtoImpl;

  factory _MediaDto.fromJson(Map<String, dynamic> json) =
      _$MediaDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'subtype')
  String? get subtype;
  @override
  @JsonKey(name: 'caption')
  String? get caption;
  @override
  @JsonKey(name: 'copyright')
  String? get copyright;
  @override
  @JsonKey(name: 'approved_for_syndication')
  int? get approvedForSyndication;
  @override
  @JsonKey(name: 'media-metadata')
  List<MediaMetadataDto> get mediaMetadata;

  /// Create a copy of MediaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaDtoImplCopyWith<_$MediaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaMetadataDto _$MediaMetadataDtoFromJson(Map<String, dynamic> json) {
  return _MMediaMetadataDto.fromJson(json);
}

/// @nodoc
mixin _$MediaMetadataDto {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;

  /// Serializes this MediaMetadataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaMetadataDtoCopyWith<MediaMetadataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetadataDtoCopyWith<$Res> {
  factory $MediaMetadataDtoCopyWith(
          MediaMetadataDto value, $Res Function(MediaMetadataDto) then) =
      _$MediaMetadataDtoCopyWithImpl<$Res, MediaMetadataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class _$MediaMetadataDtoCopyWithImpl<$Res, $Val extends MediaMetadataDto>
    implements $MediaMetadataDtoCopyWith<$Res> {
  _$MediaMetadataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MMediaMetadataDtoImplCopyWith<$Res>
    implements $MediaMetadataDtoCopyWith<$Res> {
  factory _$$MMediaMetadataDtoImplCopyWith(_$MMediaMetadataDtoImpl value,
          $Res Function(_$MMediaMetadataDtoImpl) then) =
      __$$MMediaMetadataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class __$$MMediaMetadataDtoImplCopyWithImpl<$Res>
    extends _$MediaMetadataDtoCopyWithImpl<$Res, _$MMediaMetadataDtoImpl>
    implements _$$MMediaMetadataDtoImplCopyWith<$Res> {
  __$$MMediaMetadataDtoImplCopyWithImpl(_$MMediaMetadataDtoImpl _value,
      $Res Function(_$MMediaMetadataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$MMediaMetadataDtoImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MMediaMetadataDtoImpl implements _MMediaMetadataDto {
  _$MMediaMetadataDtoImpl(
      {@JsonKey(name: 'url') this.url,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'width') this.width});

  factory _$MMediaMetadataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MMediaMetadataDtoImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'width')
  final int? width;

  @override
  String toString() {
    return 'MediaMetadataDto(url: $url, format: $format, height: $height, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MMediaMetadataDtoImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width);

  /// Create a copy of MediaMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MMediaMetadataDtoImplCopyWith<_$MMediaMetadataDtoImpl> get copyWith =>
      __$$MMediaMetadataDtoImplCopyWithImpl<_$MMediaMetadataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MMediaMetadataDtoImplToJson(
      this,
    );
  }
}

abstract class _MMediaMetadataDto implements MediaMetadataDto {
  factory _MMediaMetadataDto(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'width') final int? width}) = _$MMediaMetadataDtoImpl;

  factory _MMediaMetadataDto.fromJson(Map<String, dynamic> json) =
      _$MMediaMetadataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'width')
  int? get width;

  /// Create a copy of MediaMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MMediaMetadataDtoImplCopyWith<_$MMediaMetadataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
