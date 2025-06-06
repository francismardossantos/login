import 'package:flutter/material.dart';
import 'package:loginapp/tela_inicial.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
      
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Portal do Aluno',
        style: TextStyle(
          color: const Color.fromARGB(255, 245, 244, 247),
          fontSize: 22,
          fontWeight: FontWeight.bold,

        ),
        ),
        backgroundColor: const Color.fromARGB(255, 238, 49, 2),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset( 
              'lib/assets/login.png',
              width: 350,
              height: 250,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email',
              prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ) 
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha',
               prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Todolist(),),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 64, 64, 136),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.symmetric(horizontal: 48, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
               ),
              
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
