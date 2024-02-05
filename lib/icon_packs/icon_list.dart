import 'package:flutter/material.dart';

abstract class IconList {
  IconData get home;
  IconData get login;
  IconData get logout;
  IconData get eye;
  IconData get eyeSlash;
  IconData get user;
  IconData get heart;
  IconData get store;
  IconData get arrowDown;
  IconData get arrowUp;
  IconData get search;
  IconData get arrowRight;

  // * General
  IconData get showPassword;
  IconData get hidePassword;
  IconData get appBarBack;
  IconData get dropdownExpand;
  IconData get dropdownShrink;
  IconData get popUpClose;
  IconData get expansionTileExpand;
  IconData get expansionTileShrink;
  IconData get listTileSeeMore;
  IconData get horizontalMore;

  // * Bottom Navigation Bar Icons
  IconData get navBarHome;
  IconData get navBarStore;
  IconData get navBarFavorites;
  IconData get navBarCart;
  IconData get navBarProfile;
  IconData get navBarHomeActive;
  IconData get navBarStoreActive;
  IconData get navBarFavoritesActive;
  IconData get navBarCartActive;
  IconData get navBarProfileActive;

  // * Cart & Shop Functionality
  IconData get addToCart;
  IconData get filterButton;
  IconData get sortButton;

  // * Profile Section
  IconData get profileAccountSettings;
  IconData get profilePassword;
  IconData get profileAddresses;
  IconData get profileOrderDetails;
  IconData get profileNotifications;
  IconData get profileContact;
  IconData get profileHelp;
  IconData get profileLogOut;

  // * Profile Section Pages
  IconData get changePassword;
  IconData get myLocation;
  IconData get zoomIn;
  IconData get zoomOut;
  IconData get location;
  IconData get phone;
  IconData get email;
  IconData get sms;

  // Help
  IconData get helpDelivery;
  IconData get helpReturn;
  IconData get helpFAQ;
  IconData get helpGift;
  IconData get helpPrivacy;

  // * Cart
  IconData get cartRemove;
  IconData get cartRemoveSingular;
  IconData get cartAdd;
}
