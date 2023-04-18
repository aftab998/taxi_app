import 'package:flutter/material.dart';
import 'package:texi_management_app/screens/purchaseEntry/purchaseModel.dart';
import '../components/textfield.dart';
import 'dbHelper.dart';

class dataEntry extends StatefulWidget {

   dataEntry({Key? key,}) : super(key: key);

  @override
  State<dataEntry> createState() => _dataEntryState();
}

class _dataEntryState extends State<dataEntry> {


  DBHelper? dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DBHelper();
  }


  final NameController = TextEditingController();
  final vendorNameController = TextEditingController();



  static const menuitems = <String>[
    'Cash',
    'Debit Card',
    'Easy Paisa',
  ];

  String? selectedval;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(

          children: [
            const SizedBox(height: 8,),
            InputTextField(
                myController: NameController,
                onValidator: (value){},
                keyBoardType: TextInputType.text,
                obsureText: false,
                hint: "Product Name",
              label: "Product Name" ,
              prefixicon: Icon(Icons.label),
              surfixicon: Icon(Icons.adf_scanner_sharp),
            ),
            InputTextField(
                myController: NameController,
                onValidator: (value){},
                keyBoardType: TextInputType.text,
                obsureText: false,
                hint: "Vendor Name",
              label:  "Vendor Name",
              prefixicon: Icon(Icons.person),
              surfixicon: Icon(Icons.adf_scanner_sharp),
            ),
            InputTextField(
                myController: NameController,
                onValidator: (value){},
                keyBoardType: TextInputType.number,
                obsureText: false,
                hint: "Purchase Quantity",
              label: "Purchase Quantity",
              prefixicon: Icon(Icons.stacked_line_chart),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Note:",style: TextStyle(color: Colors.green),),
            ),
            InputTextField(
                myController: NameController,
                onValidator: (value){},
                keyBoardType: TextInputType.datetime,
                obsureText: false,
                hint: "Purchase Date",
              label:  "Purchase Date",
              prefixicon: Icon(Icons.calendar_month_rounded),
            ),
            InputTextField(
                myController: NameController,
                onValidator: (value){},
                keyBoardType: TextInputType.number,
                obsureText: false,
                hint: "Purchase Price",
              label:  "Purchase Price",
              prefixicon: Icon(Icons.monetization_on_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: DropdownButtonFormField(


                  decoration:  InputDecoration(
                    hintText: "Payment Way",
                    contentPadding: const EdgeInsets.all(12),
                    prefixIcon: Icon(Icons.attach_money_rounded),
                    hintStyle:Theme.of(context).textTheme.bodyText2!.copyWith(height:0,color:Colors.black38.withOpacity(0.8),),
                    border:  const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,),
                      borderRadius:BorderRadius.all(Radius.circular(100)),
                    ),
                    focusedBorder: const  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,),
                        borderRadius:BorderRadius.all(Radius.circular(100))
                    ),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,),
                        borderRadius:BorderRadius.all(Radius.circular(100))
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,),
                        borderRadius:BorderRadius.all(Radius.circular(100))
                    ),
                  ),

                  value: selectedval,
                  items: menuitems.map(
                          (e)=>DropdownMenuItem(child: Text(e),value: e,)
                  ).toList(),
                  onChanged: (val){
                    setState(() {
                      selectedval= val as String;
                    });
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
