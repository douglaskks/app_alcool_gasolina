import 'package:flutter/material.dart';

class telaPrincipal extends StatefulWidget {
  const telaPrincipal({super.key});

  @override
  State<telaPrincipal> createState() => _telaPrincipalState();
}

class _telaPrincipalState extends State<telaPrincipal> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Álcool ou Gasolina"),
          backgroundColor: Color.fromARGB(255, 0, 11, 112),
        ),
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(32),
                  child: Image.asset(
                    'images/logo.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(32),
                  child: Text(
                      "Saiba qual a melhor opção para abastecimento do seu carro",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.all(32),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        InputDecoration(labelText: "Preço Álcool, ex: 1,59"),
                    controller: _controllerAlcool,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(32),
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: "Preço Gasolina, ex: 3,20"),
                    controller: _controllerGasolina,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 11, 112),
                      minimumSize: Size(double.infinity, 48)),
                  child: Text("Calcular"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Resultado",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
