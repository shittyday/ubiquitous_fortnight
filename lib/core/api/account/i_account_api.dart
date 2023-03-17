abstract class IAccountApi {
  Future<int> ban({
    required int ownerId,
  });
  Future<String> changePassword({
    required String restoreSid,
    required String changePasswordHash,
    required String oldPassword,
    required String newPassword,
  });
  Future<List<T>> getActiveOffers<T>({
    required int offset,
    required int count,
  });
  Future<int> getAppPermissions({
    int? userId,
  });
  Future<List> getBanned({
    required int offset,
    required int count,
  });

  Future<T> getCounters<T>({
    required String filter,
    required int userId,
  });
  Future<T> getInfo<T>({
    String? fields,
  });
  Future<T> getProfileInfo<T>();

  ///Должен быть обязательно передан один из параметров: [token] или [deviceId].
  Future<T> getPushSettings<T>({
    String? token,
    int? deviceId,
  });
  Future<int> registerDevice({
    required String token,
    required String deviceModel,
    required int deviceYear,
    required String deviceId,
    required String systemVersion,
    required int noText,
    required String subscribe,
    required String settings,
    required bool sandbox,
  });

  Future<T> saveProfileInfo<T>({
    required String firstName,
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
    required String status,
  });

  Future<T> setInfo<T>({
    required int intro,
    required bool ownPostsDefault,
    required bool noWallReplies,
    required String name,
    required String value,
  });
  Future<int> setOffline();
  Future<int> setOnline({
    required bool voip,
  });

  ///Должен быть обязательно передан один из параметров: token или device_id
  Future<int> setPushSettings({
    required String deviceId,
    required String settings,
    required String key,
    required String value,
  });
  Future<int> setSilenceMode({
    required String token,
    required String deviceId,
    required int time,
    required int chatId,
    required int userId,
    required int peerId,
    required int sound,
  });
  Future<int> unban({
    required int ownerId,
  });
  Future<int> unregisterDevice({
    required String token,
    required String deviceId,
    required bool sandbox,
  });
}
