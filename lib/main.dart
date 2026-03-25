import 'package:climatem/viewmodels/clima_viewmodeld.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
  MultiProvider( 
    providers:[
      ChangeNotifierProvider(create:  (_) => ClimaViewmodel())

    ],
    child: const ClimaTempoApp(),
    )
  ); 
}


class ClimaTempoApp extends StatelessWidget {
  const ClimaTempoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ClimaViewmodel>(
      builder: (context, climaVM, child) {
        return MaterialApp(
          title: "Clima Tempo Bola fora",
          debugShowCheckedModeBanner: false,
          theme: climaVM.ehModoEscuro ? ThemeData.dark() : ThemeData.light(),
          home: const  SplashScreen(
          
             
            ),


            
          );
        },
        );
      }
    
  }

