import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  var gallery = [
      "https://miro.medium.com/max/11400/1*lS9ZqdEGZrRiTcL1JUgt9w.jpeg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStAst5HaxThGW4wAwX7eWuR7gUSWNqserGLw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuKtdzmQZW5fee5abYr2iA20QTYOTEv3N-hA&usqp=CAU",

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Center(
        child: Swiper(
          autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return new Image.network(
              gallery[index],
            fit: BoxFit.contain,
          );
            
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
      ),
    ));
  }
}
