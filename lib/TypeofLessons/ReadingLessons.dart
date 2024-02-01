import 'package:flutter/material.dart';

import '../LevesOfUsers/AdvanceLessons.dart';
import '../LevesOfUsers/BeginnerLessons.dart';
import '../LevesOfUsers/IntermediateLessons.dart';


class ReadingLessons extends StatefulWidget {
  const ReadingLessons({super.key});
  @override
  _ReadingLessonsState createState() => _ReadingLessonsState();
}

class _ReadingLessonsState extends State<ReadingLessons> {
 String selectedLevel = 'Beginner';
 Widget secondContainer = Beginnerlessons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reading Lessons",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 30.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent
                ),
                child: CustomDropdown<String>(
                  items: ['Beginner', 'Intermediate', 'Advanced'],
                  value: selectedLevel,
                  onChanged: (newValue) {
                             setState(() {
                               selectedLevel = newValue!;
                               switch (selectedLevel) {
                                 case 'Beginner':
                                   secondContainer = Beginnerlessons();
                                   break;
                                 case 'Intermediate':
                                   secondContainer = Intermediatelessons();
                                   break;
                                 case 'Advanced':
                                   secondContainer = Advancelessons();
                                   break;
                                 default:
                                   secondContainer = Beginnerlessons(); // Default empty container
                               }
                             });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      child: secondContainer,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class CustomDropdown<T> extends StatefulWidget {
  final List<T> items;
  final T? value;
  final ValueChanged<T?> onChanged;

  CustomDropdown({
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomDropdownState<T> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  bool _isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleDropdown,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 40,
          width: 155,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
              colors: [
                Colors.indigo,
                Colors.teal
              ]
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.value?.toString() ?? 'Select level',
                style: TextStyle(fontSize: 14.0,color: Colors.white),
              ),
              Icon(
                _isDropdownOpen
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down,
                size: 24.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });

    if (_isDropdownOpen) {
      _showDropdownMenu();
    }
  }

  void _showDropdownMenu() {
    final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final RenderBox dropDownBox = context.findRenderObject() as RenderBox;
    final Offset position = dropDownBox.localToGlobal(Offset.zero, ancestor: overlay);

    showMenu<T>(
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      constraints: BoxConstraints(
        maxHeight: 160,
        maxWidth: 170
      ),
      shadowColor: Colors.transparent,
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + dropDownBox.size.height,
        position.dx + dropDownBox.size.width,
        position.dy + 2 * dropDownBox.size.height,
      ),
      items: widget.items.map<PopupMenuEntry<T>>((T item) {
        return PopupMenuItem<T>(
          value: item,
          child: Container(
            alignment: Alignment.center,
            height: 35,
            width: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.teal,
                  Colors.indigo,
                ]
              ),
              borderRadius: BorderRadius.circular(15.0)
            ),
              child: Text(item.toString(),style: TextStyle(color: Colors.white),)),
        );
      }).toList(),
    ).then((T? newValue) {
      if (newValue != null) {
        widget.onChanged(newValue);
      }
      setState(() {
        _isDropdownOpen = false;
      });
    });
  }
}
