// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goljaam.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) => AccessToken(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: (json['expires_in'] as num?)?.toInt(),
      role: userRolesNullableFromJson(json['role']),
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_token', instance.accessToken);
  writeNotNull('refresh_token', instance.refreshToken);
  writeNotNull('token_type', instance.tokenType);
  writeNotNull('expires_in', instance.expiresIn);
  writeNotNull('role', userRolesNullableToJson(instance.role));
  return val;
}

ApiResult _$ApiResultFromJson(Map<String, dynamic> json) => ApiResult(
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeNullableFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApiResultToJson(ApiResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isSuccess', instance.isSuccess);
  writeNotNull(
      'statusCode', apiResultStatusCodeNullableToJson(instance.statusCode));
  writeNotNull('message', instance.message);
  return val;
}

ChapterDto _$ChapterDtoFromJson(Map<String, dynamic> json) => ChapterDto(
      course: json['course'] == null
          ? null
          : CourseDto.fromJson(json['course'] as Map<String, dynamic>),
      courseId: json['courseId'] as String?,
      index: (json['index'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      imageUrl: json['imageUrl'] as String?,
      subTitle: json['subTitle'] as String?,
      lessonCount: (json['lessonCount'] as num?)?.toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ChapterDtoToJson(ChapterDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('course', instance.course?.toJson());
  writeNotNull('courseId', instance.courseId);
  writeNotNull('index', instance.index);
  writeNotNull('name', instance.name);
  writeNotNull('image', instance.image);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('subTitle', instance.subTitle);
  writeNotNull('lessonCount', instance.lessonCount);
  writeNotNull('id', instance.id);
  return val;
}

CourseCategoryDto _$CourseCategoryDtoFromJson(Map<String, dynamic> json) =>
    CourseCategoryDto(
      imageUrl: json['imageUrl'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      motherId: json['motherId'] as String?,
      depth: (json['depth'] as num?)?.toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CourseCategoryDtoToJson(CourseCategoryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('image', instance.image);
  writeNotNull('name', instance.name);
  writeNotNull('motherId', instance.motherId);
  writeNotNull('depth', instance.depth);
  writeNotNull('id', instance.id);
  return val;
}

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) => CourseDto(
      name: json['name'] as String?,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      teachers: json['teachers'] as String?,
      price: (json['price'] as num?)?.toInt(),
      discountPrice: (json['discountPrice'] as num?)?.toInt(),
      coverUrl: json['coverUrl'] as String?,
      cover: json['cover'] as String?,
      image1Url: json['image1Url'] as String?,
      image1: json['image1'] as String?,
      image2Url: json['image2Url'] as String?,
      image2: json['image2'] as String?,
      image3Url: json['image3Url'] as String?,
      image3: json['image3'] as String?,
      sessionCount: (json['sessionCount'] as num?)?.toInt(),
      sessionMinutes: (json['sessionMinutes'] as num?)?.toInt(),
      totalHours: (json['totalHours'] as num?)?.toInt(),
      status: courseStatusNullableFromJson(json['status']),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      courseCategory: json['courseCategory'] == null
          ? null
          : CourseCategoryDto.fromJson(
              json['courseCategory'] as Map<String, dynamic>),
      courseCategoryId: json['courseCategoryId'] as String?,
      courseType: courseTypeNullableFromJson(json['courseType']),
      studentCount: (json['studentCount'] as num?)?.toInt(),
      registered: json['registered'] as bool?,
      courseCategories: (json['courseCategories'] as List<dynamic>?)
              ?.map(
                  (e) => CourseCategoryDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => ChapterDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CourseDtoToJson(CourseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('summary', instance.summary);
  writeNotNull('description', instance.description);
  writeNotNull('teachers', instance.teachers);
  writeNotNull('price', instance.price);
  writeNotNull('discountPrice', instance.discountPrice);
  writeNotNull('coverUrl', instance.coverUrl);
  writeNotNull('cover', instance.cover);
  writeNotNull('image1Url', instance.image1Url);
  writeNotNull('image1', instance.image1);
  writeNotNull('image2Url', instance.image2Url);
  writeNotNull('image2', instance.image2);
  writeNotNull('image3Url', instance.image3Url);
  writeNotNull('image3', instance.image3);
  writeNotNull('sessionCount', instance.sessionCount);
  writeNotNull('sessionMinutes', instance.sessionMinutes);
  writeNotNull('totalHours', instance.totalHours);
  writeNotNull('status', courseStatusNullableToJson(instance.status));
  writeNotNull('start', instance.start?.toIso8601String());
  writeNotNull('end', instance.end?.toIso8601String());
  writeNotNull('courseCategory', instance.courseCategory?.toJson());
  writeNotNull('courseCategoryId', instance.courseCategoryId);
  writeNotNull('courseType', courseTypeNullableToJson(instance.courseType));
  writeNotNull('studentCount', instance.studentCount);
  writeNotNull('registered', instance.registered);
  writeNotNull('courseCategories',
      instance.courseCategories?.map((e) => e.toJson()).toList());
  writeNotNull('chapters', instance.chapters?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id);
  return val;
}

CourseDtoApiResult _$CourseDtoApiResultFromJson(Map<String, dynamic> json) =>
    CourseDtoApiResult(
      data: json['data'] == null
          ? null
          : CourseDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeNullableFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CourseDtoApiResultToJson(CourseDtoApiResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  writeNotNull('isSuccess', instance.isSuccess);
  writeNotNull(
      'statusCode', apiResultStatusCodeNullableToJson(instance.statusCode));
  writeNotNull('message', instance.message);
  return val;
}

CourseDtoListApiResult _$CourseDtoListApiResultFromJson(
        Map<String, dynamic> json) =>
    CourseDtoListApiResult(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CourseDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeNullableFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CourseDtoListApiResultToJson(
    CourseDtoListApiResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('isSuccess', instance.isSuccess);
  writeNotNull(
      'statusCode', apiResultStatusCodeNullableToJson(instance.statusCode));
  writeNotNull('message', instance.message);
  return val;
}

TempUserDto _$TempUserDtoFromJson(Map<String, dynamic> json) => TempUserDto(
      phoneNumber: json['phoneNumber'] as String,
      otp: json['otp'] as String?,
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      exist: json['exist'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TempUserDtoToJson(TempUserDto instance) {
  final val = <String, dynamic>{
    'phoneNumber': instance.phoneNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('otp', instance.otp);
  writeNotNull('fname', instance.fname);
  writeNotNull('lname', instance.lname);
  writeNotNull('creationDate', instance.creationDate?.toIso8601String());
  writeNotNull('exist', instance.exist);
  writeNotNull('id', instance.id);
  return val;
}

TempUserDtoApiResult _$TempUserDtoApiResultFromJson(
        Map<String, dynamic> json) =>
    TempUserDtoApiResult(
      data: json['data'] == null
          ? null
          : TempUserDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeNullableFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TempUserDtoApiResultToJson(
    TempUserDtoApiResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  writeNotNull('isSuccess', instance.isSuccess);
  writeNotNull(
      'statusCode', apiResultStatusCodeNullableToJson(instance.statusCode));
  writeNotNull('message', instance.message);
  return val;
}

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      userName: json['userName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      code: json['code'] as String?,
      gender: sexNullableFromJson(json['gender']),
      fname: json['fname'] as String?,
      lname: json['lname'] as String?,
      imageUrl: json['imageUrl'] as String?,
      imageFile: json['imageFile'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userName', instance.userName);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('code', instance.code);
  writeNotNull('gender', sexNullableToJson(instance.gender));
  writeNotNull('fname', instance.fname);
  writeNotNull('lname', instance.lname);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('imageFile', instance.imageFile);
  writeNotNull('id', instance.id);
  return val;
}

UserDtoApiResult _$UserDtoApiResultFromJson(Map<String, dynamic> json) =>
    UserDtoApiResult(
      data: json['data'] == null
          ? null
          : UserDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeNullableFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserDtoApiResultToJson(UserDtoApiResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  writeNotNull('isSuccess', instance.isSuccess);
  writeNotNull(
      'statusCode', apiResultStatusCodeNullableToJson(instance.statusCode));
  writeNotNull('message', instance.message);
  return val;
}

UserTaskDto _$UserTaskDtoFromJson(Map<String, dynamic> json) => UserTaskDto(
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      taskTitle: json['taskTitle'] as String?,
      taskDescription: json['taskDescription'] as String?,
      doneOrCancelDescription: json['doneOrCancelDescription'] as String?,
      status: userTaskStatusNullableFromJson(json['status']),
      userId: json['userId'] as String?,
      score: (json['score'] as num?)?.toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserTaskDtoToJson(UserTaskDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dueDate', instance.dueDate?.toIso8601String());
  writeNotNull('taskTitle', instance.taskTitle);
  writeNotNull('taskDescription', instance.taskDescription);
  writeNotNull('doneOrCancelDescription', instance.doneOrCancelDescription);
  writeNotNull('status', userTaskStatusNullableToJson(instance.status));
  writeNotNull('userId', instance.userId);
  writeNotNull('score', instance.score);
  writeNotNull('id', instance.id);
  return val;
}

UserTaskDtoListApiResult _$UserTaskDtoListApiResultFromJson(
        Map<String, dynamic> json) =>
    UserTaskDtoListApiResult(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserTaskDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeNullableFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserTaskDtoListApiResultToJson(
    UserTaskDtoListApiResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('isSuccess', instance.isSuccess);
  writeNotNull(
      'statusCode', apiResultStatusCodeNullableToJson(instance.statusCode));
  writeNotNull('message', instance.message);
  return val;
}

ApiV1AuthenticationFreeTokenPost$RequestBody
    _$ApiV1AuthenticationFreeTokenPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        ApiV1AuthenticationFreeTokenPost$RequestBody(
          grantType: json['grant_type'] as String?,
          username: json['username'] as String?,
          password: json['password'] as String?,
          refreshToken: json['refresh_token'] as String?,
          scope: json['scope'] as String?,
          clientId: json['client_id'] as String?,
          clientSecret: json['client_secret'] as String?,
        );

Map<String, dynamic> _$ApiV1AuthenticationFreeTokenPost$RequestBodyToJson(
    ApiV1AuthenticationFreeTokenPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('grant_type', instance.grantType);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('refresh_token', instance.refreshToken);
  writeNotNull('scope', instance.scope);
  writeNotNull('client_id', instance.clientId);
  writeNotNull('client_secret', instance.clientSecret);
  return val;
}

ApiV1UserUpdateProfilePost$RequestBody
    _$ApiV1UserUpdateProfilePost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        ApiV1UserUpdateProfilePost$RequestBody(
          imageFile: json['ImageFile'] as String?,
        );

Map<String, dynamic> _$ApiV1UserUpdateProfilePost$RequestBodyToJson(
    ApiV1UserUpdateProfilePost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ImageFile', instance.imageFile);
  return val;
}
