import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numb = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Pesquisar')
            ],
          ),
          appBar: AppBar(
            title: const Text('MOCKUP'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
            ],
          ),
          backgroundColor: Colors.amber,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print(numb);
              setState(() {
                numb++;
              });
            },
            child: const Icon(Icons.add),
          ),
          drawer: Drawer(
            child: Column(
              children: const [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.6fc1bfaa52c2456ac32791fd7cf52f42?rik=L%2bpJzLycBf5Syw&pid=ImgRaw&r=0'),
                  ),
                  accountName: Text('FBCA'),
                  accountEmail: Text('55@email.com'),
                ),
                ListTile(
                  title: Text('Perfil'),
                  leading: Icon(Icons.person),
                )
              ],
            ),
          ),
          body: Container(
              child: Center(
            child: Text('MASTERCLASS, $numb'),
          )),
        ));
  }
}
