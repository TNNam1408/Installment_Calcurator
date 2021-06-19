import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'main2.dart';
class Calcurator extends StatefulWidget {
  @override
  _Calcurator createState() => _Calcurator();
}
class _Calcurator extends State<Calcurator> {
  // This widget is the root of your application.
  double  Gia = 0.0, Tratruoc= 0.0, LaiXuat= 0.0, Thang= 0.0;
  double No= 0.0, Gocthang= 0.0, Laithang= 0.0,Tonggopthang= 0.0, Tonglai= 0.0, Tonggopfull= 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Installment Calcurator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text("Installment Calcurator"),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        hintText: "Nhập giá sản phẩm",
                        labelText: "Giá "
                      ),
                      onChanged: (text){
                        Gia = double.parse(text);
                        print(text);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        hintText: "Nhập số tiền trả trước",
                        labelText: "Trả Trước"
                      ),
                      onChanged: (text){
                        Tratruoc = double.parse(text);
                        print(text);
                      },
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        hintText: "Nhập % lãi xuất",
                        labelText: 'Lãi Xuất',
                        counterText: 'Hãy nhập 0.0166',

                      ),
                      onChanged: (text){
                        LaiXuat = double.parse(text);
                        print(text);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        hintText: "Nhập số tháng muốn trả góp",
                        labelText: "Tháng"
                      ),
                      onChanged: (text){
                        Thang = double.parse(text);
                        print(text);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        onPressed:onClick,
                        child: Text("Dí Tao Đi", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          ),
                        color: Colors.blue,
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 250, 0, 10),
                    child: Text("Software designers and developers: Trần Nhật Nam",
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                        textAlign: TextAlign.end,
                    ),
                  ),
                  // Text("Nợ:"+ '$No', style: TextStyle(fontSize: 25, color: Colors.red),),
                  // Text("Gốc/ Tháng:"+ '$Gocthang', style: TextStyle(fontSize: 25, color: Colors.blue),),
                  // Text("Lãi Xuất:"+ '$LaiXuat', style: TextStyle(fontSize: 25, color: Colors.green),),
                  // Text("Tổng Góp/ Tháng:"+ '$Tonggopthang', style: TextStyle(fontSize: 25, color: Colors.yellowAccent),),
                  // Text("Tổng Lãi/ Tháng:"+ '$Tonglai', style: TextStyle(fontSize: 25, color: Colors.teal),),
                  // Text("Tổng Tất Cả:"+ '$Tonggopfull', style: TextStyle(fontSize: 25, color: Colors.deepOrange),),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void onClick(){

    No = (Gia - Tratruoc);
    Gocthang = (No / Thang);
    Laithang = No * LaiXuat;
    Tonggopthang = Gocthang + Laithang;
    Tonglai = Laithang * Thang;
    Tonggopfull = Tonggopthang * Thang;
    var f = NumberFormat('###,###.##', 'en_US');
    Navigator.push(
        context, MaterialPageRoute(builder: (context)=>
        Screen(
          // no: '$No',
          // gocthang: '$Gocthang',
          // laithang: '$Laithang',
          // tongtienthang: '$Tonggopthang',
          // tonglaithang: '$Tonglai',
          // tonggop: '$Tonggopfull',
          no: f.format(No),
          gocthang: f.format(Gocthang),
          laithang: f.format(Laithang),
          tongtienthang: f.format(Tonggopthang),
          tonglaithang: f.format(Tonglai),
          tonggop: f.format(Tonggopfull),
        )));
  }
}