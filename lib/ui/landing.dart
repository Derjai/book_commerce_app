import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  Landing({super.key});

  final List<String> book = <String>[
    'Harry Potter y la piedra filosofal',
    'J.K  Rowling',
    '1997',
    '30',
    'Sci-Fi',
    'Scrivener',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: SearchBar(
                  hintText: 'Buscar libros...',
                  leading: Icon(Icons.search),
                ),
              ),
              SizedBox(
                width: 48,
                child: IconButton(
                  icon: const Icon(Icons.filter_alt),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(book[0]),
                  subtitle: Text(book[1]),
                  trailing: Text(book[2]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(book[3]),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Badge(
          label: Text('3'),
          child: Icon(Icons.shopping_cart),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mi perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Mis pedidos',
          ),
        ],
      ),
    );
  }
}
