import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

class PillsPage extends StatefulWidget {
  @override
  State<PillsPage> createState() => _PillsPageState();
}

class _PillsPageState extends State<PillsPage> {

  final EventController _controller = EventController();
  DateTime _selectedDate = DateTime.now();
  final List<String> _weekdays = [
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
    "SUN"
  ];
  final List<CalendarEventData> eventList = [
    CalendarEventData(
      title: 'Paracetamol',
      description: 'Take after food',
      date: DateTime.now(),
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 8, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 0),
      color: Color(0xFFD9D9D9),
      titleStyle: TextStyle(
        color: Color(0xFF2F3061),
        fontSize: 20,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w500,
      ),
      descriptionStyle: TextStyle(
        color: Color(0xFF2F3061),
        fontSize: 15,
        fontStyle: FontStyle.italic,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w300,
      ),
    ),
    CalendarEventData(
      title: 'Electrolyte Powder',
      description: 'Take after food',
      date: DateTime.now(),
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 12, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 13, 0),
      color: Color(0xFFD9D9D9),
      titleStyle: TextStyle(
        color: Color(0xFF2F3061),
        fontSize: 20,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w500,
      ),
      descriptionStyle: TextStyle(
        color: Color(0xFF2F3061),
        fontSize: 15,
        fontStyle: FontStyle.italic,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w300,
      ),
    ),
    CalendarEventData(
      title: 'Electolyte Powder',
      description: 'Take before food',
      date: DateTime.now(),
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 18, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 19, 0),
      color: Color(0xFFD9D9D9),
      titleStyle: TextStyle(
        color: Color(0xFF2F3061),
        fontSize: 20,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w500,
      ),
      descriptionStyle: TextStyle(
        color: Color(0xFF2F3061),
        fontSize: 15,
        fontStyle: FontStyle.italic,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w300,
      ),
    ),
  ];

  void _loadEvents() {
    _controller.addAll(eventList);
  }

  DateTime _getDateForWeekday(int index) {
    DateTime now = DateTime.now();
    int currentWeekday = now.weekday; // 1 = Monday, 7 = Sunday
    return now.add(Duration(days: index + 1 - currentWeekday));
  }

  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF6290C3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Pills Schedule ',
                style: TextStyle(
                  color: Color(0xFFFFFCFC),
                  fontSize: 30,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFF6290C3),
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _weekdays.asMap().entries.map((entry) {
                int index = entry.key;
                String day = entry.value;
                DateTime date = _getDateForWeekday(index);

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: _selectedDate.day == date.day
                          ? Color(0xFF2F3061)
                          : Color(0xFF6290C3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      day,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          // Expanded DayView
          Expanded(
            child: DayView(
              controller: _controller,
              startHour: 6,
              endHour: 24,
              minDay: _selectedDate,
              maxDay: _selectedDate,
              heightPerMinute: 1.5,
              showVerticalLine: false,
            ),
          ),
        ],
      ),
    );
  }
}