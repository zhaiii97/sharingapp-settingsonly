import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RateApp extends StatefulWidget {
  const RateApp({Key? key}) : super(key: key);

  @override
  State<RateApp> createState() => _RateAppState();
}

class _RateAppState extends State<RateApp> {
  final RateMyApp rateMyApp = RateMyApp(
    minDays: 0,
    minLaunches: 1,

    // appStoreIdentifier: '',
    // googlePlayIdentifier: '',
  );


  @override
  void initState() {
    rateMyApp.init().then((_) {
      rateMyApp.conditions.forEach((condition) {
        if(condition is DebuggableCondition) {
          print(condition.valuesAsString);
        }
      });
      if(rateMyApp.shouldOpenDialog) {
        rateMyApp.showRateDialog(
          context,
          title: 'Rate this app',
          message: 'Please rate my app and let me know what you think. \nThank you for using it.',
          rateButton: 'Rate',
          noButton: 'No Thanks',
          laterButton: 'Maybe Later',
          dialogStyle: const DialogStyle(
            titleStyle: TextStyle(
                color: Colors.redAccent),
          ),
          listener: (button) {
            switch (button) {
              case RateMyAppDialogButton.rate:
                print('Clicked on Rated. ');
                break;
              case RateMyAppDialogButton.later:
                print('Clicked on Later');
                break;
              case RateMyAppDialogButton.no:
                print('Clicked on No');
                break;
            }
            return true;
          },
          onDismissed: () =>
              rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
        );
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
