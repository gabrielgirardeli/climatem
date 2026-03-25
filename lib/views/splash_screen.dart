import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:climatem/views/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen  extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {

    return _SplashScreenState();
  }

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navegarParaHome();
    }
    
      void _navegarParaHome() async {
        await Future.delayed(const Duration(seconds: 5));
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()), 
            );
        }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade800,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text(
              "Clima do Futebol", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
             SizedBox(height: 20),
            
          ],
        
        ),
      ),

    );
  }


}


