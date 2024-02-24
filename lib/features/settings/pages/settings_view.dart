import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<String> languagesList = ["English", "عربي"];

  List<String> themeModeList = ["Light", "Dark"];

  // state management
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            width: mediaQuery.width,
            height: mediaQuery.height * 0.2,
            color: theme.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Text(
              "Settings",
              style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
            )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                local.language,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomDropdown(
                items: languagesList,
                initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
                decoration: CustomDropdownDecoration(
                  closedBorder: Border.all(color: theme.primaryColor),
                  closedBorderRadius: BorderRadius.circular(8.0),
                  expandedSuffixIcon: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: vm.isDark() ? Color(0xFF141922) : Colors.black,
                  ),
                  closedSuffixIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: vm.isDark() ? Color(0xFF141922) : Colors.black,
                  ),
                  closedFillColor:
                      vm.isDark() ? Color(0xFF141922) : Colors.white,
                  expandedFillColor:
                      vm.isDark() ? Color(0xFF141922) : Colors.white,
                ),
                onChanged: (value) {
                  if (value == "English") {
                    vm.changeLanguage("en");
                  } else if (value == "عربي") {
                    vm.changeLanguage("ar");
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Text(local.theme, style: theme.textTheme.bodyMedium),
              const SizedBox(
                height: 10,
              ),
              CustomDropdown(
                items: themeModeList,
                initialItem: vm.isDark() ? "Dark" : "Light",
                decoration: CustomDropdownDecoration(
                  closedBorder: Border.all(color: theme.primaryColor),
                  closedBorderRadius: BorderRadius.circular(8.0),
                  expandedSuffixIcon: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: vm.isDark() ? Color(0xFF141922) : Colors.black,
                  ),
                  closedSuffixIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: vm.isDark() ? Color(0xFF141922) : Colors.black,
                  ),
                  closedFillColor:
                      vm.isDark() ? Color(0xFF141922) : Colors.white,
                  expandedFillColor:
                      vm.isDark() ? Color(0xFF141922) : Colors.white,
                ),
                onChanged: (value) {
                  if (value == "Light") {
                    vm.changeTheme(ThemeMode.light);
                  } else if (value == "Dark") {
                    vm.changeTheme(ThemeMode.dark);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
