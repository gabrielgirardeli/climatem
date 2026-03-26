import 'package:climatem/viewmodels/clima_viewmodeld.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


    
  }

  class _HomeScreenState extends State<HomeScreen> {
    final TextEditingController _cidadeController = TextEditingController();

    void _buscarClima() {
      final cidade = _cidadeController.text.trim();
      if (cidade.isEmpty) {
        context.read<ClimaViewmodel>.buscarClimaCidade(cidade);
        
      }
      
      // Lógica para buscar o clima da cidade
    }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
   
  }
  
