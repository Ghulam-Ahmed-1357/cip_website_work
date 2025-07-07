import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppUrls {
  // static String baseUrl = dotenv.env["Test_URL"]!;
  static String baseUrl = dotenv.env["APP_URL"]!;
  static String apiBaseUrl = "$baseUrl/api/v1";
  static String storageUrl = "$baseUrl/storage";
  //  "https://ts.koreintl.com/api";
  static String login = "$apiBaseUrl/auth/login";
  static String logout = "$apiBaseUrl/auth/logout";
  static String loginWithFingerPrint = "$apiBaseUrl/auth/login/face-and-fingerprint";
  static String setBiometricToken = "$apiBaseUrl/auth/set-biometric-token";
}

class NotificationUrls {
  static String notifications = "${AppUrls.apiBaseUrl}/notification/get";
  static String notificationsMarkAsRead = "${AppUrls.apiBaseUrl}/notification/mark-as-read";
  static String notificationsMarkAllAsRead = "${AppUrls.apiBaseUrl}/notification/mark-all-as-read";
}

class ProfileUrls {
  static String getProfile = "${AppUrls.apiBaseUrl}/profile";
  static String confirmPasswordAndGetSensitiveData = "${AppUrls.apiBaseUrl}/profile/confirm-password";
  static String updatePassword = "${AppUrls.apiBaseUrl}/profile/update-password";
  static String updateDefaultProfile = "${AppUrls.apiBaseUrl}/profile/update-default-password";
  static String updateProfilePhoto = "${AppUrls.apiBaseUrl}/profile/update-profile-photo";
}

class LocalAppUrl {
  static const String localWebUrl = "https://cip-test-laravel.test";
  // static const String localWebUrl = "http://192.168.10.62:8000";
  static const String localWebApiUrl = "$localWebUrl/api";
  static const String getCompanies = "$localWebApiUrl/companies";
  static const String addCompany = "$localWebApiUrl/companies/add";
  static const String updateCompanyStatus = "$localWebApiUrl/companies/update-status";
  static const String getShiftStatus = "$localWebApiUrl/shifts-status";
  static const String addShiftStatus = "$localWebApiUrl/shifts-status/add";
  static const String getleaveStatus = "$localWebApiUrl/leave-status";
  static const String addleaveStatus = "$localWebApiUrl/leave-status/add";
  static const String getPublicHolidays = "$localWebApiUrl/public-holidays";
  static const String addPublicHolidays = "$localWebApiUrl/public-holidays/add";
  static const String getShifts = "$localWebApiUrl/shifts";
  static const String addShifts = "$localWebApiUrl/shifts/add";
  static const String getAttendance = "$localWebApiUrl/attendances";
  static const String addAttendance = "$localWebApiUrl/attendances/add";
  static const String getAttendanceStatus = "$localWebApiUrl/attendances-status";
  static const String addAttendanceStatus = "$localWebApiUrl/attendances-status/add";
  static const String addAttendanceTimeEntry = "$localWebApiUrl/time-entries/add";
  static const String getClientsByCompany = "$localWebApiUrl/clients";
  static const String getClientById = "$localWebApiUrl/client";
  static const String addClientByCompany = "$localWebApiUrl/clients/add";
  static const String addContractByClient = "$localWebApiUrl/client-contracts/add";
  static const String editContractByClient = "$localWebApiUrl/client-contracts/edit";
  static const String getContactByClient = "$localWebApiUrl/client-contacts";
  static const String addContactByClient = "$localWebApiUrl/client-contacts/add";
  static const String editContactByClient = "$localWebApiUrl/client-contacts/edit";
}
