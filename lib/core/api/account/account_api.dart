import 'package:ubiquitous_fortnight/core/api/account/i_account_api.dart';

class AccountApi implements IAccountApi {
  const AccountApi();

  @override
  Future<int> ban({required int ownerId}) {
    // TODO: implement ban
    throw UnimplementedError();
  }

  @override
  Future<String> changePassword(
      {required String restoreSid,
      required String changePasswordHash,
      required String oldPassword,
      required String newPassword}) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<List<T>> getActiveOffers<T>(
      {required int offset, required int count}) {
    // TODO: implement getActiveOffers
    throw UnimplementedError();
  }

  @override
  Future<int> getAppPermissions({int? userId}) {
    // TODO: implement getAppPermissions
    throw UnimplementedError();
  }

  @override
  Future<List> getBanned({required int offset, required int count}) {
    // TODO: implement getBanned
    throw UnimplementedError();
  }

  @override
  Future<T> getCounters<T>({required String filter, required int userId}) {
    // TODO: implement getCounters
    throw UnimplementedError();
  }

  @override
  Future<T> getInfo<T>({String? fields}) {
    // TODO: implement getInfo
    throw UnimplementedError();
  }

  @override
  Future<T> getProfileInfo<T>() {
    // TODO: implement getProfileInfo
    throw UnimplementedError();
  }

  @override
  Future<T> getPushSettings<T>({String? token, int? deviceId}) {
    // TODO: implement getPushSettings
    throw UnimplementedError();
  }

  @override
  Future<int> registerDevice(
      {required String token,
      required String deviceModel,
      required int deviceYear,
      required String deviceId,
      required String systemVersion,
      required int noText,
      required String subscribe,
      required String settings,
      required bool sandbox}) {
    // TODO: implement registerDevice
    throw UnimplementedError();
  }

  @override
  Future<T> saveProfileInfo<T>(
      {required String firstName,
      required String lastName,
      required String maidenName,
      required String screenName,
      required int cancelRequestId,
      required int sex,
      required int relation,
      required int relationPartnerId,
      required String bdate,
      required int bdateVisibility,
      required String homeTown,
      required int countryId,
      required int cityId,
      required String status}) {
    // TODO: implement saveProfileInfo
    throw UnimplementedError();
  }

  @override
  Future<T> setInfo<T>(
      {required int intro,
      required bool ownPostsDefault,
      required bool noWallReplies,
      required String name,
      required String value}) {
    // TODO: implement setInfo
    throw UnimplementedError();
  }

  @override
  Future<int> setOffline() {
    // TODO: implement setOffline
    throw UnimplementedError();
  }

  @override
  Future<int> setOnline({required bool voip}) {
    // TODO: implement setOnline
    throw UnimplementedError();
  }

  @override
  Future<int> setPushSettings(
      {required String deviceId,
      required String settings,
      required String key,
      required String value}) {
    // TODO: implement setPushSettings
    throw UnimplementedError();
  }

  @override
  Future<int> setSilenceMode(
      {required String token,
      required String deviceId,
      required int time,
      required int chatId,
      required int userId,
      required int peerId,
      required int sound}) {
    // TODO: implement setSilenceMode
    throw UnimplementedError();
  }

  @override
  Future<int> unban({required int ownerId}) {
    // TODO: implement unban
    throw UnimplementedError();
  }

  @override
  Future<int> unregisterDevice(
      {required String token,
      required String deviceId,
      required bool sandbox}) {
    // TODO: implement unregisterDevice
    throw UnimplementedError();
  }
}
