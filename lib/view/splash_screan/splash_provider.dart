import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tembo_hrms_app/view/splash_screan/splash_screen.dart';



class SplashScreenProvider extends ChangeNotifier {


  // final GetStorage _storage = GetStorage();

  bool _screenLoading = true;


  bool get screenLoading => _screenLoading;

  void startFakeTimer(bool value) async {
    _screenLoading =value;
    notifyListeners();
  }

//   Future<void> navigateScreen(BuildContext context) async {
// if(_screenLoading==true){
//
// }else{
//   Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen));
// }
//   }
}

