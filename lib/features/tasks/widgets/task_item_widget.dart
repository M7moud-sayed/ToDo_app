import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      width: mediaQuery.width,
      height: 115,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: vm.isDark() ? const Color(0xFF141922) : Colors.white,
        borderRadius: BorderRadius.circular(15.5),
      ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 90,
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Play Basket Ball",
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: theme.primaryColor),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 20,
                    color: Colors.red,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "10.30 Am",
                    style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 25,),
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Icon(
                Icons.check_rounded,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
