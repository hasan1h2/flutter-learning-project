import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({super.key ,required this.title});
  var name = ['Habib', 'Hasan', 'Nahid', 'Sultan'];
final String title;


  var mobile = ['01742','0153','0168','018965'];

  var img ={
    1:'assets/imag/images.jpg',
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// Buttons Section
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => print('Text Button'),
                  child: const Text('Text Button'),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () => print('ElevatedButton'),
                  child: const Text('ElevatedButton'),
                ),
                const SizedBox(height: 15),
                OutlinedButton(
                  onPressed: () => print('OutlinedButton'),
                  child: const Text('OutlinedButton'),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.amber, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrange.shade600,
                        blurRadius: 5,
                        spreadRadius: 5,
                      )
                    ],
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () => print('InkWell'),
                      child: const Text(
                        'Row Btn InkWell',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// List Section
          Expanded(
            flex: 6,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${index+1}',
                        style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 15),
                      CircleAvatar(
                        backgroundImage: AssetImage(img[(index % img.length )+1]!),
                        minRadius: 25,
                        maxRadius: 35,
                      ),
                    ],
                  ),
                  title: Text(
                    name[index],
                    style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    mobile[index],
                    style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(Icons.add),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                height: 50,
                thickness: 3,
              ),
              itemCount: name.length,
            ),
          )
        ],
      ),
    );
  }
}
