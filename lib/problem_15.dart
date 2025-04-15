import 'package:flutter/material.dart';

class Problem_15 extends StatefulWidget {
  const Problem_15({super.key});

  @override
  State<Problem_15> createState() => _Problem_15State();
}

class _Problem_15State extends State<Problem_15> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String dateText = selectedDate != null
        ? '${selectedDate!.year}-${selectedDate!.month}-${selectedDate!.day}'
        : 'No date selected';

    String timeText = selectedTime != null
        ? '${selectedTime!.hour}:${selectedTime!.minute.toString().padLeft(2, '0')}'
        : 'No time selected';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_15'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected Date: $dateText',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Selected Time: $timeText',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _pickDate,
              child: const Text('Pick Date'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _pickTime,
              child: const Text('Pick Time'),
            ),
          ],
        ),
      ),
    );
  }
}
