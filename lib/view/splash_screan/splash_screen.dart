import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:provider/provider.dart';
import 'package:tembo_hrms_app/conf/app_images.dart';

import '../../conf/primary_color_pallet.dart';
import 'splash_provider.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kToDark,
      body: Consumer<SplashScreenProvider>(
        builder: (context, splashProv, child) {
          if (!splashProv.screenLoading) {
            WidgetsBinding.instance.addPostFrameCallback((Duration _) {
              // Navigation after the widget tree has been built
              //splashProv.navigateScreen(context);

              //Navigator.of(context).pushNamedAndRemoveUntil(
               //   Routes.HOME, (route) => false);
            });
          }
          return SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Image.asset(
                    AppImages.imageSplash,
                    width: 250,
                  ),
                ).animate().fadeIn(duration: 3.seconds,curve: Curves.easeOut),
                // .fadeOut(duration: 800.ms, delay: 2000.ms, curve: Curves.easeOut)
                // .slideY(end: -0.1)
                // .scaleXY(end: 1.2),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: 50,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    valueColor: const AlwaysStoppedAnimation<Color>(Palette.kToLight),
                  ),
                ),
              ],
            ),
          ),
        );
        },
      ),
    );
  }
}
