import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import 'package:owaste/productscreen.dart';

class myController extends GetxController {
  var addToggle = false.obs;
  var addIcon = Icons.add.obs;
  var addBg = Color.fromARGB(255, 255, 162, 57).obs;
  void toggle() {
    addToggle.value = !addToggle.value;
    if(addToggle.value == false){
      addIcon.value = Icons.add;
      addBg.value = Color.fromARGB(255, 255, 162, 57);
    } else {
      addIcon.value = Icons.check;
      addBg.value = Color.fromARGB(255, 46, 202, 51);
    }
    update();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFC7D9FE),
        appBar: AppBar(
          title: IconButton(
              icon: const Icon(Icons.list,
              color: Color(0xFF20005E)),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFF7FAFF)),
              ),
            ),
          backgroundColor: const Color(0xFFC7D9FE),
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
          children: [Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF20005E),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold
                    ),
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(176, 10, 8, 14),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold
                      ),
                      contentPadding: EdgeInsets.all(5.0),
                      prefixIcon: const Icon(Icons.search,
                      size: 20,
                      color: Color.fromARGB(153, 36, 32, 44),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                      ),
                      suffix: GestureDetector(
                        onTap: (){
                          print("Hello");
                        },
                        child: Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF20005E),
                          ),
                          child: Center(
                            child: const Text(
                              "Search",
                              style: TextStyle(
                                color: Color(0xFFF7FAFF),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"
                              ),
                            
                            ),
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF7FAFF)
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(Icons.mic_none,),
                  onPressed: () {},
                  color: Color(0xFFF7FAFF),
                  iconSize: 25,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF20005E)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index){
                    return Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF20005E),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const CardText("50% OFF"),
                          const CardText("Food"),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFF7FAFF),
                                ),
                                child: const Center(
                                  child: Text("Order Now",
                                  style: TextStyle(
                                    color: Color(0xFF20005E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"
                                  ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Top Categories",
                    style: TextStyle(
                      color: Color.fromARGB(238, 20, 20, 24),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"
                    ),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text("See All",
                        style: TextStyle(
                          color: Color.fromARGB(205, 54, 51, 58),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          decoration: TextDecoration.underline,
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: const CategoryCard(
                        icon: Icons.local_dining,
                        title: 'Bread',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: const CategoryCard(
                        icon: Icons.fastfood,
                        title: 'Fast Food',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: const CategoryCard(
                        icon: Icons.eco,
                        title: 'Vegetables',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: const CategoryCard(
                        icon: Icons.shopping_basket,
                        title: 'Fruits',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("New Arrivals",
                    style: TextStyle(
                      color: Color.fromARGB(238, 20, 20, 24),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"
                    ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text("See All",
                        style: TextStyle(
                          color: Color.fromARGB(205, 54, 51, 58),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          decoration: TextDecoration.underline,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => 
                  ProductPage(
                  image: "assets/images/pizzatransparent.png",
                  title: "Pizza",
                  price: "150 DA",
                  oldPrice: "250 DA",
                  description: "Pizza is a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.) which is then baked at a high temperature, traditionally in a wood-fired oven.",
                ),
                )),
                child: ProductCard("assets/images/pizza.jpeg", "Pizza", "150 DA", "250 DA")),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => 
                  ProductPage(
                  image: "assets/images/baguettes.jpg",
                  title: "Bread",
                  price: "5 DA",
                  oldPrice: "10 DA",
                  description: "It's a bread and this is just a description so don't read it it has no meaning I'm just trying to make it long enough to fit some space.",
                ),
                )),
                child: ProductCard("assets/images/baguettes.jpg", "Bread", "5 DA", "10 DA")),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            color: Color(0xFFF7FAFF),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF001E5E),
                blurRadius: 10,
                offset: Offset(-2, -5),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(tabs:[
                GButton(icon: Icons.home, text: 'Home', iconColor: Color(0xFF20005E), textColor: Color(0xFF20005E),gap: 5,textStyle: TextStyle(fontFamily: "Poppins"),),
                GButton(icon: Icons.shopping_cart, text: 'Cart', iconColor: Color(0xFF20005E), textColor: Color(0xFF20005E),gap: 5,textStyle: TextStyle(fontFamily: "Poppins"),),
                GButton(icon: Icons.notifications, text: 'Notifications', iconColor: Color(0xFF20005E), textColor: Color(0xFF20005E), gap: 5,textStyle: TextStyle(fontFamily: "Poppins"),),
                GButton(icon: Icons.person, text: 'Profile', iconColor: Color(0xFF20005E), textColor: Color(0xFF20005E), gap: 5,textStyle: TextStyle(fontFamily: "Poppins"),),
              ],
              rippleColor: Color(0xFF20005E),
              hoverColor: Color(0xFF20005E),
              activeColor: Color(0xFF20005E),
              duration: Duration(milliseconds: 200),
              iconSize: 20,
              tabBackgroundColor: Color(0xFFF7FAFF),
              tabActiveBorder: Border.all(color: Color(0xFF20005E), width: 1),
              padding: EdgeInsets.all(10)
              ),
          ),
        ),
      );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String oldprice;

  const ProductCard(
    this.image,
    this.title,
    this.price,
    this.oldprice,
  );

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(myController());
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF20005E),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF20005E),
            blurRadius: 10,
            offset: const Offset(-2, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(image),
          const SizedBox(
            height: 5,
          ),
          CardText(title),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,
                style: const TextStyle(
                  color: Color(0xFFF7FAFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"
                ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Text(oldprice,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 234, 24, 24),
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"
                  ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF7FAFF),
                      ),
                      child: const Center(
                        child: Text("Order Now",
                        style: TextStyle(
                          color: Color(0xFF20005E),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"
                        ),
                        ),
                      ),
                    ),
                    Obx(
                      ()=> Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Controller.addBg.value,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Controller.toggle();
                            },
                            child: Icon(Controller.addIcon.value,
                            color: Colors.white,
                            size: 20,
                            ),
                          ),
                        ),
                      )
                      )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

class CardText extends StatelessWidget {
  final String text;

  const CardText(
  this.text);
  

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: Text(text,
      style: const TextStyle(
        color: Color(0xFFF7FAFF),
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
      ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const CategoryCard(
  {required this.title,
  required this.icon}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF20005E),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon,
              color: Color(0xFFF7FAFF),
              size: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title,
          style: const TextStyle(
            color: Color(0xFF20005E),
            fontSize: 12,
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins"
          ),
          )
        ],
      ),
    );
  }
}