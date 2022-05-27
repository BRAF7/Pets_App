import 'package:flutter/material.dart';

import 'image_description.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          // Con esta propiedad modificamos la forma de nuestro card
          // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          // Con esta propiedad agregamos margen a nuestro Card
          // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
          margin: EdgeInsets.all(5),

          // Con esta propiedad agregamos elevación a nuestro card
          // La sombra que tiene el Card aumentará
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              padding: const EdgeInsets.all(5.0),
            
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDescription(
                                'https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg',
                                'Mmhhh Chemsss'),
                          ),
                        );
                      },
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDescription(
                                'https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg',
                                'Mmhhh Chemsss'),
                          ),
                        );
                      },
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDescription(
                                'https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg',
                                'Mmhhh Chemsss'),
                          ),
                        );
                      },
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          // Con esta propiedad modificamos la forma de nuestro card
          // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          // Con esta propiedad agregamos margen a nuestro Card
          // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
          margin: EdgeInsets.all(5),

          // Con esta propiedad agregamos elevación a nuestro card
          // La sombra que tiene el Card aumentará
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDescription(
                                'https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg',
                                'Mmhhh Chemsss'),
                          ),
                        );
                      },
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDescription(
                                'https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg',
                                'Mmhhh Chemsss'),
                          ),
                        );
                      },
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDescription(
                                'https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg',
                                'Mmhhh Chemsss'),
                          ),
                        );
                      },
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
