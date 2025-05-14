import 'package:flutter/material.dart';
import 'package:sdktest/src/public/loyalty_assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background for top portion
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF2D4356),
                  Color(0xFF435B66),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          // Main content with white background and top curve
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 100, bottom: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Puma Banner
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          LoyaltyAssets.banner,
                          height: 140,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Coupons
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Coupons',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF3E0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'View all Coupons',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF8D6E63),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Coupon Cards
                    SizedBox(
                      height: 110,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        children: [
                          _couponCard(
                              'GIFT VOUCHER',
                              '10% discount on your next order',
                              '1,000 Points',
                              Colors.green),
                          _couponCard(
                              'GIFT VOUCHER',
                              'Free Entertainment Voucher worth RO20',
                              '2,500 Points',
                              Colors.blue),
                          _couponCard(
                              'GIFT VOUCHER',
                              'Recharge with Khedmah 3 times and get RO 5!',
                              '2,000 Points',
                              Colors.purple),
                        ],
                      ),
                    ),

                    // Brands
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Brands',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF3E0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'View all Brands',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF8D6E63),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Brand pngs
                    SizedBox(
                      height: 60,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        children: [
                          _brandLogo(LoyaltyAssets.levis, 'Levi\'s'),
                          _brandLogo(LoyaltyAssets.zara, 'ZARA'),
                          _brandLogo(LoyaltyAssets.lacoste, 'LACOSTE'),
                          _brandLogo(LoyaltyAssets.hm, 'H&M'),
                          _brandLogo(LoyaltyAssets.rolex, 'ROLEX'),
                        ],
                      ),
                    ),

                    // Brand Offers
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Brand Offers',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF3E0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'View all Brand offers',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF8D6E63),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Brand Offer Cards
                    SizedBox(
                      height: 140,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        children: [
                          _brandOfferCard(
                              LoyaltyAssets.puma,
                              'Puma Shoes -Sale',
                              'Men\'s & Dri-FIT Fleece Basketball Shorts',
                              '20 %'),
                          _brandOfferCard(
                              LoyaltyAssets.levis,
                              'Levi\'s Pants -Sale',
                              'Men\'s & Dri-FIT Fleece Basketball Shorts',
                              '20 %'),
                          _brandOfferCard(
                              LoyaltyAssets.hm,
                              'H&M',
                              'Men\'s & Dri-FIT Fleece Basketball Shorts',
                              '20 %'),
                        ],
                      ),
                    ),

                    // Categories
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Categories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF3E0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'View all Categories',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF8D6E63),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Category Icons
                    SizedBox(
                      height: 100,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        children: [
                          _categoryItem(LoyaltyAssets.fashion, 'Fashion'),
                          _categoryItem(LoyaltyAssets.cosmetics, 'Cosmetics'),
                          _categoryItem(
                              LoyaltyAssets.electronics, 'Electronics'),
                          _categoryItem(LoyaltyAssets.footwear, 'Footwears'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Welcome Card
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Welcome',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          SizedBox(height: 4),
                          Text('Abdul Wahaab !',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF8BC34A),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('Khedmah',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Platinum status
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.shield,
                            size: 28, color: Color(0xFF455A64)),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Platinum',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 2),
                          Text('1,200 Points',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              )),
                        ],
                      ),
                      const Spacer(),
                      Icon(Icons.arrow_forward_ios,
                          size: 14, color: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Progress bar
                  LinearProgressIndicator(
                    value: 1200 / 5000,
                    backgroundColor: Colors.grey[200],
                    color: Color(0xFF7E57C2),
                  ),
                  const SizedBox(height: 4),
                  const Text('3800 Points to PLATINUM',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
          ),
          // Status bar area
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('9:41 AM',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Icon(Icons.wifi, color: Colors.white, size: 16),
                      SizedBox(width: 5),
                      Text('100%',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full, color: Colors.white, size: 16),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _bottomNavItem(Icons.home, 'Home', true),
                  _bottomNavItem(Icons.local_offer, 'Offers', false),
                  _bottomNavItem(Icons.history, 'History', false),
                  _bottomNavItem(Icons.support_agent, 'Support', false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _couponCard(String title, String desc, String points, Color color) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              )),
          const SizedBox(height: 8),
          Text(desc, style: const TextStyle(fontSize: 11)),
          const Spacer(),
          Text(points,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              )),
        ],
      ),
    );
  }

  Widget _brandLogo(String imagePath, String name) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      // In a real app, you would use Image.asset, but for demonstration:
      child: Image.asset(
        imagePath,
        width: 48,
        height: 48,
      ),
    );
  }

  Widget _brandOfferCard(
      String logo, String title, String desc, String percent) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text('OFFER',
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              ),
              const Spacer(),
              // In a real app, you would use Image.asset instead
              Image.asset(
                logo,
                width: 16,
                height: 16,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              )),
          Text(desc, style: const TextStyle(fontSize: 10, color: Colors.grey)),
          Text('For all members',
              style: const TextStyle(fontSize: 10, color: Colors.grey)),
          const Spacer(),
          Row(
            children: [
              Text(percent,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
              Spacer(),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_forward, size: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _categoryItem(String imagePath, String label) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: _getCategoryColor(label),
              shape: BoxShape.circle,
            ),
            // In a real app, you would use Image.asset
            child: Center(
              child: Icon(
                _getCategoryIcon(label),
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Fashion':
        return Icons.checkroom;
      case 'Cosmetics':
        return Icons.spa;
      case 'Electronics':
        return Icons.devices;
      case 'Footwears':
        return Icons.directions_run;
      default:
        return Icons.category;
    }
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Fashion':
        return Color(0xFFFFD54F);
      case 'Cosmetics':
        return Color(0xFFF48FB1);
      case 'Electronics':
        return Color(0xFF81C784);
      case 'Footwears':
        return Color(0xFF4FC3F7);
      default:
        return Colors.grey;
    }
  }
}

Widget _bottomNavItem(IconData icon, String label, bool isSelected) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: isSelected ? Color(0xFFFF9800) : Colors.grey,
        size: 24,
      ),
      Text(
        label,
        style: TextStyle(
          color: isSelected ? Color(0xFFFF9800) : Colors.grey,
          fontSize: 12,
        ),
      ),
    ],
  );
}
