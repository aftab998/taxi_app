
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:texi_management_app/screens/purchaseEntry/purchaseModel.dart';


class DBHelper{

  static Database? _db;


   Future<Database?> get db async{
     if(_db != null){
       return _db;
     }
     _db = await initDataBase();
     return _db;
   }


   initDataBase()async{
     io.Directory documentDirectory = await getApplicationDocumentsDirectory();
     String path = join(documentDirectory.path, 'purchaseData.db');
     var db = await openDatabase(path,version: 1, onCreate: _onCreate);
     return db;
   }

  _onCreate(Database db, int version) async{
    await db.execute(
      "CREATE TABLE purchasetb("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, productName TEXT NOT NULL, vendorName TEXT NOT NULL, purchaseQuantity INTEGER NOT NULL,purchasePrice INTEGER NOT NULL, paymentWay TEXT NOT NULL, purchaseDate TEXT NOT NULL )",
    );
  }


  Future<PurchaseModel> insert(PurchaseModel purchaseModel)async{
    var dbClient = await db;
    await dbClient?.insert('purchasetb', purchaseModel.toMap());
    return purchaseModel;
  }



}