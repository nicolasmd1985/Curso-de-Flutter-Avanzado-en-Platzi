import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';

class UserBloc implements Bloc {

  //flujo de datos - Stream
  //Stream firebase

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;


  final _auth_repository = AuthRepository();
  //Casos de uso
  //1. SignIn Google
  Future<FirebaseUser> signIn() {
     return _auth_repository.signInFirebase();
  }
  //2 caso de uso registro bd
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) => _cloudFirestoreRepository.updateUserData(user);


  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {

  }
}