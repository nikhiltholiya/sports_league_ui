import 'package:flutter/material.dart';
import 'package:tenniston/Pages/base_activity.dart';
import 'package:tenniston/components/elevated_buttons.dart';
import 'package:tenniston/utils/app_colors.dart';

class NoInternetPage extends StatelessWidget {
  final VoidCallback? onClick;

  const NoInternetPage({Key? key, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbar: Text(''),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: aWhite,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Image.asset('assets/no_int.png', height: 100),
              ),
              Text('No Internet Connection',
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: aBlack),
                  textAlign: TextAlign.center),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text('Please check your network and refresh this page.',
                    maxLines: 2, style: TextStyle(fontSize: 16.0, color: aBlack), textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: ElevatedButtons(
                    label: 'Refresh',
                    onClick: () => onClick!(),
                    labelColor: aWhite,
                    buttonColor: aGreen,
                    borderColor: aGreen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
