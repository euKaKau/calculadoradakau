import 'package:flutter/material.dart';
import 'calculadora.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 138, 16, 225)),
        useMaterial3: true,
      ),
      home: const Homepage(title: 'Calculadora'),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //color: Colors.amber,
                //child: const Text('Layout Superior'),
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                     //child: const Text('Primeira Coluna'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 211, 164, 250),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromARGB(255, 186, 117, 255),
                          width: 2.0,
                        ),
                      ),
                      child: const Calculadora(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      //color: Colors.green,
                      //child: const Text('Terceira Coluna'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 30, 54, 174),
                //child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
