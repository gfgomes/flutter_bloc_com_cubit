import 'package:bilheteria_panucci/logic/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bilheteria_panucci/screens/home.dart';
import 'package:bilheteria_panucci/themes/my_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BilheteriaPanucci());
}

class BilheteriaPanucci extends StatelessWidget {
  const BilheteriaPanucci({super.key});

  /// Constroi a árvore de widgets para o aplicativo Bilheteria Panucci.
  ///
  /// Neste método, utilizamos os widgets BlocProvider e BlocBuilder para gerenciar
  /// o cubo ThemeCubit. O BlocProvider permite que o cubo seja acessado por seus
  /// descendentes sem precisar passá-lo pela árvore de widgets. O BlocBuilder
  /// reconstruirá sempre que o estado do cubo mudar.
  ///
  /// O ThemeData é obtido do estado do cubo e usado para definir o tema do MaterialApp.
  /// O widget Home é definido como a tela inicial do aplicativo.
  ///
  /// Exemplo:
  ///
  /// ```dart
  /// @override
  /// Widget build(BuildContext context) {
  ///   return BlocProvider<ThemeCubit>(
  ///     create: (_) => ThemeCubit(),
  ///     child: BlocBuilder<ThemeCubit, ThemeData>(
  ///       builder: (context, state) => MaterialApp(
  ///         title: 'Bilheteria Panucci',
  ///         theme: state,
  ///         home: const Home(),
  ///       ),
  ///     ),
  ///   );
  /// }
  /// ```
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) => MaterialApp(
          title: 'Bilheteria Panucci',
          theme: state,
          home: const Home(),
        ),
      ),
    );
  }
}

class CounterCubit {}
