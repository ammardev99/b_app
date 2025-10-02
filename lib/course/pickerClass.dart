import 'package:flutter/material.dart';

class PickerClass extends StatefulWidget {
  const PickerClass({super.key});
  @override
  State<PickerClass> createState() => _PickerClassState();
}

class _PickerClassState extends State<PickerClass> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  DateTimeRange? _selectedRange;

  String _formatDate(DateTime? d) {
    if (d == null) return 'Not set';
    return '${d.day.toString().padLeft(2, '0')}/${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  String _formatTime(TimeOfDay? t) {
    if (t == null) return 'Not set';
    final hour = t.hourOfPeriod == 0 ? 12 : t.hourOfPeriod;
    final period = t.period == DayPeriod.am ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')} $period';
  }

  Future<void> _pickDate() async {
    final today = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? today,
      firstDate: DateTime(today.year - 1),
      lastDate: DateTime(today.year + 5),
      helpText: 'Select a date',
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _pickDateRange() async {
    final today = DateTime.now();
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(today.year - 2),
      lastDate: DateTime(today.year + 2),
      initialDateRange: _selectedRange,
      helpText: 'Select a date range',
    );
    if (picked != null) {
      setState(() {
        _selectedRange = picked;
      });
    }
  }

  Future<void> _pickTime() async {
    final now = TimeOfDay.now();
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? now,
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final rangeText =
        _selectedRange == null
            ? 'Not set'
            : '${_formatDate(_selectedRange!.start)} — ${_formatDate(_selectedRange!.end)}';

    return Scaffold(
      appBar: AppBar(title: const Text('Date Picker Examples')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Simple display + button
            ListTile(
              title: const Text('Selected Date'),
              subtitle: Text(_formatDate(_selectedDate)),
              trailing: ElevatedButton(
                onPressed: _pickDate,
                child: const Text('Pick Date'),
              ),
            ),
            const SizedBox(height: 12),

            // Date range
            ListTile(
              title: const Text('Selected Range'),
              subtitle: Text(rangeText),
              trailing: ElevatedButton(
                onPressed: _pickDateRange,
                child: const Text('Pick Range'),
              ),
            ),
            const SizedBox(height: 12),

            // Time picker
            ListTile(
              title: const Text('Selected Time'),
              subtitle: Text(_formatTime(_selectedTime)),
              trailing: ElevatedButton(
                onPressed: _pickTime,
                child: const Text('Pick Time'),
              ),
            ),

            const Divider(height: 32),

            // Example of using the reusable DatePickerField in a simple form
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Form example:'),
            ),
            const SizedBox(height: 8),
            DateFormExample(
              onSavedDate: (d) => debugPrint('Saved form date: $d'),
            ),

            Row(
              children: [
                ListTile(
                  style: ListTileStyle.drawer,
                  leading: Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'My Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Personal',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey,
                  ),
                  tileColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey.shade300, width: 1),

                    // hover color red
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  // onHover change color,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.blue; // Change to blue when hovered
                      }
                      return Colors.grey[300]; // Default color
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.white; // Text color when hovered
                      }
                      return Colors.black; // Default text color
                    }),
                  ),

                  child: Text("data"),
                ),

                Container(height: 50, width: 50, color: Colors.red),
                Container(height: 50, width: 50, color: Colors.teal),
                Expanded(
                  child: Container(height: 50, width: 50, color: Colors.white),
                ),
                Container(height: 50, width: 50, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Simple form demonstrating DatePickerField
class DateFormExample extends StatefulWidget {
  final void Function(DateTime?)? onSavedDate;
  const DateFormExample({this.onSavedDate, super.key});
  @override
  State<DateFormExample> createState() => _DateFormExampleState();
}

class _DateFormExampleState extends State<DateFormExample> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _formDate;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          DatePickerField(
            label: 'Appointment Date',
            initialDate: DateTime.now().add(const Duration(days: 1)),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            validator: (d) {
              if (d == null) return 'Please pick a date';
              return null;
            },
            onDateSelected: (d) => _formDate = d,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.onSavedDate?.call(_formDate);
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('Form saved')));
                  }
                },
                child: const Text('Save'),
              ),
              const SizedBox(width: 12),
              OutlinedButton(
                onPressed: () {
                  _formKey.currentState!.reset();
                  setState(() => _formDate = null);
                },
                child: const Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Reusable DatePickerField:
/// - shows a read-only text field
/// - when tapped, opens showDatePicker
/// - supports validator and onDateSelected callback
class DatePickerField extends FormField<DateTime> {
  DatePickerField({
    super.key,
    String label = 'Select date',
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    FormFieldValidator<DateTime>? validator,
    void Function(DateTime?)? onDateSelected,
  }) : super(
         initialValue: initialDate,
         validator: validator,
         builder: (state) {
           final value = state.value;
           String text;
           if (value == null) {
             text = '';
           } else {
             text =
                 '${value.day.toString().padLeft(2, '0')}/${value.month.toString().padLeft(2, '0')}/${value.year}';
           }

           return GestureDetector(
             onTap: () async {
               final context = state.context;
               final now = DateTime.now();
               final picked = await showDatePicker(
                 context: context,
                 initialDate: value ?? now,
                 firstDate: firstDate ?? DateTime(now.year - 10),
                 lastDate: lastDate ?? DateTime(now.year + 10),
               );
               if (picked != null) {
                 state.didChange(picked);
                 onDateSelected?.call(picked);
               }
             },
             child: InputDecorator(
               decoration: InputDecoration(
                 labelText: label,
                 errorText: state.errorText,
                 border: const OutlineInputBorder(),
                 suffixIcon: const Icon(Icons.calendar_today),
               ),
               child: Text(text.isEmpty ? 'Tap to select' : text),
             ),
           );
         },
       );
}
