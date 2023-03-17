// ignore_for_file: avoid_print, unused_element

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Constants/global.dart';

class OutLetRecyclerView extends StatefulWidget {
  const OutLetRecyclerView({Key? key}) : super(key: key);

  @override
  State<OutLetRecyclerView> createState() => _OutLetRecyclerViewState();
}

class _OutLetRecyclerViewState extends State<OutLetRecyclerView> {
  Map<String, dynamic>? data;
  List<int> selectedItem = [];
  bool checkBoxValue = false;
  Future<String> getData() async {
    var response = await http.get(
      Uri.parse(
          "https://web.multiplier.co.in/dkffts/dkfftssr_listBranchDealer.action?empId=${loginglobaldata.first.loginId}&branchId=${loginglobaldata.first.branchId}"),
    );
    await Future.delayed(
      const Duration(microseconds: 10),
    );
    setState(() {
      data = json.decode(response.body);
    });
    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 80,
                  width: 180,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: const TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        focusColor: Colors.black,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: 'Search',
                        labelStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15.0)),
                height: 45,
                width: 125,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Submit',
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: 2.5,
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount:
                data == null ? 0 : (data!.entries.first.value.length),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blueGrey,
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Checkbox(
                        value: selectedItem.contains(index) ? true : false,
                        activeColor: Colors.black,
                        onChanged: (newValue) {
                          if (selectedItem.contains(index)) {
                            selectedItem.remove(index);
                          } else {
                            selectedItem.add(index);
                          }
                          setState(() {});
                        },
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            'Dealer Name: ${data!.entries.first.value[index]["dealerName"]}',
                            style: const TextStyle(color: Colors.black)),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                            'Address: ${data!.entries.first.value[index]["location"]}',
                            style: const TextStyle(color: Colors.black)),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Text(
                            'Dealer ID: ${data!.entries.first.value[index]["dealerId"]}',
                            style: const TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
