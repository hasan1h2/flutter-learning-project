import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTime extends StatefulWidget {
  const MyDateTime({super.key});

  @override
  State<MyDateTime> createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  DateTime? datePicked;
  TimeOfDay? timePicked;
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Column(
      children: [
        Card(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Current Time : $time',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 15),
                Text(
                  'Current Time : ${time.hour}:  ${time.minute}:  ${time.second}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Current Time preDefineFormate : ${DateFormat('jms').format(time)}',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Date preDefineFormate : ${DateFormat('yMMMMd').format(time)}',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Current Time'),
                ),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Date Time Get For User',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Selected Date: ${datePicked != null ? '${datePicked!.day}-${datePicked!.month}-${datePicked!.year}' : 'No date selected'}',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  'Selected Time: ${timePicked != null ? '${timePicked!.hour}:${timePicked!.minute.toString().padLeft(2, '0')}' : 'No time selected'}',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        DateTime? picked = await showDatePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2030),
                          initialDate: DateTime.now(),
                        );
                        if (picked != null) {
                          setState(() {
                            datePicked = picked;
                          });
                        }
                      },
                      child: const Text('Show Date'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        TimeOfDay? picked = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (picked != null) {
                          setState(() {
                            timePicked = picked;
                          });
                        }
                      },
                      child: const Text('Show Time'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}
