import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fydez_elements/fydez_elements.dart';

class IconPackCubit extends Cubit<IconPack> {
  IconPackCubit() : super(IconPack.material);
  void changeIconPack(IconPack iconPack) {
    emit(iconPack);
  }
}
