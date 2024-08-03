// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goljaam.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Goljaam extends Goljaam {
  _$Goljaam([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Goljaam;

  @override
  Future<Response<AccessToken>> _apiV1AuthenticationFreeTokenPost({
    String? grantType,
    String? username,
    String? password,
    String? refreshToken,
    String? scope,
    String? clientId,
    String? clientSecret,
  }) {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/Authentication/FreeToken');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String?>(
        'grant_type',
        grantType,
      ),
      PartValue<String?>(
        'username',
        username,
      ),
      PartValue<String?>(
        'password',
        password,
      ),
      PartValue<String?>(
        'refresh_token',
        refreshToken,
      ),
      PartValue<String?>(
        'scope',
        scope,
      ),
      PartValue<String?>(
        'client_id',
        clientId,
      ),
      PartValue<String?>(
        'client_secret',
        clientSecret,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<AccessToken, AccessToken>($request);
  }

  @override
  Future<Response<TempUserDtoApiResult>> _apiV1AuthenticationLoginSignUpPost(
      {required TempUserDto? body}) {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/Authentication/Login_SignUp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TempUserDtoApiResult, TempUserDtoApiResult>($request);
  }

  @override
  Future<Response<AccessToken>> _apiV1AuthenticationLoginSignUpValidationPost(
      {required TempUserDto? body}) {
    final Uri $url = Uri.parse(
        'https://api.goljaam.com/api/v1/Authentication/Login_SignUpValidation');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AccessToken, AccessToken>($request);
  }

  @override
  Future<Response<AccessToken>> _apiV1AuthenticationStaffLoginPost({
    String? userName,
    String? password,
  }) {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/Authentication/StaffLogin');
    final Map<String, dynamic> $params = <String, dynamic>{
      'UserName': userName,
      'Password': password,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AccessToken, AccessToken>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthenticationSignOutPost() {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/Authentication/SignOut');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<CourseDtoListApiResult>> _apiV1CourseListGet() {
    final Uri $url = Uri.parse('https://api.goljaam.com/api/v1/Course/List');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<CourseDtoListApiResult, CourseDtoListApiResult>($request);
  }

  @override
  Future<Response<CourseDtoApiResult>> _apiV1CourseDetailGet({String? id}) {
    final Uri $url = Uri.parse('https://api.goljaam.com/api/v1/Course/Detail');
    final Map<String, dynamic> $params = <String, dynamic>{'Id': id};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CourseDtoApiResult, CourseDtoApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1UserUpdateProfilePost({
    String? userName,
    String? phoneNumber,
    String? email,
    String? code,
    String? gender,
    String? fname,
    String? lname,
    String? imageUrl,
    String? id,
    List<int>? ImageFile,
  }) {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/User/UpdateProfile');
    final Map<String, dynamic> $params = <String, dynamic>{
      'UserName': userName,
      'PhoneNumber': phoneNumber,
      'Email': email,
      'Code': code,
      'Gender': gender,
      'Fname': fname,
      'Lname': lname,
      'ImageUrl': imageUrl,
      'Id': id,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'ImageFile',
        ImageFile,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      parameters: $params,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<UserDtoApiResult>> _apiV1UserGetUserProfileGet() {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/User/GetUserProfile');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDtoApiResult, UserDtoApiResult>($request);
  }

  @override
  Future<Response<UserTaskDtoListApiResult>> _apiV1UserTaskUserTaskListGet(
      {DateTime? date}) {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/UserTask/UserTaskList');
    final Map<String, dynamic> $params = <String, dynamic>{'Date': date};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<UserTaskDtoListApiResult, UserTaskDtoListApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1UserTaskChangeTaskPost({
    String? id,
    String? status,
    String? doneDescription,
  }) {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/UserTask/ChangeTask');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Id': id,
      'status': status,
      'DoneDescription': doneDescription,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1UserTaskAddTaskPost(
      {required UserTaskDto? body}) {
    final Uri $url =
        Uri.parse('https://api.goljaam.com/api/v1/UserTask/AddTask');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResult, ApiResult>($request);
  }
}
