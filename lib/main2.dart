import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen extends StatelessWidget{
  String no;
  String gocthang;
  String laithang;
  String tongtienthang;
  String tonglaithang;
  String tonggop;

  Screen(
      {this.no,
      this.gocthang,
      this.laithang,
      this.tongtienthang,
      this.tonglaithang,
      this.tonggop});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calcurator"),
        ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                    child: Text("\n1 Nợ: "+no+" vnd",style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w600))
                  ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text("\n\n2 Gốc tháng: "+ gocthang +" vnd", style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w600))),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text("\n\n3 Lãi/ Tháng: "+laithang +" vnd", style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w600, ))),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text("\n\n4 Tổng Tiền/ Tháng: "+tongtienthang +" vnd", style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w600))),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text("\n\n5 Tổng Lãi: "+tonglaithang+" vnd", style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w600))),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text("\n\n6 Tổng Góp: "+tonggop +" vnd", style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w600))),
              ),
            ],
          ),
      ),
    );
  }
}