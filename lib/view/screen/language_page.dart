// // import 'package:departure_gita/provider/lang_provider/lang_provider.dart';
// // import 'package:departure_gita/provider/theme_provider/theme_provider.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// //
// // class language_page extends StatefulWidget {
// //   const language_page({super.key});
// //
// //   @override
// //   State<language_page> createState() => _language_pageState();
// // }
// //
// // class _language_pageState extends State<language_page> {
// //   @override
// //   Widget build(BuildContext context) {
// //     ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
// //     LangProvider langProvider = Provider.of<LangProvider>(context);
// //     return ListView(
// //       children: [
// //         ListTile(
// //           trailing: Card(
// //             elevation: 10,
// //             child: IconButton(
// //               onPressed: () {
// //                 langProvider.changeLang();
// //               },
// //               icon: (langProvider.isLangModel.isLang == false)
// //                   ? Image(
// //                       color: (themeProvider.themeModel.isLight == false)
// //                           ? Colors.white
// //                           : Colors.black,
// //                       width: 59,
// //                       image: const AssetImage(
// //                         'assets/img/hindi.png',
// //                       ),
// //                     )
// //                   : Image(
// //                       color: (themeProvider.themeModel.isLight == false)
// //                           ? Colors.white
// //                           : Colors.black,
// //                       width: 59,
// //                       image: const AssetImage(
// //                         'assets/img/en.png',
// //                       ),
// //                     ),
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
//
// import 'package:departure_gita/provider/lang_provider/lang_provider.dart';
// import 'package:departure_gita/provider/theme_provider/theme_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class Navbar extends StatefulWidget {
//   const Navbar({super.key});
//
//   @override
//   State<Navbar> createState() => _NavbarState();
// }
//
// class _NavbarState extends State<Navbar> {
//   @override
//   Widget build(BuildContext context) {
//     ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
//     LangProvider langProvider = Provider.of<LangProvider>(context);
//     return ListView(
//       children: [
//         ListTile(
//           trailing: Card(
//             elevation: 10,
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
//                     )
//                   : Image(
//                       color: (themeProvider.themeModel.isLight == false)
//                           ? Colors.white
//                           : Colors.black,
//                       width: 59,
//                       image: const AssetImage(
//                         'assets/img/en.png',
//                       ),
//                     ),
//             ),
//           ),
//         ),
//         ListTile(
//           trailing: Card(
//             elevation: 10,
//             child: IconButton(
//               onPressed: () {
//                 themeProvider.changeTheme();
//               },
//               icon: (themeProvider.themeModel.isLight == false)
//                   ? const Icon(
//                       Icons.light_mode,
//                     )
//                   : const Icon(
//                       Icons.dark_mode,
//                     ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
