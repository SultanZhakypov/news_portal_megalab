// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postprofile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostProfileModel _$PostProfileModelFromJson(Map<String, dynamic> json) {
  return _PostProfileModel.fromJson(json);
}

/// @nodoc
mixin _$PostProfileModel {
  int get id => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  List<Comment> get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostProfileModelCopyWith<PostProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostProfileModelCopyWith<$Res> {
  factory $PostProfileModelCopyWith(
          PostProfileModel value, $Res Function(PostProfileModel) then) =
      _$PostProfileModelCopyWithImpl<$Res, PostProfileModel>;
  @useResult
  $Res call(
      {int id,
      String tag,
      String title,
      String text,
      String? image,
      @JsonKey(name: 'is_liked') bool isLiked,
      List<Comment> comment});
}

/// @nodoc
class _$PostProfileModelCopyWithImpl<$Res, $Val extends PostProfileModel>
    implements $PostProfileModelCopyWith<$Res> {
  _$PostProfileModelCopyWithImpl(this._value, this._then);

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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_PostProfileModelCopyWith<$Res>
    implements $PostProfileModelCopyWith<$Res> {
  factory _$$_PostProfileModelCopyWith(
          _$_PostProfileModel value, $Res Function(_$_PostProfileModel) then) =
      __$$_PostProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String tag,
      String title,
      String text,
      String? image,
      @JsonKey(name: 'is_liked') bool isLiked,
      List<Comment> comment});
}

/// @nodoc
class __$$_PostProfileModelCopyWithImpl<$Res>
    extends _$PostProfileModelCopyWithImpl<$Res, _$_PostProfileModel>
    implements _$$_PostProfileModelCopyWith<$Res> {
  __$$_PostProfileModelCopyWithImpl(
      _$_PostProfileModel _value, $Res Function(_$_PostProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
    Object? title = null,
    Object? text = null,
    Object? image = freezed,
    Object? isLiked = null,
    Object? comment = null,
  }) {
    return _then(_$_PostProfileModel(
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_PostProfileModel implements _PostProfileModel {
  const _$_PostProfileModel(
      {this.id = 1,
      this.tag = '',
      this.title = '',
      this.text = '',
      this.image = '',
      @JsonKey(name: 'is_liked') this.isLiked = false,
      final List<Comment> comment = const []})
      : _comment = comment;

  factory _$_PostProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostProfileModelFromJson(json);

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
  final String? image;
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
    return 'PostProfileModel(id: $id, tag: $tag, title: $title, text: $text, image: $image, isLiked: $isLiked, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            const DeepCollectionEquality().equals(other._comment, _comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tag, title, text, image,
      isLiked, const DeepCollectionEquality().hash(_comment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostProfileModelCopyWith<_$_PostProfileModel> get copyWith =>
      __$$_PostProfileModelCopyWithImpl<_$_PostProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostProfileModelToJson(
      this,
    );
  }
}

abstract class _PostProfileModel implements PostProfileModel {
  const factory _PostProfileModel(
      {final int id,
      final String tag,
      final String title,
      final String text,
      final String? image,
      @JsonKey(name: 'is_liked') final bool isLiked,
      final List<Comment> comment}) = _$_PostProfileModel;

  factory _PostProfileModel.fromJson(Map<String, dynamic> json) =
      _$_PostProfileModel.fromJson;

  @override
  int get id;
  @override
  String get tag;
  @override
  String get title;
  @override
  String get text;
  @override
  String? get image;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  List<Comment> get comment;
  @override
  @JsonKey(ignore: true)
  _$$_PostProfileModelCopyWith<_$_PostProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
