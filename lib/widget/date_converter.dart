
import 'package:flutter/material.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:nepali_utils/nepali_utils.dart';

class DateConverter extends StatefulWidget {
  const DateConverter({Key? key}) : super(key: key);

  @override
  _DateConverterState createState() => _DateConverterState();
}

class _DateConverterState extends State<DateConverter> {
  NepaliDateTime? nt;
  DateTime? dt;

  pickNepaliDate() async {
    NepaliDateTime? selectedDateTime = await showAdaptiveDatePicker(
      context: context,
      initialDate: NepaliDateTime.now(),
      firstDate: NepaliDateTime(1970),
      lastDate: NepaliDateTime(2079),

      dateOrder: DateOrder.dmy, // for iOS only
      initialDatePickerMode: DatePickerMode.day, // for platform except iOS
    );
    if (selectedDateTime != null) {
      setState(() {
        nt = selectedDateTime;
      });
    }
  }

  pickEnglishDate() async {
    DateTime? selectedDateTime = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      initialDate: DateTime.now(),
      lastDate: DateTime(2022),
    );
    if (selectedDateTime != null) {
      setState(() {
        dt = selectedDateTime;
      });
    }
  }

  dynamic buildDateConverter(
      {Function()? function, String? date, String? text}) {
    return [
      Text(text!),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: function,
        child: const Text('Pick a date to convert'),
        style: ElevatedButton.styleFrom(primary: Colors.red),
      ),
      const SizedBox(height: 20),
      Text(date!),
      const SizedBox(height: 100),
    ];
  }

  @override
  void initState() {
    super.initState();
    nt = NepaliDateTime.now();
    dt = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Date Converter',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...buildDateConverter(
                text: 'B.S to A.D',
                function: () => pickNepaliDate(),
                date:
                'English Date Result = ${nt!.toDateTime().toString().substring(0, 10)}',
              ),
              ...buildDateConverter(
                text: 'A.D to B.S',
                function: () => pickEnglishDate(),
                date:
                'Nepali Date Result = ${dt!.toNepaliDateTime().toString().substring(0, 10)}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
