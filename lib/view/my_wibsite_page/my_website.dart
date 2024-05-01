import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import '../splash_screan/splash_provider.dart';
import '../splash_screan/splash_screen.dart';
import 'package:permission_handler/permission_handler.dart';
class MyWebsitePage extends StatefulWidget {
  const MyWebsitePage({super.key});

  @override
  State<MyWebsitePage> createState() => _MyWebsitePageState();
}

class _MyWebsitePageState extends State<MyWebsitePage> {
  @override
  bool _isLoading = true;


  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
              initialUrlRequest: URLRequest(url: WebUri("https://hr.sssipl.in/")),
            onLoadStart: (controller, url) {
              // Show the splash screen when the web view starts loading
              _isLoading = true;
              setState(() {

              });
            },
            onLoadStop: (controller, url) {
              checkPermission();
              _isLoading = false;
              setState(() {

              });
            },
            androidOnPermissionRequest: (controller, origin, resources) async {
              // Handle permission request for camera

                var permissionStatus = await Permission.camera.request();
                var locationStatus = await Permission.location.request();
                if (permissionStatus.isGranted && locationStatus.isGranted) {
                  return PermissionRequestResponse(
                    resources: resources,
                    action: PermissionRequestResponseAction.GRANT,
                  );
                } else {
                  return PermissionRequestResponse(
                    resources: resources,
                    action: PermissionRequestResponseAction.DENY,
                  );
                }


            },


          ),
          if (_isLoading)
            SplashScreen(),
        ],
      ),
    );
  }
  Future<void> checkPermission() async{
    var permissionStatus = await Permission.camera.request();


  }
}
