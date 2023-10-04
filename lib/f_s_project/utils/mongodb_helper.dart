import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:ui/f_s_project/utils/connection_file.dart';

class MongoDatabase{
  static connect() async {
    var db=await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var status=db.serverStatus();
    print("=============================================$status");
    var   collection=db.collection(COLLECTION_NAME);
    print(await collection.find().toList());
  }
}