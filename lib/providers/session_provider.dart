import 'package:cip_website/config/app_urls.dart';
import 'package:cip_website/config/http_handler/http_handlers.dart';
import 'package:cip_website/config/storage_service.dart';
import 'package:cip_website/config/http_handler/helper_function.dart';
import 'package:cip_website/model/profile_model.dart';
import 'package:flutter/material.dart';

class SessionProvider extends ChangeNotifier {
  /// user profile model
  ProfileModel? userProfile;

  /// Static variable for user profile model
  static ProfileModel? staticUserProfile;
  /// get logged user profile
  /// this function error handler with try and catch
  Future<void> getProfile() async {
    try {
      var token = await getToken();
      var resp = await postRequesthandler(
        url: ProfileUrls.getProfile,
        token: token,
      );
      if (resp != null && resp.statusCode == 200) {
        var data = resp.data;
        userProfile = ProfileModel.fromJson(data);
        staticUserProfile = ProfileModel.fromJson(data); // Set the static variable as well
        notifyListeners();
        // return userProfile!.email.toString();
      }
    } catch (e) {
      showErrorToast("Something went wrong");
    }
    return;
  }

  Future<String?> fetchProfileAndGetEmail() async {
    try {
      var token = await getToken();
      var resp = await postRequesthandler(
        url: ProfileUrls.getProfile,
        token: token,
      );
      if (resp != null && resp.statusCode == 200) {
        var data = resp.data;
        userProfile = ProfileModel.fromJson(data);
        staticUserProfile = ProfileModel.fromJson(data); // Set the static variable as well
        return userProfile!.email.toString();
      }
    } catch (e) {
      showErrorToast("Something went wrong");
    }
    return null;
  }

  /// Check token and get profile
  /// This function returns true if the profile is successfully retrieved, false otherwise
  Future<bool> checkTokenAndgetProfile() async {
    try {
      var token = await storageService.readSecureStorage("ecos-user-token");
      if (token == null) {
        return false;
      }
      var resp = await postRequesthandler(
        url: ProfileUrls.getProfile,
        token: token,
      );
      if (resp != null && resp.statusCode == 200) {
        var data = resp.data;
        // log(data.toString());
        userProfile = ProfileModel.fromJson(data);
        staticUserProfile = userProfile;
        notifyListeners();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      // log(e.toString());
      showErrorToast("something went wrong");
      return false;
    }
  }

  logout() {
    staticUserProfile = null;
    userProfile = null;
  }
}
