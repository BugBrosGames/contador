import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int count = 0;

  void decrement() {
    setState((){
      count--;
    });
    print(count);
  }

  void increment() {
    setState((){
      count++;
  });
    print(count);
  }
    bool get IsEmpty => count == 0;
    bool get IsFull => count == 20;

  @override
  Widget build(BuildContext context) {
    print(build);

  return Scaffold(
    backgroundColor: Color.fromARGB(255, 133, 121, 120),
    body: Container(
      decoration: const BoxDecoration(
       image: DecorationImage(
         image: AssetImage('assets/images/image.png'),
         fit: BoxFit.cover,
        ),
      ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
         'Contador',
          style: TextStyle(
            fontSize: 60,
            color: Color.fromARGB(181, 2, 255, 242),
            fontWeight: FontWeight.w900,
            letterSpacing: 4,
            
          )
        ),
        const SizedBox(height: 64),
         Text(
         IsFull ? 'Lotado' : 'Pode entrar!',
          style:  TextStyle(
            fontSize: 30,
            color: IsFull ? Color.fromARGB(255, 255, 0, 0) : Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w800,
            letterSpacing: 4,
          ),
        ),
       const SizedBox(height: 32),
         Text(
            '$count',
            style:  TextStyle(
              fontSize: 100,
              color: IsFull ? Color.fromARGB(255, 255, 0, 0):Colors.black,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            )
          ),

          // Botão decrement
         const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: IsEmpty ? null: decrement,
              style: TextButton.styleFrom(
                // Cor de fundo do botão
                backgroundColor: IsEmpty ? Colors.green.withOpacity(0.2):Colors.green,
                fixedSize: const Size(100, 100),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                )
              ),
              child: const Text(
                'Saiu',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            // Botão increment
           const SizedBox(width: 64),
            TextButton(
              onPressed: IsFull ? null : increment,
              style: TextButton.styleFrom(
                backgroundColor: IsFull ? Colors.green.withOpacity(0.2):Colors.green,
                fixedSize: const Size(100, 100),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ) 
              ), 
              child: const Text(
                  'Entrou Aqui',   
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ) 
              ),
            ),
          ],
        )
      ]
     ),
    )
   );
}

}
