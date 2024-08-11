import 'package:rovanna_app/features/profile/data/models/user_model/user_model.dart';

abstract class RegisterationDataSource {
  Future<List<UserModel>> login(
  
  );
  Future<List<UserModel>> signup(
  
  );
}
