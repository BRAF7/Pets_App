import 'package:flutter/material.dart';

import 'image_description.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2.5),
              ),
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
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2.5),
              ),
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
      ],
    );
  }
}