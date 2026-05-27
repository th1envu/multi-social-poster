import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/app.dart';
import 'package:mobile/core/background/background_service.dart';
import 'package:mobile/core/monitoring/monitoring_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Handle global errors
  FlutterError.onError = (details) {
    // ref.read(monitoringServiceProvider).recordError...
  };

  // Initialize background service
  final bgService = BackgroundService();
  await bgService.initialize();

  // Initialize Supabase (add actual keys in env later)
  await Supabase.initialize(
    url: 'https://muytcsvdbhgfoqitkkhn.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im11eXRjc3ZkYmhnZm9xaXRra2huIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzk2MTEzNDUsImV4cCI6MjA5NTE4NzM0NX0.uXtszaOhEjQQVUUkA9zf8k2UfrMXzocTtaeoYKLlvQA',
  );

  runApp(
    const ProviderScope(
      child: MultiSocialPosterApp(),
    ),
  );
}