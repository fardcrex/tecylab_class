abstract class GoRouterName {
  static const String home = 'home';
  static const String detailDestination = 'detailDestination';
  static const String destinationsList = 'destinationsList';
  static const String createDestination = 'createDestination';
  static const String formulario = 'formulario';
  static const String routerParameters = 'routerParameters';
}

abstract class GoRouterPath {
  static const String home = '/';
  static const String detailDestination = '/detail_destination';
  static const String destinationsList = '/destinos';
  static const String createDestination = '/create_destination';
  static const String formulario = '/formulario';
  static const String routerParameters = '/routerParameters';
}

abstract class ParemeterKey {
  static const String formularioId = 'formularioId';
  static const String destinationId = 'destinationId';
  static const String paramId = 'paramId';
}

abstract class QueryKey {
  static const String name = 'name';
  static const String age = 'age';
}
