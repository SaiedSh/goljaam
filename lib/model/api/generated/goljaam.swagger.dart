// ignore_for_file: type=lint

import 'dart:async';

import 'package:chopper/chopper.dart' as chopper;
import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;

import 'client_mapping.dart';
import 'goljaam.enums.swagger.dart' as enums;
import 'goljaam.models.swagger.dart';

export 'goljaam.enums.swagger.dart';
export 'goljaam.models.swagger.dart';

part 'goljaam.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Goljaam extends ChopperService {
  static Goljaam create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$Goljaam(client);
    }

    final newClient = ChopperClient(
        services: [_$Goljaam()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Goljaam(newClient);
  }

  ///
  Future<chopper.Response<AccessToken>> apiV1AuthenticationFreeTokenPost({
    String? grantType,
    String? username,
    String? password,
    String? refreshToken,
    String? scope,
    String? clientId,
    String? clientSecret,
  }) {
    generatedMapping.putIfAbsent(
        AccessToken, () => AccessToken.fromJsonFactory);

    return _apiV1AuthenticationFreeTokenPost(
        grantType: grantType,
        username: username,
        password: password,
        refreshToken: refreshToken,
        scope: scope,
        clientId: clientId,
        clientSecret: clientSecret);
  }

  ///
  @Post(
    path: 'https://api.goljaam.com/api/v1/v1/Authentication/FreeToken',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<AccessToken>> _apiV1AuthenticationFreeTokenPost({
    @Part('grant_type') String? grantType,
    @Part('username') String? username,
    @Part('password') String? password,
    @Part('refresh_token') String? refreshToken,
    @Part('scope') String? scope,
    @Part('client_id') String? clientId,
    @Part('client_secret') String? clientSecret,
  });

  ///
  Future<chopper.Response<TempUserDtoApiResult>>
      apiV1AuthenticationLoginSignUpPost({required TempUserDto? body}) {
    generatedMapping.putIfAbsent(
        TempUserDtoApiResult, () => TempUserDtoApiResult.fromJsonFactory);

    return _apiV1AuthenticationLoginSignUpPost(body: body);
  }

  ///
  @Post(
    path: 'https://api.goljaam.com/api/v1/v1/Authentication/Login_SignUp',
    optionalBody: true,
  )
  Future<chopper.Response<TempUserDtoApiResult>>
      _apiV1AuthenticationLoginSignUpPost({@Body() required TempUserDto? body});

  ///
  Future<chopper.Response<AccessToken>>
      apiV1AuthenticationLoginSignUpValidationPost(
          {required TempUserDto? body}) {
    generatedMapping.putIfAbsent(
        AccessToken, () => AccessToken.fromJsonFactory);

    return _apiV1AuthenticationLoginSignUpValidationPost(body: body);
  }

  ///
  @Post(
    path:
        'https://api.goljaam.com/api/v1/v1/Authentication/Login_SignUpValidation',
    optionalBody: true,
  )
  Future<chopper.Response<AccessToken>>
      _apiV1AuthenticationLoginSignUpValidationPost(
          {@Body() required TempUserDto? body});

  ///
  ///@param UserName
  ///@param Password
  Future<chopper.Response<AccessToken>> apiV1AuthenticationStaffLoginPost({
    String? userName,
    String? password,
  }) {
    generatedMapping.putIfAbsent(
        AccessToken, () => AccessToken.fromJsonFactory);

    return _apiV1AuthenticationStaffLoginPost(
        userName: userName, password: password);
  }

  ///
  ///@param UserName
  ///@param Password
  @Post(
    path: 'https://api.goljaam.com/api/v1/v1/Authentication/StaffLogin',
    optionalBody: true,
  )
  Future<chopper.Response<AccessToken>> _apiV1AuthenticationStaffLoginPost({
    @Query('UserName') String? userName,
    @Query('Password') String? password,
  });

  ///
  Future<chopper.Response> apiV1AuthenticationSignOutPost() {
    return _apiV1AuthenticationSignOutPost();
  }

  ///
  @Post(
    path: 'https://api.goljaam.com/api/v1/v1/Authentication/SignOut',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AuthenticationSignOutPost();

  ///
  Future<chopper.Response<CourseDtoListApiResult>> apiV1CourseListGet() {
    generatedMapping.putIfAbsent(
        CourseDtoListApiResult, () => CourseDtoListApiResult.fromJsonFactory);

    return _apiV1CourseListGet();
  }

  ///
  @Get(path: 'https://api.goljaam.com/api/v1/v1/Course/List')
  Future<chopper.Response<CourseDtoListApiResult>> _apiV1CourseListGet();

  ///
  ///@param Id
  Future<chopper.Response<CourseDtoApiResult>> apiV1CourseDetailGet(
      {String? id}) {
    generatedMapping.putIfAbsent(
        CourseDtoApiResult, () => CourseDtoApiResult.fromJsonFactory);

    return _apiV1CourseDetailGet(id: id);
  }

  ///
  ///@param Id
  @Get(path: 'https://api.goljaam.com/api/v1/v1/Course/Detail')
  Future<chopper.Response<CourseDtoApiResult>> _apiV1CourseDetailGet(
      {@Query('Id') String? id});

  ///
  ///@param UserName
  ///@param PhoneNumber
  ///@param Email
  ///@param Code
  ///@param Gender
  ///@param Fname
  ///@param Lname
  ///@param ImageUrl
  ///@param Id
  Future<chopper.Response<ApiResult>> apiV1UserUpdateProfilePost({
    String? userName,
    String? phoneNumber,
    String? email,
    String? code,
    enums.Sex? gender,
    String? fname,
    String? lname,
    String? imageUrl,
    String? id,
    List<int>? ImageFile,
  }) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1UserUpdateProfilePost(
        userName: userName,
        phoneNumber: phoneNumber,
        email: email,
        code: code,
        gender: gender?.value?.toString(),
        fname: fname,
        lname: lname,
        imageUrl: imageUrl,
        id: id,
        ImageFile: ImageFile);
  }

  ///
  ///@param UserName
  ///@param PhoneNumber
  ///@param Email
  ///@param Code
  ///@param Gender
  ///@param Fname
  ///@param Lname
  ///@param ImageUrl
  ///@param Id
  @Post(
    path: 'https://api.goljaam.com/api/v1/v1/User/UpdateProfile',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<ApiResult>> _apiV1UserUpdateProfilePost({
    @Query('UserName') String? userName,
    @Query('PhoneNumber') String? phoneNumber,
    @Query('Email') String? email,
    @Query('Code') String? code,
    @Query('Gender') String? gender,
    @Query('Fname') String? fname,
    @Query('Lname') String? lname,
    @Query('ImageUrl') String? imageUrl,
    @Query('Id') String? id,
    @PartFile() List<int>? ImageFile,
  });

  ///
  Future<chopper.Response<UserDtoApiResult>> apiV1UserGetUserProfileGet() {
    generatedMapping.putIfAbsent(
        UserDtoApiResult, () => UserDtoApiResult.fromJsonFactory);

    return _apiV1UserGetUserProfileGet();
  }

  ///
  @Get(path: 'https://api.goljaam.com/api/v1/v1/User/GetUserProfile')
  Future<chopper.Response<UserDtoApiResult>> _apiV1UserGetUserProfileGet();

  ///
  ///@param Date
  Future<chopper.Response<UserTaskDtoListApiResult>>
      apiV1UserTaskUserTaskListGet({DateTime? date}) {
    generatedMapping.putIfAbsent(UserTaskDtoListApiResult,
        () => UserTaskDtoListApiResult.fromJsonFactory);

    return _apiV1UserTaskUserTaskListGet(date: date);
  }

  ///
  ///@param Date
  @Get(path: 'https://api.goljaam.com/api/v1/v1/UserTask/UserTaskList')
  Future<chopper.Response<UserTaskDtoListApiResult>>
      _apiV1UserTaskUserTaskListGet({@Query('Date') DateTime? date});

  ///
  ///@param Id
  ///@param status
  ///@param DoneDescription
  Future<chopper.Response<ApiResult>> apiV1UserTaskChangeTaskPost({
    String? id,
    enums.UserTaskStatus? status,
    String? doneDescription,
  }) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1UserTaskChangeTaskPost(
        id: id,
        status: status?.value?.toString(),
        doneDescription: doneDescription);
  }

  ///
  ///@param Id
  ///@param status
  ///@param DoneDescription
  @Post(
    path: 'https://api.goljaam.com/api/v1/v1/UserTask/ChangeTask',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1UserTaskChangeTaskPost({
    @Query('Id') String? id,
    @Query('status') String? status,
    @Query('DoneDescription') String? doneDescription,
  });

  ///
  Future<chopper.Response<ApiResult>> apiV1UserTaskAddTaskPost(
      {required UserTaskDto? body}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1UserTaskAddTaskPost(body: body);
  }

  ///
  @Post(
    path: 'https://api.goljaam.com/api/v1/v1/UserTask/AddTask',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1UserTaskAddTaskPost(
      {@Body() required UserTaskDto? body});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
