import 'package:expenso/widgets/transactionform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}
class _TransactionScreenState extends State<TransactionScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        backgroundColor: Color(0xFF28a745),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => TransactionForm()
        ),
        child: Icon(
          Icons.add,
          size: 36.0,
        ),
      ),
      backgroundColor:  Color(0xFF28a745),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             padding: EdgeInsets.only(
             top: 45.0, left:30.0, right: 30.0, bottom:60.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     CircleAvatar(
                       child: Icon(
                         Icons.list,
                         size: 30.0,
                         color:Color(0xFF28a745),
                       ),
                       backgroundColor: Colors.white,
                       radius: 30.0,
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Text('Expenso',
                 style: GoogleFonts.ubuntu(
                     fontSize: 30.0,
                     color: Colors.white,
                     fontWeight: FontWeight.w700,
                      letterSpacing: 2.0,                 ),
                 ),
               ],
             ),
           ),
           Expanded(
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(30.0),
                     topRight:Radius.circular(30.0),
                   ),
                 ),

               )
           )
         ],
        ),
      ),
    );
  }
}
