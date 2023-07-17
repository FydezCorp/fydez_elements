import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../gap.dart';

class IconPacksDemoPage extends StatefulWidget {
  const IconPacksDemoPage({Key? key}) : super(key: key);

  @override
  State<IconPacksDemoPage> createState() => _IconPacksDemoPageState();
}

class _IconPacksDemoPageState extends State<IconPacksDemoPage> {
  final List<IconPack> iconPackList = IconPack.values;
  IconPack selectedIconPack = IconPack.material;
  String? iconName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropdownButton(
                value: selectedIconPack,
                items: iconPackList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedIconPack = value!;
                  });
                },
              ),
              // TODO: Can we automate this?
              Wrap(
                children: [
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).home,
                    name: 'home',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).eye,
                    name: 'eye',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).heart,
                    name: 'heart',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).login,
                    name: 'login',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).logout,
                    name: 'logout',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).store,
                    name: 'store',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).user,
                    name: 'user',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).arrowDown,
                    name: 'arrowDown',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).arrowUp,
                    name: 'arrowUp',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).search,
                    name: 'search',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarCart,
                    name: 'navBarCart',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarCartActive,
                    name: 'navBarCartActive',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarFavorites,
                    name: 'navBarFavorites',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarFavoritesActive,
                    name: 'navBarFavoritesActive',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarHome,
                    name: 'navBarHome',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarHomeActive,
                    name: 'navBarHomeActive',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarProfile,
                    name: 'navBarProfile',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarProfileActive,
                    name: 'navBarProfileActive',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarStore,
                    name: 'navBarStore',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).navBarStoreActive,
                    name: 'navBarStoreActive',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).addToCart,
                    name: 'addToCart',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).appBarBack,
                    name: 'appBarBack',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).dropdownExpand,
                    name: 'dropdownExpand',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).dropdownShrink,
                    name: 'dropdownShrink',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).expansionTileExpand,
                    name: 'expansionTileExpand',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).expansionTileShrink,
                    name: 'expansionTileShrink',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).hidePassword,
                    name: 'hidePassword',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).showPassword,
                    name: 'showPassword',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).listTileSeeMore,
                    name: 'listTileSeeMore',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).popUpClose,
                    name: 'popUpClose',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profileAccountSettings,
                    name: 'profileAccountSettings',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profileAddresses,
                    name: 'profileAddresses',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profileContact,
                    name: 'profileContact',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profileHelp,
                    name: 'profileHelp',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profileLogOut,
                    name: 'profileLogOut',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profileNotifications,
                    name: 'profileNotifications',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profileOrderDetails,
                    name: 'profileOrderDetails',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).profilePassword,
                    name: 'profilePassword',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).changePassword,
                    name: 'changePassword',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).email,
                    name: 'email',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).horizontalMore,
                    name: 'horizontalMore',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).location,
                    name: 'location',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).myLocation,
                    name: 'myLocation',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).phone,
                    name: 'phone',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).sms,
                    name: 'sms',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).zoomIn,
                    name: 'zoomIn',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).zoomOut,
                    name: 'zoomOut',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).helpDelivery,
                    name: 'helpDelivery',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).helpFAQ,
                    name: 'helpFAQ',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).helpGift,
                    name: 'helpGift',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).helpPrivacy,
                    name: 'helpPrivacy',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).helpReturn,
                    name: 'helpReturn',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).cartAdd,
                    name: 'cartAdd',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).cartRemove,
                    name: 'cartRemove',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).cartRemoveSingular,
                    name: 'cartRemoveSingular',
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Icon Name',
                      hintText: 'Enter Icon Name',
                    ),
                    onChanged: (value) {
                      setState(() {
                        iconName = value;
                      });
                    },
                  )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      FyIcon.fromString(
                        context,
                        icon: iconName,
                        iconPack: selectedIconPack,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [Icon(icon), const Gap(5.0), Text(name)],
      ),
    );
  }
}
