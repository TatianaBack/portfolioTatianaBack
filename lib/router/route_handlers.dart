import 'package:fluro/fluro.dart';
import 'package:portfolio/views/curriculo.dart';
import 'package:portfolio/views/home.dart';
import 'package:portfolio/views/projetos.dart';
import 'package:portfolio/views/sobre.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  return const HomeView();
});

final curriculoHandler = Handler(handlerFunc: (context, params) {
  return const CurriculoView();
});

final projetosHandler = Handler(handlerFunc: (_, __) => const ProjetosView());

final sobreHandler = Handler(handlerFunc: (_, __) => const SobreView());
