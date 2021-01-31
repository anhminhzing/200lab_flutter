import 'package:rxdart/rxdart.dart';

enum RespondUser{Loading, Success, Error}

class UserBloc{
  // ignore: close_sinks
  BehaviorSubject<RespondUser> userBloc = BehaviorSubject<RespondUser>();

  void getData(){

  }

  void dispose(){
    this.userBloc.close();
  }
}