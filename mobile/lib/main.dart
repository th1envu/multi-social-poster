import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://muytcsvdbhgfoqitkkhn.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im11eXRjc3ZkYmhnZm9xaXRra2huIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzk2MTEzNDUsImV4cCI6MjA5NTE4NzM0NX0.uXtszaOhEjQQVUUkA9zf8k2UfrMXzocTtaeoYKLlvQA',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Supabase Test')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final supabase = Supabase.instance.client;

              final response = await supabase
                  .from('test')
                  .select();

              debugPrint(response.toString());
            },
            child: const Text('Test Connection'),
          ),
        ),
      ),
    );
  }
}