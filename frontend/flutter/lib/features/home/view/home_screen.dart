import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solfeggio/ui/ui.dart';
import '../widgets/widgets.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const SingleChildScrollView(
//       child: Responsive(
//         mobile: MobileHomeScreen(),
//         desktop: DesktopHomeScreen(),
//       ),
//     );
//   }
// }

// class MobileHomeScreen extends StatelessWidget {
//   const MobileHomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       body: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(defaultPadding),
//             child: SidebarX(
//               theme: SidebarXTheme(
//                   margin: const EdgeInsets.all(defaultPadding),
//                   height:
//                       MediaQuery.of(context).size.height - defaultPadding / 2,
//                   decoration: BoxDecoration(
//                     color: canvasDarkColor,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   hoverColor: theme.primaryColor),
//               controller: SidebarXController(selectedIndex: 0, extended: true),
//               items: const [
//                 SidebarXItem(icon: Icons.home, label: 'Home'),
//                 SidebarXItem(icon: Icons.search, label: 'Search'),
//               ],
//             ),
//           )
//           // Your app screen body
//         ],
//       ),
//     );
//   }
// }

