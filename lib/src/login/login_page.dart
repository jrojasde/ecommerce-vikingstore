import 'package:flutter/material.dart';
import 'package:viking_store/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column (
          children: [
            _imageBanner(),
            _textFieldEmail(),
            _textFielPassword(),
            _buttonLogin(),
            _textDontHaveAccount(),
          ],
        ),
      )
    );
  }

  Widget _buttonLogin(){
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
          onPressed: () {},
          child: Text('Ingresar'),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          padding: EdgeInsets.symmetric(vertical: 15)
        ),
      ),
    );
  }

  Widget _textFielPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }


  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(
              color: MyColors.primaryColor
          ),
        ),
        SizedBox(width: 7),
        Text(
          'Registrate',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyColors.primaryColor
          ),
        ),
      ],
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Correo Electronico',
            border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark
          ),
          prefixIcon: Icon(
              Icons.email,
            color: MyColors.primaryColor,
          )
        ),
      ),
    );
  }

  Widget _imageBanner() {
    return Image.asset(
      'assets/img/delivery.png',
      width: 200,
      height: 200,
    );
  }

}