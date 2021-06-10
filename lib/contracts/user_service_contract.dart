


import 'package:dio/dio.dart';
import 'package:shop_app/models/change_password_request.dart';
import 'package:shop_app/models/client_user.dart';
import 'package:shop_app/models/user_response.dart';

abstract class UserServiceContract {
  Future<bool> existsEmail(String email);

  Future<bool> existsPhoneNumber(String phoneNumber);

  Future<bool> updateClientUserProfileImage(FormData data, UserResponse user);
  
  Future<bool> updateDriverUserProfileImage(FormData data, UserResponse user);

  Future<String> sendVerificationCode(String email);

  Future<bool> changeForgottenPassword(ChangePasswordRequest request);

}
