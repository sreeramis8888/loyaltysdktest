/// Helper class for accessing KSSIA package assets
class LoyaltyAssets {
  /// Get the full path for an asset in the KSSIA package
  static String getAssetPath(String assetPath) {
    return 'packages/sdktest/$assetPath';
  }

  /// Common assets
  static String get loginPeople => getAssetPath('assets/loginPeople.png');

  /// Banner assets
  static String get banner => getAssetPath('assets/pngs/banner.png');

  /// Brand logos
  static String get puma => getAssetPath('assets/pngs/puma.png');
  static String get hm => getAssetPath('assets/pngs/hm.png');
  static String get lacoste => getAssetPath('assets/pngs/lacoste.png');
  static String get zara => getAssetPath('assets/pngs/zara.png');
  static String get levis => getAssetPath('assets/pngs/levis.png');
  static String get rolex => getAssetPath('assets/pngs/rolex.png');

  /// Category icons
  static String get footwear => getAssetPath('assets/pngs/footwear.png');
  static String get electronics => getAssetPath('assets/pngs/electronics.png');
  static String get cosmetics => getAssetPath('assets/pngs/cosmetics.png');
  static String get fashion => getAssetPath('assets/pngs/fashion.png');
} 