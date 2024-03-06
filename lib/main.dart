import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mayurance/firebase_options.dart';
import 'package:mayurance/pages/desktop/desktop_home.dart';
import 'package:mayurance/pages/mobile/mobile_home.dart';
import 'package:mayurance/theme/theme.dart';
import 'package:mayurance/utils/const.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => ContentNotifier(),
      child: const PortfolioApp(),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sahil Portfolio',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          appBarTheme:
              AppBarTheme(backgroundColor: PortFolioColors.colorPrimary)),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutMePage(),
        '/projects': (context) => const ProjectsPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

class ContentNotifier extends ValueNotifier<String> {
  ContentNotifier() : super('Home');

  void changeContent(String newContent) {
    value = newContent;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktop: Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.bottomCenter,
              //   end: Alignment.topCenter,
              //   colors: [
              //     PortFolioColors.colorOnPrimary,
              //     PortFolioColors.colorPrimaryGradient,
              //     PortFolioColors.colorPrimary
              //   ],
              // ),
              ),
          child: const DesktopHomePageContent(),
        ),
        mobile: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  PortFolioColors.colorOnPrimary,
                  PortFolioColors.colorPrimaryGradient,
                  PortFolioColors.colorPrimary
                ],
              ),
            ),
            child: const MobileHomePageContent()),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  const ResponsiveLayout(
      {super.key, required this.desktop, required this.mobile});
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 768;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 768) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}

// class ExpandedOptions extends StatelessWidget {
//   const ExpandedOptions({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         OptionItem(text: 'Home'),
//         OptionItem(text: 'Education'),
//         OptionItem(text: 'Experience'),
//         OptionItem(text: 'Project'),
//         OptionItem(text: 'Contact me'),
//       ],
//     );
//   }
// }

// class OptionItem extends StatelessWidget {
//   final String text;

//   const OptionItem({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(text),
//       onTap: () {
//         // Handle tap on the option here if needed
//       },
//     );
//   }
// }

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: const Center(
        child: Text(
          'Welcome to my portfolio! I am a passionate Flutter developer.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Projects:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. Flutter Project 1\n2. Flutter Project 2\n3. Flutter Project 3',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You can contact me at:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Email: your.email@example.com\nPhone: +1234567890',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Education'),
            onTap: () {
              // Implement navigation to education page if needed
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Experience'),
            onTap: () {
              // Implement navigation to experience page if needed
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Projects'),
            onTap: () {
              Navigator.pushNamed(context, '/projects');
            },
          ),
          ListTile(
            title: const Text('Contact Me'),
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:mayurance/pages/splash_screen.dart';
// import 'package:mayurance/theme/theme.dart';
// import 'firebase_options.dart';
// import 'package:flutter/material.dart';

// Future<void> main() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Mayurance A.C. Services',
//       theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
//       darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
