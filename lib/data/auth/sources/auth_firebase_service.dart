import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_couriers_app/data/auth/models/user_creation_req.dart';

abstract class AuthFirebaseService {

  Future<Either> signup(UserCreationReq user);
  
}

class AuthFirebaseServiceImpl extends AuthFirebaseService{
  @override
  Future<Either> signup(UserCreationReq user) async{
    try{
      var returnedData = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email!, 
        password: user.password!
      );

      await FirebaseFirestore.instance.collection('Users').doc(
        returnedData.user!.uid
      ).set(
        {
          'FullName' : user.fullName,
          'Email' : user.email,
          'Password' : user.password
        }
      );

      return const Right(
        'Sign Up was successful'
      );
    }on FirebaseAuthException catch(e){
      String message = '';

      if(e.code == 'weak-password'){
        message = 'The password provided is too weak';
      }else if(e.code == 'email-already-in-use'){
        message = 'An account already exists with this email';
      }
      
      return Left(message);
    }
  }
  
}