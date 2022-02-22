import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inicio_page extends StatefulWidget {
  // inicio({Key? key}) : super(key: key);

  @override
  State<inicio_page> createState() => _inicioState();
}

class _inicioState extends State<inicio_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            margin:
                const EdgeInsets.only(left: 24, top: 0, right: 24, bottom: 0),
            child: Column(
              children: [
                _imagen(),
                _botones(),
                _footer(),
              ],
            )),
      ),
    );
  }

  Widget _imagen() {
    return Container(
        margin: const EdgeInsets.only(top: 50),
        height: 150,
        //color: Colors.black,
        child: Image.asset("assets/petclinic.png"));
  }

  Widget _botones() {
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          height: 48,
          margin: const EdgeInsets.only(
            top: 40,
            bottom: 20,
          ),
          child: ElevatedButton.icon(
            icon:const FaIcon(FontAwesomeIcons.google,
              color: Colors.white
            ), 
            label:const Text("Continuar con Google"),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
              primary: HexColor("#3169f5"),
              textStyle:const TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.bold
                ),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 48,
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          child: ElevatedButton.icon(
            icon:const FaIcon(FontAwesomeIcons.facebook,color: Colors.white),
            label:const Text("Continuar con Facebook"),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
              primary: HexColor("#324fa5"),
              textStyle:const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
            ),
          ),
        ),
        Container(
          width: 300,
          height: 48,
          margin:const EdgeInsets.only(
            bottom: 20,
          ),
          child: OutlinedButton.icon(
            label: Text(
              'Registrarse con e-mail',
              style: TextStyle(
                color: HexColor("#64686f"), 
                fontSize: 14
              ),
            ),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)
              ),
              side: BorderSide(width: 1, color: HexColor("#64686f")),
              padding: const EdgeInsets.only(right: 10)
            ),
            icon: Icon(
              Icons.mail_outline, 
              color: HexColor("#64686f"),
              ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _footer() {
    return Column(children: <Widget>[
        const SizedBox(height: 48),
         TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: HexColor("#fc1460"),
            padding: EdgeInsets.zero,
            minimumSize: Size.zero
            
          ),
          child: const Text(
            'Entrar como invitado',
            style: TextStyle(fontSize: 13),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: HexColor("#76a757"),
            padding: EdgeInsets.zero,
            minimumSize: Size.zero
          ),
          child: const Text(
            'Entrar como vendedor',
            style: TextStyle(fontSize: 13),
          ),
        ),
     
      Container(
        margin:const EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("¿Ya tienes una cuenta?  ",
              style: TextStyle(fontSize: 13, color: HexColor("#64686f")),
            ),
            TextButton(
              child: const Text(
                'Iniciar sesion',
                style: TextStyle(fontSize: 13),
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: HexColor("#fc1460"),
                minimumSize: Size.zero
              ),  
            ),
          ],
        ),
      ),
    ]);
  }
}
