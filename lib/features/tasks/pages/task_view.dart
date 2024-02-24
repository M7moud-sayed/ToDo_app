import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/features/tasks/widgets/task_item_widget.dart';

import '../../settings_provider.dart';

class TaskView extends StatefulWidget {
  TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  DateTime focusTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 55.0),
          child: Stack(
            alignment: const Alignment(0, 4.0),
            clipBehavior: Clip.none,
            children: [
              Container(
                  width: mediaQuery.width,
                  height: mediaQuery.height * 0.2,
                  color: theme.primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Text(
                    "TODO List",
                    style: theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.white),
                  )),
              EasyInfiniteDateTimeLine(
                  firstDate: DateTime(2023),
                  focusDate: focusTime,
                  lastDate: DateTime(2025),
                  showTimelineHeader: false,
                  dayProps: EasyDayProps(
                      inactiveDayStyle: DayStyle(
                          dayNumStyle: theme.textTheme.bodyMedium,
                          dayStrStyle: theme.textTheme.bodySmall,
                          monthStrStyle: theme.textTheme.bodyMedium,
                          decoration: BoxDecoration(
                            color: vm.isDark() ? Color(0xFF141922) : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          )),
                      todayStyle: DayStyle(
                          dayNumStyle: theme.textTheme.bodyMedium,
                          dayStrStyle: theme.textTheme.bodySmall,
                          monthStrStyle: theme.textTheme.bodyMedium,
                          decoration: BoxDecoration(
                        color: vm.isDark() ? Color(0xFF141922) : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      )),
                      activeDayStyle: DayStyle(
                          dayNumStyle: theme.textTheme.bodyMedium
                              ?.copyWith(color: theme.primaryColor),
                          dayStrStyle: theme.textTheme.bodySmall
                              ?.copyWith(color: theme.primaryColor),
                          monthStrStyle: theme.textTheme.bodyMedium
                              ?.copyWith(color: theme.primaryColor),
                          decoration: BoxDecoration(
                              color: vm.isDark()
                                  ? Color(0xFF141922)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: theme.primaryColor)))),
                  onDateChange: (selectedDate) {
                    setState(() {
                      focusTime = selectedDate;
                    });
                  })
            ],
          ),
        ),
        Expanded(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            TaskItemWidget(),
            TaskItemWidget(),
            TaskItemWidget(),
            TaskItemWidget(),
            TaskItemWidget(),
          ],
        ))
      ],
    );
  }
}
