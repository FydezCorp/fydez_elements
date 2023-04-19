import 'package:example/cubit/icon_pack_cubit.dart';
import 'package:example/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fydez_elements/icon_packs/delegate/icon_delegate.dart';
import 'package:fydez_elements/icon_packs/icon_pack.dart';

import 'const/theme.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => IconPackCubit(),
    child: const MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FydezDemoRouter.router;
    return BlocBuilder<IconPackCubit, IconPack>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: theme,
          routeInformationProvider: router.routeInformationProvider,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          localizationsDelegates: [
            IconDelegate(state),
          ],
        );
      },
    );
  }
}
