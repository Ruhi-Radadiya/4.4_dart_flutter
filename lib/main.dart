import 'package:flutter/material.dart';

class Data{
  int id;
  String name;
  String designation;
  int salary;
  int experience;
  String companyname;
  int age;
  String qualification;
  String gender;
  int mobilenumber;
  Data({required this.id,
        required this.name,
        required this.designation,
        required this.salary,
        required this.experience,
        required this.companyname,
        required this.age,
        required this.qualification,
        required this.gender,
        required this.mobilenumber});

  factory Data.FromMap({required Map data}){
    return Data(id: data['id'], name: data['name'], designation: data['designation'], salary: data['salary'], experience: data['experience'], companyname: data['companyname'], age: data['age'], qualification: data['qualification'], gender: data['gender'], mobilenumber: data['mobilenumber']);
  }
}

List<Map<String, dynamic>> mapdata =[
  {"id":11,"name":"Aman","designation":"Manager","salary":1020000,"experience":9,"companyname":"Sky high","age":35,"qualification":"M.TECH","gender":"Male","mobilenumber":7856390077},
  {"id":12,"name":"Raj","designation":"Employee","salary":120000,"experience":7,"companyname":"Sky high","age":32,"qualification":"B.TECH","gender":"Male","mobilenumber":1548392057},
  {"id":13,"name":"Rahul","designation":"Employee","salary":120000,"experience":7,"companyname":"Sky high","age":33,"qualification":"MSC","gender":"Male","mobilenumber":3388559922},
  {"id":14,"name":"Tina","designation":"Employee","salary":110000,"experience":6,"companyname":"Sky high","age":30,"qualification":"MSC","gender":"Female","mobilenumber":3857245960},
  {"id":15,"name":"Jay","designation":"Employee","salary":110000,"experience":6,"companyname":"Sky high","age":31,"qualification":"BSC","gender":"Male","mobilenumber":2957635490},
  {"id":16,"name":"Amar","designation":"Employee","salary":110000,"experience":6,"companyname":"Sky high","age":30,"qualification":"MSC","gender":"Male","mobilenumber":1178693540},
  {"id":17,"name":"Smit","designation":"Employee","salary":110000,"experience":6,"companyname":"Sky high","age":32,"qualification":"BSC","gender":"Male","mobilenumber":5764893033},
  {"id":18,"name":"Mahil","designation":"Employee","salary":100000,"experience":5,"companyname":"Sky high","age":29,"qualification":"MCA","gender":"Male","mobilenumber":4769063457},
  {"id":19,"name":"Jiya","designation":"Employee","salary":100000,"experience":5,"companyname":"Sky high","age":28,"qualification":"B.TECH","gender":"Female","mobilenumber":3896062349},
  {"id":20,"name":"Priya","designation":"Employee","salary":100000,"experience":5,"companyname":"Sky high","age":29,"qualification":"MCA","gender":"Female","mobilenumber":8675342987},
  {"id":21,"name":"Anil","designation":"Employee","salary":100000,"experience":5,"companyname":"Sky high","age":27,"qualification":"BSC","gender":"Male","mobilenumber":8745328906},
  {"id":22,"name":"Darshan","designation":"Employee","salary":90000,"experience":4,"companyname":"Sky high","age":26,"qualification":"MSC","gender":"Male","mobilenumber":7584330099},
  {"id":23,"name":"Ram","designation":"Employee","salary":90000,"experience":4,"companyname":"Sky high","age":25,"qualification":"MSC","gender":"Male","mobilenumber":7432869023},
  {"id":24,"name":"Navy","designation":"Employee","salary":90000,"experience":4,"companyname":"Sky high","age":26,"qualification":"MCA","gender":"Male","mobilenumber":8111324567},
  {"id":25,"name":"Divya","designation":"Employee","salary":90000,"experience":4,"companyname":"Sky high","age":24,"qualification":"BSC","gender":"Female","mobilenumber":8324190537},
  {"id":26,"name":"Amanjeet","designation":"Employee","salary":80000,"experience":3,"companyname":"Sky high","age":25,"qualification":"MSC","gender":"Male","mobilenumber":2436795165},
  {"id":27,"name":"Krina","designation":"Employee","salary":80000,"experience":3,"companyname":"Sky high","age":27,"qualification":"MSC","gender":"Female","mobilenumber":9845267590},
  {"id":28,"name":"Sahil","designation":"Employee","salary":80000,"experience":3,"companyname":"Sky high","age":23,"qualification":"BCA","gender":"Male","mobilenumber":7562397853},
  {"id":29,"name":"Dax","designation":"Employee","salary":70000,"experience":2,"companyname":"Sky high","age":24,"qualification":"MCA","gender":"Male","mobilenumber":8745321960},
  {"id":30,"name":"Kavita","designation":"Employee","salary":70000,"experience":2,"companyname":"Sky high","age":24,"qualification":"MSC","gender":"Female","mobilenumber":9764529095},
];

void main(){
  List<Data> allData=mapdata.map((e) => Data.FromMap(data: e)).toList();

  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Employee Details"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...allData
                  .map((e) => Text(
                      "ID: ${e.id} Name: ${e.name} DESIGNATION: ${e.designation} SALARY: ${e.salary} EXPERIENCE: ${e.experience} COMPANY NAME: ${e.companyname} AGE: ${e.age} QUALIFICATION: ${e.qualification} GENDER: ${e.gender} MOBILE NUMBER: ${e.mobilenumber}"))
                  .toList(),
            ],
          ),
        ),
      ),
  ),
  );
}