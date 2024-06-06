
import 'package:json_annotation/json_annotation.dart';
part 'loginmodels.g.dart';

@JsonSerializable()
class loginmodels {
  String username;
  String password;
  bool save;

  loginmodels({
    required this.username,
    required this.password,
    required this.save,
  });


 
   factory loginmodels.fromJson(Map<String, dynamic> json) => _$loginmodelsFromJson(json);

    Map<String, dynamic> toJson() => _$loginmodelsToJson(this);

}

