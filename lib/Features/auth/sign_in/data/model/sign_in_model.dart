class SignInModel {
  late final String status;

  SignInModel({
    required this.status,
  });

  SignInModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;

    return data;
  }
}

class SignInDataModel {
  late final String access;
  late final String refresh;
  late final int role;
  SignInDataModel({
    required this.access,
    required this.refresh,
    required this.role,
  });

  SignInDataModel.fromJson(Map<String, dynamic> json) {
    access = json['access'];
    refresh = json['refresh'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access'] = access;
    data['refresh'] = refresh;
    data['role'] = role;

    return data;
  }
}
