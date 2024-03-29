import 'package:departure_gita/provider/lang_provider/lang_provider.dart';
import 'package:departure_gita/provider/theme_provider/theme_provider.dart';
import 'package:departure_gita/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LangProvider langProvider = Provider.of<LangProvider>(context);
    return Drawer(
      backgroundColor: Colors.orange.shade300,
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                langProvider.changeLang();
              },
              icon: (langProvider.isLangModel.isLang == false)
                  ? Image(
                      color: (themeProvider.themeModel.isLight == false)
                          ? Colors.white
                          : Colors.black,
                      // width: 59,
                      image: const AssetImage(
                        'assets/img/hindi.png',
                      ),
                      height: 70,
                      width: 90,
                      fit: BoxFit.cover,
                    )
                  : Image(
                      color: (themeProvider.themeModel.isLight == false)
                          ? Colors.white
                          : Colors.black,
                      width: 59,
                      image: const AssetImage(
                        'assets/img/english.png',
                      ),
                      height: 100,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                themeProvider.changeTheme();
              },
              icon: (themeProvider.themeModel.isLight == false)
                  ? const Icon(
                      Icons.light_mode_outlined,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.dark_mode_outlined,
                    ),
            ),
          ),
          const SizedBox(height: 100),
          const Image(
            color: Colors.orange,
            image: AssetImage('assets/img/splash.png'),
          ),
        ],
      ),
    );
    //
    //
    //
    //
    // Drawer(
    //   child: ListView(
    //     children: [
    //       ListTile(
    //         leading: Card(
    //           elevation: 8,
    //           child: Container(
    //             width: double.infinity,
    //             child: IconButton(
    //               onPressed: () {
    //                 langProvider.changeLang();
    //               },
    //               icon: (langProvider.isLangModel.isLang == false)
    //                   ? Image(
    //                       color: (themeProvider.themeModel.isLight == false)
    //                           ? Colors.white
    //                           : Colors.black,
    //                       width: 59,
    //                       image: const AssetImage(
    //                         'assets/img/hindi.png',
    //                       ),
    //                       fit: BoxFit.cover,
    //                     )
    //                   : Image(
    //                       color: (themeProvider.themeModel.isLight == false)
    //                           ? Colors.white
    //                           : Colors.black,
    //                       width: 59,
    //                       image: const AssetImage(
    //                         'assets/img/english.png',
    //                       ),
    //                       fit: BoxFit.cover,
    //                     ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       ListTile(
    //         leading: Card(
    //           elevation: 8,
    //           child: Container(
    //             width: double.infinity,
    //             child: IconButton(
    //               onPressed: () {
    //                 themeProvider.changeTheme();
    //               },
    //               icon: (themeProvider.themeModel.isLight == false)
    //                   ? const Icon(
    //                       Icons.light_mode_outlined,
    //                     )
    //                   : const Icon(
    //                       Icons.dark_mode_outlined,
    //                     ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
