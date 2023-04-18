import 'package:flutter/material.dart';
import 'package:texi_management_app/screens/purchaseEntry/purchesEntery.dart';




class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  @override
  Widget build(BuildContext context) {






    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Taxi Management"),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications)
        ],
      ),
      drawer: Drawer(),


      body: SafeArea(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> dataEntry(
                      )));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      width: 160,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepPurple

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add_circle_rounded,color: Colors.white,size: 30,),
                          Text("Purchase Entry",style: TextStyle(color: Colors.white),),
                        ],) ,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.indeterminate_check_box, color: Colors.white,size: 30,),
                        Text("Sale Entry",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.paste_rounded,color: Colors.white,size: 30,),
                        Text("Product List",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.lan_outlined,color: Colors.white,size: 30,),
                        Text("Stock ON Hand",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon( Icons.handshake_rounded,color: Colors.white,size: 30,),
                        Text("Vendor detail",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon( Icons.people_rounded,color: Colors.white,size: 30,),
                        Text("Customer detail",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon( Icons.sticky_note_2_outlined,color: Colors.white,size: 30,),
                        Text("Purchase Order",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.clean_hands_rounded,color: Colors.white,size: 30,),
                        Text("Sales Order",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.line_axis_sharp,color: Colors.white,size: 30,),
                        Text("Expenses List",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.data_exploration_rounded,color: Colors.white,size: 30,),
                        Text("Profit Loss",style: TextStyle(color: Colors.white),),
                      ],) ,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
            )




          ],
        ),


      ),


    );
  }
}
