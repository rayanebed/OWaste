import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myControllerproduct extends GetxController {
  var counterPcs = 1.obs;
  var added = false.obs;
  var cartbutton = "Add to cart".obs;
  var cartcolor = const Color(0xFF20005E).obs;
  var carticon = Icons.shopping_bag_outlined.obs;
  
  void cartadd() {
    added.value = !added.value;
    if(added.value == true){
      cartbutton.value = "Added";
      cartcolor.value = Color.fromARGB(248, 18, 190, 18);
      carticon.value = Icons.check;
    }else{
      cartbutton.value = "Add to cart";
      cartcolor.value = const Color(0xFF20005E);
      carticon.value = Icons.shopping_bag_outlined;
    }
    update();
  }

  void increment() {
    counterPcs.value++;
    update();
  }

  void decrement() {
    counterPcs.value--;
    if(counterPcs.value < 1) {
      counterPcs.value = 1;
    }
    update();
  }
}

class ProductPage extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String oldPrice;
  final String description;

  const ProductPage({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(myControllerproduct()); // Create and put controller

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: const Color(0xFFC7D9FE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded,
              color: Color(0xFF20005E)),
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFF7FAFF)),
              ),
            ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart,
              color: Color(0xFF20005E)),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFF7FAFF)),
              )
            ),
            const SizedBox(
              width: 10,
            )
          ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset(image, fit: BoxFit.cover,),
              const SizedBox(
                height: 10,
              ),
                Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                decoration: const BoxDecoration(
                  color: Color(0xFFF7FAFF),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF001E5E),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Poppins"),),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                              color: const Color(0xFFC7D9FE),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.decrement();
                                  },
                                  child: const Icon(Icons.remove, size: 15,color: Color(0xFF20005E),),
                                ),
                                const SizedBox(width: 10),
                                Obx(() =>
                                  Text(controller.counterPcs.value.toString(), style: TextStyle(fontSize: 18, fontFamily: "Poppins", color: Color(0xFF20005E)))
                                ),
                                const SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    controller.increment();
                                  },
                                  child: const Icon(Icons.add, size: 15,color: Color(0xFF20005E),),
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Color(0xFFFFD505),size: 18,),
                            Icon(Icons.star, color: Color(0xFFFFD505),size: 18,),
                            Icon(Icons.star, color: Color(0xFFFFD505),size: 18,),
                            Icon(Icons.star, color: Color(0xFFFFD505),size: 18),
                            Icon(Icons.star, color: Color(0xFFFFD505),size: 18,),
                          ]
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("5.0", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "Poppins"),),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("(80)", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, fontFamily: "Poppins"),),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Savannah Pizzeria", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: "Poppins"),),
                        SizedBox(
                          width: 80,
                          child: ElevatedButton(onPressed: (){
                          
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF20005E)),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0)),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.messenger, color: Colors.white, size: 15,),
                              Text("Chat", style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: "Poppins"),)
                            ]
                          )
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(description, style: TextStyle(fontSize: 12, fontFamily: "Poppins", color: Color.fromARGB(157, 0, 0, 0)),),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ratings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Poppins")),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFF7FAFF),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, -4),
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                    child: Text("Total Price:",
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                    child: Text(
                      "150 DA",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                    ),
                  ),
                ],
              ),
            ),
            Obx(() => GestureDetector(
              onTap: () {
                controller.cartadd();
              },
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  decoration: BoxDecoration(
                    color: controller.cartcolor.value,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, -4),
                      )
                    ]
                  ),
                  width: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(controller.carticon.value, color: Colors.white,),
                      Text(controller.cartbutton.value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "Poppins"),)
                    ],
                  ),
              ),
            )
            ),
          ],
      )
        ),
    );
  }
}