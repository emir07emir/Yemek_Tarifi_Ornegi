import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double ekranGenisligi=ekranBilgisi.size.width;//final değerin değişmemesini sağlıyor.
    final double ekranYuksekligi=ekranBilgisi.size.height;


    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Yemek Tarifi',style:
          TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            )
          ),
          centerTitle: false,
          backgroundColor: Colors.orange, // Arka plan rengi
          elevation: 1, // Gölgelendirme
        ),
        body:SingleChildScrollView(//scroll eklemek için kullanılır.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: ekranGenisligi,
          
                  child: Image.asset("resimler/yemekresim.jpeg")
              ),
              Row(
                children: [
                  Expanded(flex:50,child: Container(
                    height: ekranYuksekligi/14,
                    color: Colors.orange,
                    child: Center(child: GestureDetector(
                      onTap: (){
                        print("yorum yapıldı");
                      },
                      child: Text("Yorum Yap",style:
                      TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          ),
                    )
                      ),
                    )
                  ),
                  Expanded(
                      flex:50, child: Container(
                    height: ekranYuksekligi/14,
                    color: Colors.red,
                    child: Center(
                      child: GestureDetector(
                        onTap: (){
                          print("Beğeni yapıldı");
                        },
                        child: Text("Beğen",style:TextStyle(
                          fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                    ),
                    )
                  ),
                ],
              ),
          
              Text("Köfte",style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                fontSize: ekranYuksekligi/35
              ),
              ),
              Padding(
                padding:EdgeInsets.all(ekranGenisligi/100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Izgara Üzerinde Pişirmeye Uygun",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("8 Ağustos",textAlign: TextAlign.left,
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
          
          
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: ekranYuksekligi/95,left: ekranYuksekligi/100,right: ekranYuksekligi/100,bottom: ekranYuksekligi/90),
                child: Text("""Köfte yapımı için önce kıymayı derin bir kaba alarak işe başlayın. Üzerine rendelenmiş bir soğan, ezilmiş sarımsak ve bir yumurtayı ekleyin. Galeta unu, tuz, karabiber ve dilediğiniz baharatları da karışıma katın. Eğer isterseniz ince doğranmış maydanoz da lezzet katacaktır. Tüm malzemeleri güzelce yoğurduktan sonra karışımı buzdolabında en az 30 dakika dinlendirin. Dinlenen harçtan ceviz büyüklüğünde parçalar alıp avucunuzda yassı köfteler haline getirin. Hazırladığınız köfteleri kızgın tavada ya da ızgarada her iki yüzü güzelce kızarana kadar pişirin."""),
              )
            ],
          ),
        )
    );
  }
}



