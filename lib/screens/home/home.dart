import 'package:coffee/models/product.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/product_list_card/product_list_card.dart';
import '../../component/search_text_field/search_text_field.dart';
import '../../models/category.dart';
import '../cart/cart_icon.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    //final cartProducts = ref.watch(cartProvider);

    //final List<String> prdIdsInCart = cartProducts.map((p){return p.id;}).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CafeApp',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        actions: [CartIcon()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: AppColors.secondaryCreamColor,
              elevation: 2,
              shadowColor: AppColors.primaryBrownColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                primary: true, // henüz içinde ki elemanlar sayfaya küçük geliyor olsada yine de scroll efecti yapar
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                physics: const BouncingScrollPhysics(), // sürükleme bitince hala devam ediyor efekti verir
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // yukarı doğru kaymaya başladığı anda keyboard kapansın
                child: Row(
                  children: pibs.map((p) {
                    return p;
                  }).toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: const Text("Most Preferred", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  Product p = products[index];
                  return ProductListCard(product: p,);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
