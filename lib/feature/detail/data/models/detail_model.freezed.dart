// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailModel _$DetailModelFromJson(Map<String, dynamic> json) {
  return _DetailModel.fromJson(json);
}

/// @nodoc
mixin _$DetailModel {
  int get id => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_desc')
  String get shortDesc => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  List<Comment> get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailModelCopyWith<DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailModelCopyWith<$Res> {
  factory $DetailModelCopyWith(
          DetailModel value, $Res Function(DetailModel) then) =
      _$DetailModelCopyWithImpl<$Res, DetailModel>;
  @useResult
  $Res call(
      {int id,
      String tag,
      String title,
      String text,
      String image,
      @JsonKey(name: 'short_desc') String shortDesc,
      String author,
      @JsonKey(name: 'is_liked') bool isLiked,
      List<Comment> comment});
}

/// @nodoc
class _$DetailModelCopyWithImpl<$Res, $Val extends DetailModel>
    implements $DetailModelCopyWith<$Res> {
  _$DetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
    Object? title = null,
    Object? text = null,
    Object? image = null,
    Object? shortDesc = null,
    Object? author = null,
    Object? isLiked = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: null == shortDesc
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailModelCopyWith<$Res>
    implements $DetailModelCopyWith<$Res> {
  factory _$$_DetailModelCopyWith(
          _$_DetailModel value, $Res Function(_$_DetailModel) then) =
      __$$_DetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String tag,
      String title,
      String text,
      String image,
      @JsonKey(name: 'short_desc') String shortDesc,
      String author,
      @JsonKey(name: 'is_liked') bool isLiked,
      List<Comment> comment});
}

/// @nodoc
class __$$_DetailModelCopyWithImpl<$Res>
    extends _$DetailModelCopyWithImpl<$Res, _$_DetailModel>
    implements _$$_DetailModelCopyWith<$Res> {
  __$$_DetailModelCopyWithImpl(
      _$_DetailModel _value, $Res Function(_$_DetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
    Object? title = null,
    Object? text = null,
    Object? image = null,
    Object? shortDesc = null,
    Object? author = null,
    Object? isLiked = null,
    Object? comment = null,
  }) {
    return _then(_$_DetailModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: null == shortDesc
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailModel implements _DetailModel {
  const _$_DetailModel(
      {this.id = 1,
      this.tag = '',
      this.title = '',
      this.text = '',
      this.image = '',
      @JsonKey(name: 'short_desc') this.shortDesc = '',
      this.author = '',
      @JsonKey(name: 'is_liked') this.isLiked = false,
      final List<Comment> comment = const []})
      : _comment = comment;

  factory _$_DetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String tag;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey(name: 'short_desc')
  final String shortDesc;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  final List<Comment> _comment;
  @override
  @JsonKey()
  List<Comment> get comment {
    if (_comment is EqualUnmodifiableListView) return _comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  String toString() {
    return 'DetailModel(id: $id, tag: $tag, title: $title, text: $text, image: $image, shortDesc: $shortDesc, author: $author, isLiked: $isLiked, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.shortDesc, shortDesc) ||
                other.shortDesc == shortDesc) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            const DeepCollectionEquality().equals(other._comment, _comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tag,
      title,
      text,
      image,
      shortDesc,
      author,
      isLiked,
      const DeepCollectionEquality().hash(_comment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailModelCopyWith<_$_DetailModel> get copyWith =>
      __$$_DetailModelCopyWithImpl<_$_DetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailModelToJson(
      this,
    );
  }
}

abstract class _DetailModel implements DetailModel {
  const factory _DetailModel(
      {final int id,
      final String tag,
      final String title,
      final String text,
      final String image,
      @JsonKey(name: 'short_desc') final String shortDesc,
      final String author,
      @JsonKey(name: 'is_liked') final bool isLiked,
      final List<Comment> comment}) = _$_DetailModel;

  factory _DetailModel.fromJson(Map<String, dynamic> json) =
      _$_DetailModel.fromJson;

  @override
  int get id;
  @override
  String get tag;
  @override
  String get title;
  @override
  String get text;
  @override
  String get image;
  @override
  @JsonKey(name: 'short_desc')
  String get shortDesc;
  @override
  String get author;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  List<Comment> get comment;
  @override
  @JsonKey(ignore: true)
  _$$_DetailModelCopyWith<_$_DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
