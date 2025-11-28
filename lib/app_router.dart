import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'pages/menu_page.dart';
import 'pages/boletos_page.dart';
import 'pages/comida_page.dart';
import 'pages/toboganes_page.dart';
import 'pages/kioscos_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const MenuPage(),
    ),
    GoRoute(
      path: '/boletos',
      builder: (_, __) => const BoletosPage(),
    ),
    GoRoute(
      path: '/comida',
      builder: (_, __) => const ComidaPage(),
    ),
    GoRoute(
      path: '/toboganes',
      builder: (_, __) => const ToboganesPage(),
    ),
    GoRoute(
      path: '/kioscos',
      builder: (_, __) => const KioscosPage(),
    ),
  ],
);
