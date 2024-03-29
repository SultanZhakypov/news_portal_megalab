// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_postlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostListModel _$PostListModelFromJson(Map<String, dynamic> json) {
  return _PostListModel.fromJson(json);
}

/// @nodoc
mixin _$PostListModel {
  int get id => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_desc')
  String get shortDesc => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  List<CommentModel> get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostListModelCopyWith<PostListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListModelCopyWith<$Res> {
  factory $PostListModelCopyWith(
          PostListModel value, $Res Function(PostListModel) then) =
      _$PostListModelCopyWithImpl<$Res, PostListModel>;
  @useResult
  $Res call(
      {int id,
      String tag,
      String title,
      String text,
      String? image,
      @JsonKey(name: 'short_desc') String shortDesc,
      String author,
      @JsonKey(name: 'is_liked') bool isLiked,
      List<CommentModel> comment});
}

/// @nodoc
class _$PostListModelCopyWithImpl<$Res, $Val extends PostListModel>
    implements $PostListModelCopyWith<$Res> {
  _$PostListModelCopyWithImpl(this._value, this._then);

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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<CommentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostListModelCopyWith<$Res>
    implements $PostListModelCopyWith<$Res> {
  factory _$$_PostListModelCopyWith(
          _$_PostListModel value, $Res Function(_$_PostListModel) then) =
      __$$_PostListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String tag,
      String title,
      String text,
      String? image,
      @JsonKey(name: 'short_desc') String shortDesc,
      String author,
      @JsonKey(name: 'is_liked') bool isLiked,
      List<CommentModel> comment});
}

/// @nodoc
class __$$_PostListModelCopyWithImpl<$Res>
    extends _$PostListModelCopyWithImpl<$Res, _$_PostListModel>
    implements _$$_PostListModelCopyWith<$Res> {
  __$$_PostListModelCopyWithImpl(
      _$_PostListModel _value, $Res Function(_$_PostListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
    Object? title = null,
    Object? text = null,
    Object? image = freezed,
    Object? shortDesc = null,
    Object? author = null,
    Object? isLiked = null,
    Object? comment = null,
  }) {
    return _then(_$_PostListModel(
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
              as List<CommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostListModel implements _PostListModel {
  const _$_PostListModel(
      {this.id = 0,
      this.tag = '',
      this.title = '',
      this.text = '',
      this.image = '',
      @JsonKey(name: 'short_desc') this.shortDesc = '',
      this.author = '',
      @JsonKey(name: 'is_liked') this.isLiked = false,
      final List<CommentModel> comment = const []})
      : _comment = comment;

  factory _$_PostListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostListModelFromJson(json);

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
  @JsonKey(name: 'short_desc')
  final String shortDesc;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  final List<CommentModel> _comment;
  @override
  @JsonKey()
  List<CommentModel> get comment {
    if (_comment is EqualUnmodifiableListView) return _comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  String toString() {
    return 'PostListModel(id: $id, tag: $tag, title: $title, text: $text, image: $image, shortDesc: $shortDesc, author: $author, isLiked: $isLiked, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostListModel &&
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
  _$$_PostListModelCopyWith<_$_PostListModel> get copyWith =>
      __$$_PostListModelCopyWithImpl<_$_PostListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostListModelToJson(
      this,
    );
  }
}

abstract class _PostListModel implements PostListModel {
  const factory _PostListModel(
      {final int id,
      final String tag,
      final String title,
      final String text,
      final String? image,
      @JsonKey(name: 'short_desc') final String shortDesc,
      final String author,
      @JsonKey(name: 'is_liked') final bool isLiked,
      final List<CommentModel> comment}) = _$_PostListModel;

  factory _PostListModel.fromJson(Map<String, dynamic> json) =
      _$_PostListModel.fromJson;

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
  @JsonKey(name: 'short_desc')
  String get shortDesc;
  @override
  String get author;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  List<CommentModel> get comment;
  @override
  @JsonKey(ignore: true)
  _$$_PostListModelCopyWith<_$_PostListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'last_name') String lastName,
      String nickname});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastName = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'last_name') String lastName,
      String nickname});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastName = null,
    Object? nickname = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id = 0,
      this.name = '',
      @JsonKey(name: 'last_name') this.lastName = '',
      this.nickname = ''});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey()
  final String nickname;

  @override
  String toString() {
    return 'User(id: $id, name: $name, lastName: $lastName, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lastName, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int id,
      final String name,
      @JsonKey(name: 'last_name') final String lastName,
      final String nickname}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
