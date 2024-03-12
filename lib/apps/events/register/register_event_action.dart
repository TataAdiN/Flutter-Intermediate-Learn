import '../../../data/models/user.dart';
import 'register_event.dart';

class RegisterEventAction implements RegisterEvent {
  late User user;
  RegisterEventAction({required String name, required String email, required String password}){
    user = User(userId: '', name: name, email: email, password: password);
  }
}
