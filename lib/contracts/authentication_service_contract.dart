

import 'package:shop_app/models/client_user.dart';
import 'package:shop_app/models/new_password_request.dart';
import 'package:shop_app/models/store.dart';
import 'package:shop_app/models/user_response.dart';

abstract class AuthenticationServiceContract {
  Future<int> amountOfTimesUserHasLoggedIn();

  Future<UserResponse> getCurrentLoggedUser();

  Future<UserResponse> logInUser(ClientUser user, bool remember);

  Future changePassWord(NewPasswordRequest changePasswordRequest, int idUser);

  Future<String> register(ClientUser user);

  Future signOutUser();

  Future<int>getUserAge(UserResponse user);

  List<StoreResponseModel> ageFilterStore(List<StoreResponseModel> list,int userAge);

  Future resendConfirmationEmail(String customerId);

  Future<bool> hasUserAlreadyLoggedIn();

  Future<bool> updateUserInfo(UserResponse user);
  
  void saveTempUser(ClientUser user);
  
  Future<ClientUser> getTempUser();
}
