

// Future<CourseDtoListApiResult> courseListGet(
//     {required BuildContext context, String? id}) async {
//   final api = Goljaam.create(interceptors: [MyRequestInterceptor()]);
//   final postResult = await api.apiV1CourseListGet();

//   print(postResult.error);
//   print(postResult.body);

//   if (postResult.isSuccessful == true) {
//     final response = CourseDtoListApiResult.fromJson(postResult.body!.toJson());
//     context.read<GoljaamCourseListState>().getCourseList(response.data!);
//   } else {}
//   final response = CourseDtoListApiResult.fromJson(postResult.body!.toJson());

//   return response;
// }
