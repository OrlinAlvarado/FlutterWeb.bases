import 'package:bases_web/ui/view/counter_provider_view.dart';
import 'package:bases_web/ui/view/counter_view.dart';
import 'package:bases_web/ui/view/view_404.dart';
import 'package:fluro/fluro.dart';

final counterHandler = Handler(
    handlerFunc: ( context, params ) {
      return CounterView( base: params['base']?.first ?? '5');
    } 
  );
  
final counterProviderHandler = Handler(
  handlerFunc: ( context, params ) => CounterProviderView( base: params['q']?.first ?? '5')
);
final dashboardUserHandler = Handler(
  handlerFunc: ( context, params ) {
    return const View404();
  }
);

final pageNotFound = Handler(
  handlerFunc: ( context, params ) => const View404()
);
