import 'package:firebase_auth/firebase_auth.dart';

class FireBaseHelper
{
  static final FireBaseHelper fireBaseHelper=FireBaseHelper._();
  FireBaseHelper._();

 FirebaseAuth auth=FirebaseAuth.instance;
  Future<String> authGet()
  async {
    try
        {
          await auth.signInAnonymously();
          return "Sucess";
        } catch(e)
        {
          return "Fallied";
        }
  }

  bool checkUser()
  {
    auth.currentUser;
    return auth==null;
  }
}