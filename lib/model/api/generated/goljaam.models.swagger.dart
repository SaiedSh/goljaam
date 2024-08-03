// ignore_for_file: type=lint

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'goljaam.enums.swagger.dart' as enums;

part 'goljaam.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AccessToken {
  const AccessToken({
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.expiresIn,
    this.role,
  });

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);

  static const toJsonFactory = _$AccessTokenToJson;
  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);

  @JsonKey(name: 'access_token', includeIfNull: false)
  final String? accessToken;
  @JsonKey(name: 'refresh_token', includeIfNull: false)
  final String? refreshToken;
  @JsonKey(name: 'token_type', includeIfNull: false)
  final String? tokenType;
  @JsonKey(name: 'expires_in', includeIfNull: false)
  final int? expiresIn;
  @JsonKey(
    name: 'role',
    includeIfNull: false,
    toJson: userRolesNullableToJson,
    fromJson: userRolesNullableFromJson,
  )
  final enums.UserRoles? role;
  static const fromJsonFactory = _$AccessTokenFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AccessToken &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $AccessTokenExtension on AccessToken {
  AccessToken copyWith(
      {String? accessToken,
      String? refreshToken,
      String? tokenType,
      int? expiresIn,
      enums.UserRoles? role}) {
    return AccessToken(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        role: role ?? this.role);
  }

  AccessToken copyWithWrapped(
      {Wrapped<String?>? accessToken,
      Wrapped<String?>? refreshToken,
      Wrapped<String?>? tokenType,
      Wrapped<int?>? expiresIn,
      Wrapped<enums.UserRoles?>? role}) {
    return AccessToken(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        tokenType: (tokenType != null ? tokenType.value : this.tokenType),
        expiresIn: (expiresIn != null ? expiresIn.value : this.expiresIn),
        role: (role != null ? role.value : this.role));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResult {
  const ApiResult({
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory ApiResult.fromJson(Map<String, dynamic> json) =>
      _$ApiResultFromJson(json);

  static const toJsonFactory = _$ApiResultToJson;
  Map<String, dynamic> toJson() => _$ApiResultToJson(this);

  @JsonKey(name: 'isSuccess', includeIfNull: false)
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    includeIfNull: false,
    toJson: apiResultStatusCodeNullableToJson,
    fromJson: apiResultStatusCodeNullableFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  static const fromJsonFactory = _$ApiResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiResult &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ApiResultExtension on ApiResult {
  ApiResult copyWith(
      {bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return ApiResult(
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  ApiResult copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return ApiResult(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ChapterDto {
  const ChapterDto({
    this.course,
    this.courseId,
    this.index,
    this.name,
    this.image,
    this.imageUrl,
    this.subTitle,
    this.lessonCount,
    this.id,
  });

  factory ChapterDto.fromJson(Map<String, dynamic> json) =>
      _$ChapterDtoFromJson(json);

  static const toJsonFactory = _$ChapterDtoToJson;
  Map<String, dynamic> toJson() => _$ChapterDtoToJson(this);

  @JsonKey(name: 'course', includeIfNull: false)
  final CourseDto? course;
  @JsonKey(name: 'courseId', includeIfNull: false)
  final String? courseId;
  @JsonKey(name: 'index', includeIfNull: false)
  final int? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'image', includeIfNull: false)
  final String? image;
  @JsonKey(name: 'imageUrl', includeIfNull: false)
  final String? imageUrl;
  @JsonKey(name: 'subTitle', includeIfNull: false)
  final String? subTitle;
  @JsonKey(name: 'lessonCount', includeIfNull: false)
  final int? lessonCount;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  static const fromJsonFactory = _$ChapterDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChapterDto &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.subTitle, subTitle) ||
                const DeepCollectionEquality()
                    .equals(other.subTitle, subTitle)) &&
            (identical(other.lessonCount, lessonCount) ||
                const DeepCollectionEquality()
                    .equals(other.lessonCount, lessonCount)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(subTitle) ^
      const DeepCollectionEquality().hash(lessonCount) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ChapterDtoExtension on ChapterDto {
  ChapterDto copyWith(
      {CourseDto? course,
      String? courseId,
      int? index,
      String? name,
      String? image,
      String? imageUrl,
      String? subTitle,
      int? lessonCount,
      String? id}) {
    return ChapterDto(
        course: course ?? this.course,
        courseId: courseId ?? this.courseId,
        index: index ?? this.index,
        name: name ?? this.name,
        image: image ?? this.image,
        imageUrl: imageUrl ?? this.imageUrl,
        subTitle: subTitle ?? this.subTitle,
        lessonCount: lessonCount ?? this.lessonCount,
        id: id ?? this.id);
  }

  ChapterDto copyWithWrapped(
      {Wrapped<CourseDto?>? course,
      Wrapped<String?>? courseId,
      Wrapped<int?>? index,
      Wrapped<String?>? name,
      Wrapped<String?>? image,
      Wrapped<String?>? imageUrl,
      Wrapped<String?>? subTitle,
      Wrapped<int?>? lessonCount,
      Wrapped<String?>? id}) {
    return ChapterDto(
        course: (course != null ? course.value : this.course),
        courseId: (courseId != null ? courseId.value : this.courseId),
        index: (index != null ? index.value : this.index),
        name: (name != null ? name.value : this.name),
        image: (image != null ? image.value : this.image),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        subTitle: (subTitle != null ? subTitle.value : this.subTitle),
        lessonCount:
            (lessonCount != null ? lessonCount.value : this.lessonCount),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseCategoryDto {
  const CourseCategoryDto({
    this.imageUrl,
    this.image,
    this.name,
    this.motherId,
    this.depth,
    this.id,
  });

  factory CourseCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CourseCategoryDtoFromJson(json);

  static const toJsonFactory = _$CourseCategoryDtoToJson;
  Map<String, dynamic> toJson() => _$CourseCategoryDtoToJson(this);

  @JsonKey(name: 'imageUrl', includeIfNull: false)
  final String? imageUrl;
  @JsonKey(name: 'image', includeIfNull: false)
  final String? image;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'motherId', includeIfNull: false)
  final String? motherId;
  @JsonKey(name: 'depth', includeIfNull: false)
  final int? depth;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  static const fromJsonFactory = _$CourseCategoryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CourseCategoryDto &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.motherId, motherId) ||
                const DeepCollectionEquality()
                    .equals(other.motherId, motherId)) &&
            (identical(other.depth, depth) ||
                const DeepCollectionEquality().equals(other.depth, depth)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(motherId) ^
      const DeepCollectionEquality().hash(depth) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $CourseCategoryDtoExtension on CourseCategoryDto {
  CourseCategoryDto copyWith(
      {String? imageUrl,
      String? image,
      String? name,
      String? motherId,
      int? depth,
      String? id}) {
    return CourseCategoryDto(
        imageUrl: imageUrl ?? this.imageUrl,
        image: image ?? this.image,
        name: name ?? this.name,
        motherId: motherId ?? this.motherId,
        depth: depth ?? this.depth,
        id: id ?? this.id);
  }

  CourseCategoryDto copyWithWrapped(
      {Wrapped<String?>? imageUrl,
      Wrapped<String?>? image,
      Wrapped<String?>? name,
      Wrapped<String?>? motherId,
      Wrapped<int?>? depth,
      Wrapped<String?>? id}) {
    return CourseCategoryDto(
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        image: (image != null ? image.value : this.image),
        name: (name != null ? name.value : this.name),
        motherId: (motherId != null ? motherId.value : this.motherId),
        depth: (depth != null ? depth.value : this.depth),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseDto {
  const CourseDto({
    this.name,
    this.summary,
    this.description,
    this.teachers,
    this.price,
    this.discountPrice,
    this.coverUrl,
    this.cover,
    this.image1Url,
    this.image1,
    this.image2Url,
    this.image2,
    this.image3Url,
    this.image3,
    this.sessionCount,
    this.sessionMinutes,
    this.totalHours,
    this.status,
    this.start,
    this.end,
    this.courseCategory,
    this.courseCategoryId,
    this.courseType,
    this.studentCount,
    this.registered,
    this.courseCategories,
    this.chapters,
    this.id,
  });

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);

  static const toJsonFactory = _$CourseDtoToJson;
  Map<String, dynamic> toJson() => _$CourseDtoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'summary', includeIfNull: false)
  final String? summary;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'teachers', includeIfNull: false)
  final String? teachers;
  @JsonKey(name: 'price', includeIfNull: false)
  final int? price;
  @JsonKey(name: 'discountPrice', includeIfNull: false)
  final int? discountPrice;
  @JsonKey(name: 'coverUrl', includeIfNull: false)
  final String? coverUrl;
  @JsonKey(name: 'cover', includeIfNull: false)
  final String? cover;
  @JsonKey(name: 'image1Url', includeIfNull: false)
  final String? image1Url;
  @JsonKey(name: 'image1', includeIfNull: false)
  final String? image1;
  @JsonKey(name: 'image2Url', includeIfNull: false)
  final String? image2Url;
  @JsonKey(name: 'image2', includeIfNull: false)
  final String? image2;
  @JsonKey(name: 'image3Url', includeIfNull: false)
  final String? image3Url;
  @JsonKey(name: 'image3', includeIfNull: false)
  final String? image3;
  @JsonKey(name: 'sessionCount', includeIfNull: false)
  final int? sessionCount;
  @JsonKey(name: 'sessionMinutes', includeIfNull: false)
  final int? sessionMinutes;
  @JsonKey(name: 'totalHours', includeIfNull: false)
  final int? totalHours;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: courseStatusNullableToJson,
    fromJson: courseStatusNullableFromJson,
  )
  final enums.CourseStatus? status;
  @JsonKey(name: 'start', includeIfNull: false)
  final DateTime? start;
  @JsonKey(name: 'end', includeIfNull: false)
  final DateTime? end;
  @JsonKey(name: 'courseCategory', includeIfNull: false)
  final CourseCategoryDto? courseCategory;
  @JsonKey(name: 'courseCategoryId', includeIfNull: false)
  final String? courseCategoryId;
  @JsonKey(
    name: 'courseType',
    includeIfNull: false,
    toJson: courseTypeNullableToJson,
    fromJson: courseTypeNullableFromJson,
  )
  final enums.CourseType? courseType;
  @JsonKey(name: 'studentCount', includeIfNull: false)
  final int? studentCount;
  @JsonKey(name: 'registered', includeIfNull: false)
  final bool? registered;
  @JsonKey(
      name: 'courseCategories',
      includeIfNull: false,
      defaultValue: <CourseCategoryDto>[])
  final List<CourseCategoryDto>? courseCategories;
  @JsonKey(name: 'chapters', includeIfNull: false, defaultValue: <ChapterDto>[])
  final List<ChapterDto>? chapters;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  static const fromJsonFactory = _$CourseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CourseDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountPrice, discountPrice) ||
                const DeepCollectionEquality()
                    .equals(other.discountPrice, discountPrice)) &&
            (identical(other.coverUrl, coverUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverUrl, coverUrl)) &&
            (identical(other.cover, cover) ||
                const DeepCollectionEquality().equals(other.cover, cover)) &&
            (identical(other.image1Url, image1Url) ||
                const DeepCollectionEquality()
                    .equals(other.image1Url, image1Url)) &&
            (identical(other.image1, image1) ||
                const DeepCollectionEquality().equals(other.image1, image1)) &&
            (identical(other.image2Url, image2Url) ||
                const DeepCollectionEquality()
                    .equals(other.image2Url, image2Url)) &&
            (identical(other.image2, image2) ||
                const DeepCollectionEquality().equals(other.image2, image2)) &&
            (identical(other.image3Url, image3Url) ||
                const DeepCollectionEquality()
                    .equals(other.image3Url, image3Url)) &&
            (identical(other.image3, image3) ||
                const DeepCollectionEquality().equals(other.image3, image3)) &&
            (identical(other.sessionCount, sessionCount) ||
                const DeepCollectionEquality()
                    .equals(other.sessionCount, sessionCount)) &&
            (identical(other.sessionMinutes, sessionMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.sessionMinutes, sessionMinutes)) &&
            (identical(other.totalHours, totalHours) ||
                const DeepCollectionEquality()
                    .equals(other.totalHours, totalHours)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.courseCategory, courseCategory) ||
                const DeepCollectionEquality()
                    .equals(other.courseCategory, courseCategory)) &&
            (identical(other.courseCategoryId, courseCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.courseCategoryId, courseCategoryId)) &&
            (identical(other.courseType, courseType) ||
                const DeepCollectionEquality()
                    .equals(other.courseType, courseType)) &&
            (identical(other.studentCount, studentCount) ||
                const DeepCollectionEquality()
                    .equals(other.studentCount, studentCount)) &&
            (identical(other.registered, registered) ||
                const DeepCollectionEquality()
                    .equals(other.registered, registered)) &&
            (identical(other.courseCategories, courseCategories) ||
                const DeepCollectionEquality()
                    .equals(other.courseCategories, courseCategories)) &&
            (identical(other.chapters, chapters) || const DeepCollectionEquality().equals(other.chapters, chapters)) &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountPrice) ^
      const DeepCollectionEquality().hash(coverUrl) ^
      const DeepCollectionEquality().hash(cover) ^
      const DeepCollectionEquality().hash(image1Url) ^
      const DeepCollectionEquality().hash(image1) ^
      const DeepCollectionEquality().hash(image2Url) ^
      const DeepCollectionEquality().hash(image2) ^
      const DeepCollectionEquality().hash(image3Url) ^
      const DeepCollectionEquality().hash(image3) ^
      const DeepCollectionEquality().hash(sessionCount) ^
      const DeepCollectionEquality().hash(sessionMinutes) ^
      const DeepCollectionEquality().hash(totalHours) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(courseCategory) ^
      const DeepCollectionEquality().hash(courseCategoryId) ^
      const DeepCollectionEquality().hash(courseType) ^
      const DeepCollectionEquality().hash(studentCount) ^
      const DeepCollectionEquality().hash(registered) ^
      const DeepCollectionEquality().hash(courseCategories) ^
      const DeepCollectionEquality().hash(chapters) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $CourseDtoExtension on CourseDto {
  CourseDto copyWith(
      {String? name,
      String? summary,
      String? description,
      String? teachers,
      int? price,
      int? discountPrice,
      String? coverUrl,
      String? cover,
      String? image1Url,
      String? image1,
      String? image2Url,
      String? image2,
      String? image3Url,
      String? image3,
      int? sessionCount,
      int? sessionMinutes,
      int? totalHours,
      enums.CourseStatus? status,
      DateTime? start,
      DateTime? end,
      CourseCategoryDto? courseCategory,
      String? courseCategoryId,
      enums.CourseType? courseType,
      int? studentCount,
      bool? registered,
      List<CourseCategoryDto>? courseCategories,
      List<ChapterDto>? chapters,
      String? id}) {
    return CourseDto(
        name: name ?? this.name,
        summary: summary ?? this.summary,
        description: description ?? this.description,
        teachers: teachers ?? this.teachers,
        price: price ?? this.price,
        discountPrice: discountPrice ?? this.discountPrice,
        coverUrl: coverUrl ?? this.coverUrl,
        cover: cover ?? this.cover,
        image1Url: image1Url ?? this.image1Url,
        image1: image1 ?? this.image1,
        image2Url: image2Url ?? this.image2Url,
        image2: image2 ?? this.image2,
        image3Url: image3Url ?? this.image3Url,
        image3: image3 ?? this.image3,
        sessionCount: sessionCount ?? this.sessionCount,
        sessionMinutes: sessionMinutes ?? this.sessionMinutes,
        totalHours: totalHours ?? this.totalHours,
        status: status ?? this.status,
        start: start ?? this.start,
        end: end ?? this.end,
        courseCategory: courseCategory ?? this.courseCategory,
        courseCategoryId: courseCategoryId ?? this.courseCategoryId,
        courseType: courseType ?? this.courseType,
        studentCount: studentCount ?? this.studentCount,
        registered: registered ?? this.registered,
        courseCategories: courseCategories ?? this.courseCategories,
        chapters: chapters ?? this.chapters,
        id: id ?? this.id);
  }

  CourseDto copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? summary,
      Wrapped<String?>? description,
      Wrapped<String?>? teachers,
      Wrapped<int?>? price,
      Wrapped<int?>? discountPrice,
      Wrapped<String?>? coverUrl,
      Wrapped<String?>? cover,
      Wrapped<String?>? image1Url,
      Wrapped<String?>? image1,
      Wrapped<String?>? image2Url,
      Wrapped<String?>? image2,
      Wrapped<String?>? image3Url,
      Wrapped<String?>? image3,
      Wrapped<int?>? sessionCount,
      Wrapped<int?>? sessionMinutes,
      Wrapped<int?>? totalHours,
      Wrapped<enums.CourseStatus?>? status,
      Wrapped<DateTime?>? start,
      Wrapped<DateTime?>? end,
      Wrapped<CourseCategoryDto?>? courseCategory,
      Wrapped<String?>? courseCategoryId,
      Wrapped<enums.CourseType?>? courseType,
      Wrapped<int?>? studentCount,
      Wrapped<bool?>? registered,
      Wrapped<List<CourseCategoryDto>?>? courseCategories,
      Wrapped<List<ChapterDto>?>? chapters,
      Wrapped<String?>? id}) {
    return CourseDto(
        name: (name != null ? name.value : this.name),
        summary: (summary != null ? summary.value : this.summary),
        description:
            (description != null ? description.value : this.description),
        teachers: (teachers != null ? teachers.value : this.teachers),
        price: (price != null ? price.value : this.price),
        discountPrice:
            (discountPrice != null ? discountPrice.value : this.discountPrice),
        coverUrl: (coverUrl != null ? coverUrl.value : this.coverUrl),
        cover: (cover != null ? cover.value : this.cover),
        image1Url: (image1Url != null ? image1Url.value : this.image1Url),
        image1: (image1 != null ? image1.value : this.image1),
        image2Url: (image2Url != null ? image2Url.value : this.image2Url),
        image2: (image2 != null ? image2.value : this.image2),
        image3Url: (image3Url != null ? image3Url.value : this.image3Url),
        image3: (image3 != null ? image3.value : this.image3),
        sessionCount:
            (sessionCount != null ? sessionCount.value : this.sessionCount),
        sessionMinutes: (sessionMinutes != null
            ? sessionMinutes.value
            : this.sessionMinutes),
        totalHours: (totalHours != null ? totalHours.value : this.totalHours),
        status: (status != null ? status.value : this.status),
        start: (start != null ? start.value : this.start),
        end: (end != null ? end.value : this.end),
        courseCategory: (courseCategory != null
            ? courseCategory.value
            : this.courseCategory),
        courseCategoryId: (courseCategoryId != null
            ? courseCategoryId.value
            : this.courseCategoryId),
        courseType: (courseType != null ? courseType.value : this.courseType),
        studentCount:
            (studentCount != null ? studentCount.value : this.studentCount),
        registered: (registered != null ? registered.value : this.registered),
        courseCategories: (courseCategories != null
            ? courseCategories.value
            : this.courseCategories),
        chapters: (chapters != null ? chapters.value : this.chapters),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseDtoApiResult {
  const CourseDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory CourseDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoApiResultFromJson(json);

  static const toJsonFactory = _$CourseDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$CourseDtoApiResultToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final CourseDto? data;
  @JsonKey(name: 'isSuccess', includeIfNull: false)
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    includeIfNull: false,
    toJson: apiResultStatusCodeNullableToJson,
    fromJson: apiResultStatusCodeNullableFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  static const fromJsonFactory = _$CourseDtoApiResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CourseDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $CourseDtoApiResultExtension on CourseDtoApiResult {
  CourseDtoApiResult copyWith(
      {CourseDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return CourseDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  CourseDtoApiResult copyWithWrapped(
      {Wrapped<CourseDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return CourseDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseDtoListApiResult {
  const CourseDtoListApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory CourseDtoListApiResult.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoListApiResultFromJson(json);

  static const toJsonFactory = _$CourseDtoListApiResultToJson;
  Map<String, dynamic> toJson() => _$CourseDtoListApiResultToJson(this);

  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <CourseDto>[])
  final List<CourseDto>? data;
  @JsonKey(name: 'isSuccess', includeIfNull: false)
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    includeIfNull: false,
    toJson: apiResultStatusCodeNullableToJson,
    fromJson: apiResultStatusCodeNullableFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  static const fromJsonFactory = _$CourseDtoListApiResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CourseDtoListApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $CourseDtoListApiResultExtension on CourseDtoListApiResult {
  CourseDtoListApiResult copyWith(
      {List<CourseDto>? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return CourseDtoListApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  CourseDtoListApiResult copyWithWrapped(
      {Wrapped<List<CourseDto>?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return CourseDtoListApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class TempUserDto {
  const TempUserDto({
    required this.phoneNumber,
    this.otp,
    this.fname,
    this.lname,
    this.creationDate,
    this.exist,
    this.id,
  });

  factory TempUserDto.fromJson(Map<String, dynamic> json) =>
      _$TempUserDtoFromJson(json);

  static const toJsonFactory = _$TempUserDtoToJson;
  Map<String, dynamic> toJson() => _$TempUserDtoToJson(this);

  @JsonKey(name: 'phoneNumber', includeIfNull: false)
  final String phoneNumber;
  @JsonKey(name: 'otp', includeIfNull: false)
  final String? otp;
  @JsonKey(name: 'fname', includeIfNull: false)
  final String? fname;
  @JsonKey(name: 'lname', includeIfNull: false)
  final String? lname;
  @JsonKey(name: 'creationDate', includeIfNull: false)
  final DateTime? creationDate;
  @JsonKey(name: 'exist', includeIfNull: false)
  final bool? exist;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  static const fromJsonFactory = _$TempUserDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TempUserDto &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.lname, lname) ||
                const DeepCollectionEquality().equals(other.lname, lname)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.exist, exist) ||
                const DeepCollectionEquality().equals(other.exist, exist)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(lname) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(exist) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $TempUserDtoExtension on TempUserDto {
  TempUserDto copyWith(
      {String? phoneNumber,
      String? otp,
      String? fname,
      String? lname,
      DateTime? creationDate,
      bool? exist,
      String? id}) {
    return TempUserDto(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        otp: otp ?? this.otp,
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        creationDate: creationDate ?? this.creationDate,
        exist: exist ?? this.exist,
        id: id ?? this.id);
  }

  TempUserDto copyWithWrapped(
      {Wrapped<String>? phoneNumber,
      Wrapped<String?>? otp,
      Wrapped<String?>? fname,
      Wrapped<String?>? lname,
      Wrapped<DateTime?>? creationDate,
      Wrapped<bool?>? exist,
      Wrapped<String?>? id}) {
    return TempUserDto(
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        otp: (otp != null ? otp.value : this.otp),
        fname: (fname != null ? fname.value : this.fname),
        lname: (lname != null ? lname.value : this.lname),
        creationDate:
            (creationDate != null ? creationDate.value : this.creationDate),
        exist: (exist != null ? exist.value : this.exist),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class TempUserDtoApiResult {
  const TempUserDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory TempUserDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$TempUserDtoApiResultFromJson(json);

  static const toJsonFactory = _$TempUserDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$TempUserDtoApiResultToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final TempUserDto? data;
  @JsonKey(name: 'isSuccess', includeIfNull: false)
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    includeIfNull: false,
    toJson: apiResultStatusCodeNullableToJson,
    fromJson: apiResultStatusCodeNullableFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  static const fromJsonFactory = _$TempUserDtoApiResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TempUserDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $TempUserDtoApiResultExtension on TempUserDtoApiResult {
  TempUserDtoApiResult copyWith(
      {TempUserDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return TempUserDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  TempUserDtoApiResult copyWithWrapped(
      {Wrapped<TempUserDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return TempUserDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDto {
  const UserDto({
    this.userName,
    this.phoneNumber,
    this.email,
    this.code,
    this.gender,
    this.fname,
    this.lname,
    this.imageUrl,
    this.imageFile,
    this.id,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  static const toJsonFactory = _$UserDtoToJson;
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @JsonKey(name: 'userName', includeIfNull: false)
  final String? userName;
  @JsonKey(name: 'phoneNumber', includeIfNull: false)
  final String? phoneNumber;
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(
    name: 'gender',
    includeIfNull: false,
    toJson: sexNullableToJson,
    fromJson: sexNullableFromJson,
  )
  final enums.Sex? gender;
  @JsonKey(name: 'fname', includeIfNull: false)
  final String? fname;
  @JsonKey(name: 'lname', includeIfNull: false)
  final String? lname;
  @JsonKey(name: 'imageUrl', includeIfNull: false)
  final String? imageUrl;
  @JsonKey(name: 'imageFile', includeIfNull: false)
  final String? imageFile;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  static const fromJsonFactory = _$UserDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.lname, lname) ||
                const DeepCollectionEquality().equals(other.lname, lname)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(lname) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $UserDtoExtension on UserDto {
  UserDto copyWith(
      {String? userName,
      String? phoneNumber,
      String? email,
      String? code,
      enums.Sex? gender,
      String? fname,
      String? lname,
      String? imageUrl,
      String? imageFile,
      String? id}) {
    return UserDto(
        userName: userName ?? this.userName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        code: code ?? this.code,
        gender: gender ?? this.gender,
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        imageUrl: imageUrl ?? this.imageUrl,
        imageFile: imageFile ?? this.imageFile,
        id: id ?? this.id);
  }

  UserDto copyWithWrapped(
      {Wrapped<String?>? userName,
      Wrapped<String?>? phoneNumber,
      Wrapped<String?>? email,
      Wrapped<String?>? code,
      Wrapped<enums.Sex?>? gender,
      Wrapped<String?>? fname,
      Wrapped<String?>? lname,
      Wrapped<String?>? imageUrl,
      Wrapped<String?>? imageFile,
      Wrapped<String?>? id}) {
    return UserDto(
        userName: (userName != null ? userName.value : this.userName),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        email: (email != null ? email.value : this.email),
        code: (code != null ? code.value : this.code),
        gender: (gender != null ? gender.value : this.gender),
        fname: (fname != null ? fname.value : this.fname),
        lname: (lname != null ? lname.value : this.lname),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        imageFile: (imageFile != null ? imageFile.value : this.imageFile),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDtoApiResult {
  const UserDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory UserDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$UserDtoApiResultFromJson(json);

  static const toJsonFactory = _$UserDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$UserDtoApiResultToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final UserDto? data;
  @JsonKey(name: 'isSuccess', includeIfNull: false)
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    includeIfNull: false,
    toJson: apiResultStatusCodeNullableToJson,
    fromJson: apiResultStatusCodeNullableFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  static const fromJsonFactory = _$UserDtoApiResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $UserDtoApiResultExtension on UserDtoApiResult {
  UserDtoApiResult copyWith(
      {UserDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return UserDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  UserDtoApiResult copyWithWrapped(
      {Wrapped<UserDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return UserDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class UserTaskDto {
   UserTaskDto({
    this.dueDate,
    this.taskTitle,
    this.taskDescription,
    this.doneOrCancelDescription,
    this.status,
    this.userId,
    this.score,
    this.id,
  });

  factory UserTaskDto.fromJson(Map<String, dynamic> json) =>
      _$UserTaskDtoFromJson(json);

  static const toJsonFactory = _$UserTaskDtoToJson;
  Map<String, dynamic> toJson() => _$UserTaskDtoToJson(this);

  @JsonKey(name: 'dueDate', includeIfNull: false)
  final DateTime? dueDate;
  @JsonKey(name: 'taskTitle', includeIfNull: false)
  final String? taskTitle;
  @JsonKey(name: 'taskDescription', includeIfNull: false)
  final String? taskDescription;
  @JsonKey(name: 'doneOrCancelDescription', includeIfNull: false)
  final String? doneOrCancelDescription;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: userTaskStatusNullableToJson,
    fromJson: userTaskStatusNullableFromJson,
  )
  enums.UserTaskStatus? status;
  @JsonKey(name: 'userId', includeIfNull: false)
  final String? userId;
  @JsonKey(name: 'score', includeIfNull: false)
  final int? score;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  static const fromJsonFactory = _$UserTaskDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTaskDto &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.taskTitle, taskTitle) ||
                const DeepCollectionEquality()
                    .equals(other.taskTitle, taskTitle)) &&
            (identical(other.taskDescription, taskDescription) ||
                const DeepCollectionEquality()
                    .equals(other.taskDescription, taskDescription)) &&
            (identical(
                    other.doneOrCancelDescription, doneOrCancelDescription) ||
                const DeepCollectionEquality().equals(
                    other.doneOrCancelDescription, doneOrCancelDescription)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(taskTitle) ^
      const DeepCollectionEquality().hash(taskDescription) ^
      const DeepCollectionEquality().hash(doneOrCancelDescription) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $UserTaskDtoExtension on UserTaskDto {
  UserTaskDto copyWith(
      {DateTime? dueDate,
      String? taskTitle,
      String? taskDescription,
      String? doneOrCancelDescription,
      enums.UserTaskStatus? status,
      String? userId,
      int? score,
      String? id}) {
    return UserTaskDto(
        dueDate: dueDate ?? this.dueDate,
        taskTitle: taskTitle ?? this.taskTitle,
        taskDescription: taskDescription ?? this.taskDescription,
        doneOrCancelDescription:
            doneOrCancelDescription ?? this.doneOrCancelDescription,
        status: status ?? this.status,
        userId: userId ?? this.userId,
        score: score ?? this.score,
        id: id ?? this.id);
  }

  UserTaskDto copyWithWrapped(
      {Wrapped<DateTime?>? dueDate,
      Wrapped<String?>? taskTitle,
      Wrapped<String?>? taskDescription,
      Wrapped<String?>? doneOrCancelDescription,
      Wrapped<enums.UserTaskStatus?>? status,
      Wrapped<String?>? userId,
      Wrapped<int?>? score,
      Wrapped<String?>? id}) {
    return UserTaskDto(
        dueDate: (dueDate != null ? dueDate.value : this.dueDate),
        taskTitle: (taskTitle != null ? taskTitle.value : this.taskTitle),
        taskDescription: (taskDescription != null
            ? taskDescription.value
            : this.taskDescription),
        doneOrCancelDescription: (doneOrCancelDescription != null
            ? doneOrCancelDescription.value
            : this.doneOrCancelDescription),
        status: (status != null ? status.value : this.status),
        userId: (userId != null ? userId.value : this.userId),
        score: (score != null ? score.value : this.score),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UserTaskDtoListApiResult {
  const UserTaskDtoListApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory UserTaskDtoListApiResult.fromJson(Map<String, dynamic> json) =>
      _$UserTaskDtoListApiResultFromJson(json);

  static const toJsonFactory = _$UserTaskDtoListApiResultToJson;
  Map<String, dynamic> toJson() => _$UserTaskDtoListApiResultToJson(this);

  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <UserTaskDto>[])
  final List<UserTaskDto>? data;
  @JsonKey(name: 'isSuccess', includeIfNull: false)
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    includeIfNull: false,
    toJson: apiResultStatusCodeNullableToJson,
    fromJson: apiResultStatusCodeNullableFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  static const fromJsonFactory = _$UserTaskDtoListApiResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTaskDtoListApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $UserTaskDtoListApiResultExtension on UserTaskDtoListApiResult {
  UserTaskDtoListApiResult copyWith(
      {List<UserTaskDto>? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return UserTaskDtoListApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  UserTaskDtoListApiResult copyWithWrapped(
      {Wrapped<List<UserTaskDto>?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return UserTaskDtoListApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AuthenticationFreeTokenPost$RequestBody {
  const ApiV1AuthenticationFreeTokenPost$RequestBody({
    this.grantType,
    this.username,
    this.password,
    this.refreshToken,
    this.scope,
    this.clientId,
    this.clientSecret,
  });

  factory ApiV1AuthenticationFreeTokenPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyToJson(this);

  @JsonKey(name: 'grant_type', includeIfNull: false)
  final String? grantType;
  @JsonKey(name: 'username', includeIfNull: false)
  final String? username;
  @JsonKey(name: 'password', includeIfNull: false)
  final String? password;
  @JsonKey(name: 'refresh_token', includeIfNull: false)
  final String? refreshToken;
  @JsonKey(name: 'scope', includeIfNull: false)
  final String? scope;
  @JsonKey(name: 'client_id', includeIfNull: false)
  final String? clientId;
  @JsonKey(name: 'client_secret', includeIfNull: false)
  final String? clientSecret;
  static const fromJsonFactory =
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AuthenticationFreeTokenPost$RequestBody &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.clientSecret, clientSecret) ||
                const DeepCollectionEquality()
                    .equals(other.clientSecret, clientSecret)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(grantType) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(clientSecret) ^
      runtimeType.hashCode;
}

extension $ApiV1AuthenticationFreeTokenPost$RequestBodyExtension
    on ApiV1AuthenticationFreeTokenPost$RequestBody {
  ApiV1AuthenticationFreeTokenPost$RequestBody copyWith(
      {String? grantType,
      String? username,
      String? password,
      String? refreshToken,
      String? scope,
      String? clientId,
      String? clientSecret}) {
    return ApiV1AuthenticationFreeTokenPost$RequestBody(
        grantType: grantType ?? this.grantType,
        username: username ?? this.username,
        password: password ?? this.password,
        refreshToken: refreshToken ?? this.refreshToken,
        scope: scope ?? this.scope,
        clientId: clientId ?? this.clientId,
        clientSecret: clientSecret ?? this.clientSecret);
  }

  ApiV1AuthenticationFreeTokenPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? grantType,
      Wrapped<String?>? username,
      Wrapped<String?>? password,
      Wrapped<String?>? refreshToken,
      Wrapped<String?>? scope,
      Wrapped<String?>? clientId,
      Wrapped<String?>? clientSecret}) {
    return ApiV1AuthenticationFreeTokenPost$RequestBody(
        grantType: (grantType != null ? grantType.value : this.grantType),
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        scope: (scope != null ? scope.value : this.scope),
        clientId: (clientId != null ? clientId.value : this.clientId),
        clientSecret:
            (clientSecret != null ? clientSecret.value : this.clientSecret));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1UserUpdateProfilePost$RequestBody {
  const ApiV1UserUpdateProfilePost$RequestBody({
    this.imageFile,
  });

  factory ApiV1UserUpdateProfilePost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1UserUpdateProfilePost$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiV1UserUpdateProfilePost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1UserUpdateProfilePost$RequestBodyToJson(this);

  @JsonKey(name: 'ImageFile', includeIfNull: false)
  final String? imageFile;
  static const fromJsonFactory =
      _$ApiV1UserUpdateProfilePost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1UserUpdateProfilePost$RequestBody &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageFile) ^ runtimeType.hashCode;
}

extension $ApiV1UserUpdateProfilePost$RequestBodyExtension
    on ApiV1UserUpdateProfilePost$RequestBody {
  ApiV1UserUpdateProfilePost$RequestBody copyWith({String? imageFile}) {
    return ApiV1UserUpdateProfilePost$RequestBody(
        imageFile: imageFile ?? this.imageFile);
  }

  ApiV1UserUpdateProfilePost$RequestBody copyWithWrapped(
      {Wrapped<String?>? imageFile}) {
    return ApiV1UserUpdateProfilePost$RequestBody(
        imageFile: (imageFile != null ? imageFile.value : this.imageFile));
  }
}

String? apiResultStatusCodeNullableToJson(
    enums.ApiResultStatusCode? apiResultStatusCode) {
  return apiResultStatusCode?.value;
}

String? apiResultStatusCodeToJson(
    enums.ApiResultStatusCode apiResultStatusCode) {
  return apiResultStatusCode.value;
}

enums.ApiResultStatusCode apiResultStatusCodeFromJson(
  Object? apiResultStatusCode, [
  enums.ApiResultStatusCode? defaultValue,
]) {
  return enums.ApiResultStatusCode.values
          .firstWhereOrNull((e) => e.value == apiResultStatusCode) ??
      defaultValue ??
      enums.ApiResultStatusCode.swaggerGeneratedUnknown;
}

enums.ApiResultStatusCode? apiResultStatusCodeNullableFromJson(
  Object? apiResultStatusCode, [
  enums.ApiResultStatusCode? defaultValue,
]) {
  if (apiResultStatusCode == null) {
    return null;
  }
  return enums.ApiResultStatusCode.values
          .firstWhereOrNull((e) => e.value == apiResultStatusCode) ??
      defaultValue;
}

String apiResultStatusCodeExplodedListToJson(
    List<enums.ApiResultStatusCode>? apiResultStatusCode) {
  return apiResultStatusCode?.map((e) => e.value!).join(',') ?? '';
}

List<String> apiResultStatusCodeListToJson(
    List<enums.ApiResultStatusCode>? apiResultStatusCode) {
  if (apiResultStatusCode == null) {
    return [];
  }

  return apiResultStatusCode.map((e) => e.value!).toList();
}

List<enums.ApiResultStatusCode> apiResultStatusCodeListFromJson(
  List? apiResultStatusCode, [
  List<enums.ApiResultStatusCode>? defaultValue,
]) {
  if (apiResultStatusCode == null) {
    return defaultValue ?? [];
  }

  return apiResultStatusCode
      .map((e) => apiResultStatusCodeFromJson(e.toString()))
      .toList();
}

List<enums.ApiResultStatusCode>? apiResultStatusCodeNullableListFromJson(
  List? apiResultStatusCode, [
  List<enums.ApiResultStatusCode>? defaultValue,
]) {
  if (apiResultStatusCode == null) {
    return defaultValue;
  }

  return apiResultStatusCode
      .map((e) => apiResultStatusCodeFromJson(e.toString()))
      .toList();
}

String? courseStatusNullableToJson(enums.CourseStatus? courseStatus) {
  return courseStatus?.value;
}

String? courseStatusToJson(enums.CourseStatus courseStatus) {
  return courseStatus.value;
}

enums.CourseStatus courseStatusFromJson(
  Object? courseStatus, [
  enums.CourseStatus? defaultValue,
]) {
  return enums.CourseStatus.values
          .firstWhereOrNull((e) => e.value == courseStatus) ??
      defaultValue ??
      enums.CourseStatus.swaggerGeneratedUnknown;
}

enums.CourseStatus? courseStatusNullableFromJson(
  Object? courseStatus, [
  enums.CourseStatus? defaultValue,
]) {
  if (courseStatus == null) {
    return null;
  }
  return enums.CourseStatus.values
          .firstWhereOrNull((e) => e.value == courseStatus) ??
      defaultValue;
}

String courseStatusExplodedListToJson(List<enums.CourseStatus>? courseStatus) {
  return courseStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> courseStatusListToJson(List<enums.CourseStatus>? courseStatus) {
  if (courseStatus == null) {
    return [];
  }

  return courseStatus.map((e) => e.value!).toList();
}

List<enums.CourseStatus> courseStatusListFromJson(
  List? courseStatus, [
  List<enums.CourseStatus>? defaultValue,
]) {
  if (courseStatus == null) {
    return defaultValue ?? [];
  }

  return courseStatus.map((e) => courseStatusFromJson(e.toString())).toList();
}

List<enums.CourseStatus>? courseStatusNullableListFromJson(
  List? courseStatus, [
  List<enums.CourseStatus>? defaultValue,
]) {
  if (courseStatus == null) {
    return defaultValue;
  }

  return courseStatus.map((e) => courseStatusFromJson(e.toString())).toList();
}

String? courseTypeNullableToJson(enums.CourseType? courseType) {
  return courseType?.value;
}

String? courseTypeToJson(enums.CourseType courseType) {
  return courseType.value;
}

enums.CourseType courseTypeFromJson(
  Object? courseType, [
  enums.CourseType? defaultValue,
]) {
  return enums.CourseType.values
          .firstWhereOrNull((e) => e.value == courseType) ??
      defaultValue ??
      enums.CourseType.swaggerGeneratedUnknown;
}

enums.CourseType? courseTypeNullableFromJson(
  Object? courseType, [
  enums.CourseType? defaultValue,
]) {
  if (courseType == null) {
    return null;
  }
  return enums.CourseType.values
          .firstWhereOrNull((e) => e.value == courseType) ??
      defaultValue;
}

String courseTypeExplodedListToJson(List<enums.CourseType>? courseType) {
  return courseType?.map((e) => e.value!).join(',') ?? '';
}

List<String> courseTypeListToJson(List<enums.CourseType>? courseType) {
  if (courseType == null) {
    return [];
  }

  return courseType.map((e) => e.value!).toList();
}

List<enums.CourseType> courseTypeListFromJson(
  List? courseType, [
  List<enums.CourseType>? defaultValue,
]) {
  if (courseType == null) {
    return defaultValue ?? [];
  }

  return courseType.map((e) => courseTypeFromJson(e.toString())).toList();
}

List<enums.CourseType>? courseTypeNullableListFromJson(
  List? courseType, [
  List<enums.CourseType>? defaultValue,
]) {
  if (courseType == null) {
    return defaultValue;
  }

  return courseType.map((e) => courseTypeFromJson(e.toString())).toList();
}

String? sexNullableToJson(enums.Sex? sex) {
  return sex?.value;
}

String? sexToJson(enums.Sex sex) {
  return sex.value;
}

enums.Sex sexFromJson(
  Object? sex, [
  enums.Sex? defaultValue,
]) {
  return enums.Sex.values.firstWhereOrNull((e) => e.value == sex) ??
      defaultValue ??
      enums.Sex.swaggerGeneratedUnknown;
}

enums.Sex? sexNullableFromJson(
  Object? sex, [
  enums.Sex? defaultValue,
]) {
  if (sex == null) {
    return null;
  }
  return enums.Sex.values.firstWhereOrNull((e) => e.value == sex) ??
      defaultValue;
}

String sexExplodedListToJson(List<enums.Sex>? sex) {
  return sex?.map((e) => e.value!).join(',') ?? '';
}

List<String> sexListToJson(List<enums.Sex>? sex) {
  if (sex == null) {
    return [];
  }

  return sex.map((e) => e.value!).toList();
}

List<enums.Sex> sexListFromJson(
  List? sex, [
  List<enums.Sex>? defaultValue,
]) {
  if (sex == null) {
    return defaultValue ?? [];
  }

  return sex.map((e) => sexFromJson(e.toString())).toList();
}

List<enums.Sex>? sexNullableListFromJson(
  List? sex, [
  List<enums.Sex>? defaultValue,
]) {
  if (sex == null) {
    return defaultValue;
  }

  return sex.map((e) => sexFromJson(e.toString())).toList();
}

String? userRolesNullableToJson(enums.UserRoles? userRoles) {
  return userRoles?.value;
}

String? userRolesToJson(enums.UserRoles userRoles) {
  return userRoles.value;
}

enums.UserRoles userRolesFromJson(
  Object? userRoles, [
  enums.UserRoles? defaultValue,
]) {
  return enums.UserRoles.values.firstWhereOrNull((e) => e.value == userRoles) ??
      defaultValue ??
      enums.UserRoles.swaggerGeneratedUnknown;
}

enums.UserRoles? userRolesNullableFromJson(
  Object? userRoles, [
  enums.UserRoles? defaultValue,
]) {
  if (userRoles == null) {
    return null;
  }
  return enums.UserRoles.values.firstWhereOrNull((e) => e.value == userRoles) ??
      defaultValue;
}

String userRolesExplodedListToJson(List<enums.UserRoles>? userRoles) {
  return userRoles?.map((e) => e.value!).join(',') ?? '';
}

List<String> userRolesListToJson(List<enums.UserRoles>? userRoles) {
  if (userRoles == null) {
    return [];
  }

  return userRoles.map((e) => e.value!).toList();
}

List<enums.UserRoles> userRolesListFromJson(
  List? userRoles, [
  List<enums.UserRoles>? defaultValue,
]) {
  if (userRoles == null) {
    return defaultValue ?? [];
  }

  return userRoles.map((e) => userRolesFromJson(e.toString())).toList();
}

List<enums.UserRoles>? userRolesNullableListFromJson(
  List? userRoles, [
  List<enums.UserRoles>? defaultValue,
]) {
  if (userRoles == null) {
    return defaultValue;
  }

  return userRoles.map((e) => userRolesFromJson(e.toString())).toList();
}

String? userTaskStatusNullableToJson(enums.UserTaskStatus? userTaskStatus) {
  return userTaskStatus?.value;
}

String? userTaskStatusToJson(enums.UserTaskStatus userTaskStatus) {
  return userTaskStatus.value;
}

enums.UserTaskStatus userTaskStatusFromJson(
  Object? userTaskStatus, [
  enums.UserTaskStatus? defaultValue,
]) {
  return enums.UserTaskStatus.values
          .firstWhereOrNull((e) => e.value == userTaskStatus) ??
      defaultValue ??
      enums.UserTaskStatus.swaggerGeneratedUnknown;
}

enums.UserTaskStatus? userTaskStatusNullableFromJson(
  Object? userTaskStatus, [
  enums.UserTaskStatus? defaultValue,
]) {
  if (userTaskStatus == null) {
    return null;
  }
  return enums.UserTaskStatus.values
          .firstWhereOrNull((e) => e.value == userTaskStatus) ??
      defaultValue;
}

String userTaskStatusExplodedListToJson(
    List<enums.UserTaskStatus>? userTaskStatus) {
  return userTaskStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> userTaskStatusListToJson(
    List<enums.UserTaskStatus>? userTaskStatus) {
  if (userTaskStatus == null) {
    return [];
  }

  return userTaskStatus.map((e) => e.value!).toList();
}

List<enums.UserTaskStatus> userTaskStatusListFromJson(
  List? userTaskStatus, [
  List<enums.UserTaskStatus>? defaultValue,
]) {
  if (userTaskStatus == null) {
    return defaultValue ?? [];
  }

  return userTaskStatus
      .map((e) => userTaskStatusFromJson(e.toString()))
      .toList();
}

List<enums.UserTaskStatus>? userTaskStatusNullableListFromJson(
  List? userTaskStatus, [
  List<enums.UserTaskStatus>? defaultValue,
]) {
  if (userTaskStatus == null) {
    return defaultValue;
  }

  return userTaskStatus
      .map((e) => userTaskStatusFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
