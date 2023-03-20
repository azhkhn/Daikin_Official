// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OutLetBeatPlanNavBar extends StatefulWidget {
  const OutLetBeatPlanNavBar({Key? key}) : super(key: key);
  @override
  State<OutLetBeatPlanNavBar> createState() => _OutLetBeatPlanNavBarState();
}

class _OutLetBeatPlanNavBarState extends State<OutLetBeatPlanNavBar> {
  var index = 0;
  var dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Card(
        elevation: 6,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: TextField(
                      controller: dateInput,
                      autofocus: false,
                      cursorColor: Colors.blue,
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.blue,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "dd/mm/yyyy",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      color: Colors.blue,
                      child: TextButton(
                          onPressed: () async{
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2100));

                            if (pickedDate != null) {
                              String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
                              setState(() {
                                dateInput.text =
                                    formattedDate;
                              });
                            } else {}
                          },
                          child: const Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          )),
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        ))),
                label: ""),
          ],
          currentIndex: index,
          onTap: (int i) {
            setState(() {
              index = i;
            });
          },
          fixedColor: Colors.white,
        ),
      ),
    );
  }
}
