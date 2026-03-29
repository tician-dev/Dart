import 'package:flutter/material.dart';

// Ez indítja el az alkalmazást
void main() {
  runApp(
    MaterialApp(
      title: 'Számláló',
      debugShowCheckedModeBanner: false,
      home: SzamlaloOldal(),
    ),
  );
}

// Ez az oldal tartalmazza a számlálót
// StatefulWidget kell, mert a szám változik
class SzamlaloOldal extends StatefulWidget {
  @override
  State<SzamlaloOldal> createState() => _SzamlaloAllapot();
}

class _SzamlaloAllapot extends State<SzamlaloOldal> {
  // Ez tárolja a számláló értékét
  int szamlalo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fejléc
      appBar: AppBar(
        title: Text('Számláló'),
      ),

      // Az oldal tartalma
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kiírjuk a számot
            Text(
              '$szamlalo',
              style: TextStyle(fontSize: 72),
            ),

            SizedBox(height: 40),

            // Gombok egymás mellett
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Csökkentő gomb
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      szamlalo = szamlalo - 1;
                    });
                  },
                  child: Text('- 1', style: TextStyle(fontSize: 24)),
                ),

                SizedBox(width: 20),

                // Nullázó gomb
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      szamlalo = 0;
                    });
                  },
                  child: Text('Nulláz', style: TextStyle(fontSize: 24)),
                ),

                SizedBox(width: 20),

                // Növelő gomb
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      szamlalo = szamlalo + 1;
                    });
                  },
                  child: Text('+ 1', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}