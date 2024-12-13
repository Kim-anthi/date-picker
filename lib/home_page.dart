import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //datetime variable
  DateTime _dateTime = DateTime.now();
  
  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1995),
        lastDate: DateTime(2045)
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //dispaly date picked
              Text(_dateTime.toString(), style: TextStyle(fontSize: 30),),
          
              MaterialButton(
                  onPressed: _showDatePicker,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Choose Date", style: TextStyle(fontSize: 30),),
                ),
                color: Colors.blue,
              ),
            ],
          ),
        ),

      );
  }
}
