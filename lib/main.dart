import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  DateTime inputTanggal = DateTime.now();

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerNPM = new TextEditingController();
  TextEditingController controllerSmt = new TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Colors.blue,
          width: 200,
          child: SafeArea(
            child: Column(
              children: [Text("Drawer")],
              ),
            ),
          ),
      appBar: AppBar(
        title: Text("Material dan Cupertino Widget"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30.0)),
                new TextField(
                    controller: controllerNama,
                    decoration: new InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                        borderRadius:  new BorderRadius.circular(17.0)
                      )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0,)),
                  new TextField(
                    controller: controllerNPM,
                    decoration: new InputDecoration(
                      hintText: "NPM",
                      labelText: "NPM",
                      border: new OutlineInputBorder(
                        borderRadius:  new BorderRadius.circular(17.0)
                      )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0,)),
                  new TextField(
                    controller: controllerSmt,
                    decoration: new InputDecoration(
                      hintText: "Semester",
                      labelText: "Semester",
                      border: new OutlineInputBorder(
                        borderRadius:  new BorderRadius.circular(17.0)
                      )
                    ),
                  ),
                
                Padding(padding: EdgeInsets.only(top: 20.0)),
                ElevatedButton(
                  child: Text("Alert Dialog Material Widget",
                  style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Change Item"),
                            content: Text("Are you sure to change this item?"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(
                                  "No",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                                Padding(padding: EdgeInsets.only(top: 30.0)),
                new TextField(
                    controller: controllerNama,
                    decoration: new InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                        borderRadius:  new BorderRadius.circular(17.0)
                      )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0,)),
                  new TextField(
                    controller: controllerNPM,
                    decoration: new InputDecoration(
                      hintText: "NPM",
                      labelText: "NPM",
                      border: new OutlineInputBorder(
                        borderRadius:  new BorderRadius.circular(17.0)
                      )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0,)),
                  new TextField(
                    controller: controllerSmt,
                    decoration: new InputDecoration(
                      hintText: "Semester",
                      labelText: "Semester",
                      border: new OutlineInputBorder(
                        borderRadius:  new BorderRadius.circular(17.0)
                      )
                    ),
                  ),
                
                new Padding(padding: new EdgeInsets.only(top: 20.0,)),
                CupertinoButton(
                  color: Colors.blue,
                  child: Text("Alert Dialog Cupertino Widget"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text("Change Item"),
                            content: Text("Are you sure to change this item?"),
                            actions: [
                              CupertinoDialogAction(
                                isDestructiveAction: true,
                                child: Text("No"),
                                onPressed: () => Navigator.pop(context),
                              ),
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                child: Text("Yes"),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          );
                        });
                  },
                ),

                Padding(padding: EdgeInsets.only(top: 20.0)),
                CupertinoButton(
                  color: Colors.blue,
                  
                  child:
                  Text("Cupertino Action Sheet"),
                  
                  onPressed: (() {
                    showCupertinoModalPopup(
                      context: context, 
                      builder: (BuildContext context) => CupertinoActionSheet(
                        title: Text("Flutter Mapp"),
                        message: Text("Your Message"),
                        actions: <CupertinoActionSheetAction> [
                          CupertinoActionSheetAction(
                            onPressed: (){
                              Navigator.pop(context);
                            }, 
                            child: Text("Do Something"),
                            ),
                            CupertinoActionSheetAction(
                            onPressed: (){
                              Navigator.pop(context);
                            }, 
                            child: Text("Do Something Else"),
                            )
                        ],
                      )
                      );
            
                  })
                  ),

                  Padding(padding:EdgeInsets.only(top: 20.0),),
                  ElevatedButton(
                    child: Text("Modal Bottom Sheet"),
                    onPressed:(() {
                      showBottomSheet(
                        context: context, 
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 400,
                            child: Center(
                              child: ElevatedButton(
                                child: Text("Close"),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                ),
                            ),
                          );
                        });
                    }),
                    ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Today: ${(inputTanggal)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              CupertinoButton(
                  color: Colors.blue,
                  child: Text(
                    "Pilih Tanggal",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  onPressed: (() {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 300,
                            child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                initialDateTime: DateTime.now(),
                                backgroundColor: Colors.white,
                                onDateTimeChanged: (tanggal) {
                                  print(tanggal);
                             
                                }),
                                
                          );
                        });
                  })),
            ],
          ),   
              ],
            ),
          ],
        ),
      ),
    );
  }
}

