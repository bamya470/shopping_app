import 'package:flutter/material.dart';
import 'package:shop_app_flutter/cart_page.dart';
import 'package:shop_app_flutter/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  late String selectedSize;
  int currentPage=0;
  List <Widget> pages=[
    ProductList(),
    CartPage()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: Colors.yellow,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home,),
             label: ''
             ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart),
            label: '',
          ),
        ],
      ),
      
    );
  }
}
