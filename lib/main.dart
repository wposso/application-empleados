import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Empleado {
  final int id;
  final String nombre;
  final String documento;
  final double salario;

  Empleado({
    required this.id,
    required this.nombre,
    required this.documento,
    required this.salario,
  });
}

List<Empleado> empList = [
  Empleado(
    id: 1,
    nombre: 'Sara Camila Rios',
    documento: '1000123456',
    salario: 1700.000,
  ),
  Empleado(
    id: 2,
    nombre: 'Daniela Lopez',
    documento: '12300456',
    salario: 1800.000,
  ),
  Empleado(
    id: 3,
    nombre: 'Marco Polo Ruiz',
    documento: '1001342345',
    salario: 2200.000,
  ),
  Empleado(
    id: 4,
    nombre: 'Carolina Hernandez',
    documento: '1000123456',
    salario: 1500.000,
  ),
  Empleado(
    id: 5,
    nombre: 'Karen Ochoa',
    documento: '1000123456',
    salario: 1700.000,
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorA = Colors.grey.shade200;
    final colorB = Colors.grey.shade500;
    final colorC = Colors.grey.shade800;
    final radiusA = BorderRadius.circular(10);
    final radiusB = BorderRadius.circular(20);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: colorB),
                borderRadius: radiusB,
                color: colorA,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      overlayColor: WidgetStatePropertyAll(Colors.transparent),
                      elevation: WidgetStatePropertyAll(0),
                      autoFocus: false,
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: radiusA),
                      ),
                      leading: Icon(Icons.search_rounded, color: colorB),
                      hintText: 'Buscar',
                      hintStyle: WidgetStatePropertyAll(
                        TextStyle(color: colorB),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Icon(Icons.filter_list_rounded, color: colorB),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Text(
              'Lista de empleados',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
                color: colorC,
              ),
            ),
          ),
          empList.isEmpty
              ? Center(
                  heightFactor: 10,
                  child: Column(
                    children: [
                      Icon(Icons.warning_rounded),
                      SizedBox(height: 10),
                      Text('No hay datos dispónibles.'),
                    ],
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      final i = empList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorA,
                            borderRadius: radiusA,
                          ),
                          child: ListTile(
                            onTap: () => showDialog(
                              context: context,
                              builder: (builder) {
                                return EmpleadoInfo(
                                  nombre: i.nombre,
                                  documento: i.documento,
                                  salario: i.salario,
                                  contexto: context,
                                );
                              },
                            ),
                            dense: false,
                            leading: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.90),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  i.nombre.substring(0, 1),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(
                              i.nombre,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.8,
                              ),
                            ),
                            subtitle: Text(
                              i.documento,
                              style: TextStyle(letterSpacing: 0.9),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: colorB,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: empList.length,
                  ),
                ),
        ],
      ),
    );
  }
}

class EmpleadoInfo extends StatelessWidget {
  final String nombre;
  final String documento;
  final double salario;
  final BuildContext contexto;
  const EmpleadoInfo({
    super.key,
    required this.nombre,
    required this.documento,
    required this.salario,
    required this.contexto,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
            ],
          ),
          SizedBox(height: 10),
          ClipOval(
            child: CircleAvatar(
              backgroundColor: Colors.blue.shade600,
              radius: 60,
              child: Text(
                nombre.substring(0, 1),
                style: TextStyle(fontSize: 34, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Divider(color: Colors.grey.shade400),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEmpleadoCard(Icons.person, 'Nombre completo', nombre),
              SizedBox(height: 10),
              _buildEmpleadoCard(
                Icons.sim_card_download_rounded,
                'Documento',
                documento,
              ),
              SizedBox(height: 10),
              _buildEmpleadoCard(
                Icons.monetization_on_outlined,
                'Salario',
                salario.toString().trim(),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          CustomButtom(text: 'Eliminar'),
        ],
      ),
    );
  }

  Widget _buildEmpleadoCard(IconData icon, String text, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          dense: false,
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.white),
          ),
          title: Text(
            label,
            style: TextStyle(fontSize: 17, letterSpacing: 0.5),
          ),
          subtitle: Text(text),
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final String text;
  const CustomButtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.red.shade400,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 15)),
      ),
    );
  }
}
