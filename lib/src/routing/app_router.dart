import 'dart:js';

import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';
import 'package:itestapp/src/features/album/presentation/album_screen.dart';
import 'package:itestapp/src/features/album/presentation/create_album_screen.dart';
import 'package:itestapp/src/features/data_screen/presentation/retrieve_data_screen.dart';
import 'package:itestapp/src/features/products/presentation/product_grid.dart';
import 'package:itestapp/src/features/todos/domain/todo.dart';
import 'package:itestapp/src/features/todos/presentation/todos_screen.dart';
import 'package:itestapp/src/features/todos/sample.dart';
import 'package:itestapp/src/pages/home.dart';
import 'package:itestapp/src/pages/register.dart';
import 'package:itestapp/src/pages/show.dart';
import 'package:itestapp/src/routing/not_found_screen.dart';

enum AppRoute {
  home,
  products,
  albums,
  cart,
  signIn,
  account,
  orders,
  todos,
  dataScreen
}

final growableList =
    List<int>.generate(3, (int index) => index * index, growable: true);
final todos = List.generate(
    20,
    (i) =>
        Todo('Todo $i ', 'A description of what needs to be done for Todo $i'));

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (BuildContext context, GoRouterState state) {
        return const CreateAlbumScreen();
        // return const AlbumScreen();
        // return const ProductGrid();
        // , return const RetrieveDataScreen();
        //// return TodosScreen(todos: todos);
      },
      routes: <RouteBase>[
        GoRoute(
            path: 'login',
            name: AppRoute.signIn.name,
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const MyCustomForm(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Change the opacity of the screen using a Curve based on the the animation's
                    // value
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  });
            }),
      ],
    ),
    GoRoute(
      path: '/products',
      name: AppRoute.products.name,
      builder: (context, state) => const ProductGrid(),
      // routes: [
      //   GoRoute(
      //     path: '/:id',
      //     name: AppRoute.products.name,
      //     builder: (context, state) {
      //       final productId = state.pathParameters['id']!;
      //       return ProductScreen(productId: productId);
      //     },
      //   )
      // ]
    ),
    GoRoute(
        path: '/todos',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: TodosScreen(todos: todos),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // Change the opacity of the screen using a Curve based on the the animation's
              // value
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        }),
    GoRoute(
        path: '/register',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const MyCustomForm(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // Change the opacity of the screen using a Curve based on the the animation's
              // value
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        }),
    // GoRoute(
    //   path: 'register',
    //   pageBuilder: (context, state) =>
    //       MaterialPage(child: const RegistrationForm),
    // )
    //errorBuilder: (context, state) => ErrorScreen(state.error),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
