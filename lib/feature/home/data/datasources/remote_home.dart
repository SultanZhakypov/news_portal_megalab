
// abstract class RemoteAuthSource {
//   Future<Unit> addPost(AuthModel authModel);
// }

// class RemoteAuthimpl implements RemoteAuthSource {
//   final Dio dio;

//   RemoteAuthimpl({required this.dio});

//   @override
//   Future<Unit> addPost(AuthModel authModel) async {
//     final formData = FormData.fromMap({
//       'nickname': authModel.nickname,
//       'password': authModel.password,
//     });
//     final response = await dio.post(
//       'login/',
//       data: formData,
//     );
//     final token = response.data[AppConstants.token];

//     if (response.statusCode == 200) {
//       SharedPrefs.saveData(AppConstants.token, token);
//       return Future.value(unit);
//     } else {
//       throw ServerException();
//     }
//   }