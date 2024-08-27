// user creation request
class UserCreationReq {
  String? fullName;
  String? email;
  String? password;
  String? occupation;

  UserCreationReq({
    required this.fullName,
    required this.email,
    required this.password
  });
}