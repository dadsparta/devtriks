import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utilities/consts/colors.dart';
import '../../utilities/consts/texts.dart';
import '../../utilities/samples/settings_button.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                child: PageText(text: "Settings"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(
                  0xFF1F2257,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SettingsButton(
                firstText: 'Rate App',
                secondText: 'Your opinion is important to us',
                onTap: () {},
              ),
              SettingsButton(
                firstText: 'About App',
                secondText: 'Be the first to know about updates',
                onTap: () {},
              ),
              SettingsButton(
                firstText: 'Privacy Policy',
                secondText: 'Conditions of use of your data',
                onTap: () {},
              ),
              SettingsButton(
                firstText: 'Terms & Conditions',
                secondText: 'Regulations and rules of service',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: TitleText(text: 'Show more assets'),
                  ),
                  CupertinoSwitch(
                    activeColor: uiColor,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(
                        () {
                          isSwitched = value;
                        },
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
