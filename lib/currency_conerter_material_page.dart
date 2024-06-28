import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// 1. Create a var that stores the converted currency value
// 2. Create a fun that multiples the value given by the textfield with 81
// 3. Store the value in the var that we created
// 4. Displat the var.

class MaterialPa extends StatefulWidget {
  const MaterialPa({super.key});

  @override
  State<MaterialPa> createState() => _MaterialPa();
}


class _MaterialPa extends State<MaterialPa> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(28)),
    );
    return Scaffold(
      backgroundColor: Color(0xD5D6CDFE),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(243, 42, 3, 101),
        elevation: 0,
        title: const Text('Currency Converter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),

      body: Center(
        // color: Color.fromRGBO(230, 152, 152, 0.98),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'INR ${result!=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(247, 51, 1, 101)),
              ),
          
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount into USD",
                  hintStyle: const TextStyle(
                    color:  Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: false,
                ),
              ),
              const SizedBox(height: 10,),

              ElevatedButton(
                onPressed: () {
                  // print(textEditingController.text);
                    result = double.parse(textEditingController.text) * 81;
                  
                  setState(() {});
                },
                
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 16, 0, 86),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    )),
              
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}