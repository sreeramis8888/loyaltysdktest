import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sdktest/src/interface/home_page.dart';
import 'package:flutter/services.dart';

/// The main entry point for the KSSIA package.
/// This class provides the only public API that clients should use.
class LoyaltySdk {
  /// Initializes the KSSIA package.
  /// This must be called before using any other functionality.
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Ensure assets are loaded
    await _loadAssets();
  }

  /// Internal method to ensure assets are loaded
  static Future<void> _loadAssets() async {
    try {
      // List of all assets that need to be loaded
      final assets = [
        'assets/pngs/banner.png',
        'assets/pngs/puma.png',
        'assets/pngs/footwear.png',
        'assets/pngs/electronics.png',
        'assets/pngs/cosmetics.png',
        'assets/pngs/fashion.png',
        'assets/pngs/rolex.png',
        'assets/pngs/hm.png',
        'assets/pngs/lacoste.png',
        'assets/pngs/zara.png',
        'assets/pngs/levis.png',
      ];

      // Try loading each asset
      for (final asset in assets) {
        try {
          // Try loading with package prefix
          await rootBundle.load('packages/kssia/$asset');
          debugPrint('Successfully loaded asset: packages/kssia/$asset');
        } catch (e) {
          try {
            // Try loading without package prefix
            await rootBundle.load(asset);
            debugPrint('Successfully loaded asset: $asset');
          } catch (e2) {
            debugPrint('Error loading asset $asset: $e2');
          }
        }
      }

      // Also try loading the icons directory
      try {
        await rootBundle.load('packages/kssia/assets/icons/');
        debugPrint('Successfully loaded icons directory');
      } catch (e) {
        try {
          await rootBundle.load('assets/icons/');
          debugPrint('Successfully loaded icons directory');
        } catch (e2) {
          debugPrint('Error loading icons directory: $e2');
        }
      }
    } catch (e) {
      debugPrint('Error in _loadAssets: $e');
      // Don't rethrow the error as it might prevent the app from starting
      // Just log it and continue
    }
  }

  /// Navigates to the Loyalty Home screen.
  /// @param context The BuildContext from which to navigate
  /// @return Future that completes when navigation is done
  static Future<void> start(BuildContext context) async {
    // Navigate to the PhoneNumberScreen using explicit navigation
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProviderScope(
          child: HomePage(),
        ),
      ),
    );
  }


}