// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shop_ecommerce/core/controllers/theme_controller.dart';
// import 'package:shop_ecommerce/core/widgets/custom_app_bar.dart';

// class LoveHanaa extends StatefulWidget {
//   const LoveHanaa({super.key});

//   @override
//   State<LoveHanaa> createState() => _LoveHanaaState();
// }

// class _LoveHanaaState extends State<LoveHanaa>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animation;
//   bool _isPressed = false;
//   List<String> loveList = [];

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 300),
//     );
//     _animation =
//         Tween<double>(begin: 1.0, end: 1.3).animate(_animationController)
//           ..addListener(() {
//             setState(() {});
//           });
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   void _handleTap() {
//     setState(() {
//       _isPressed = !_isPressed;
//       if (_isPressed) {
//         _animationController.forward();
//         generateLoveList();
//       } else {
//         _animationController.reverse();
//       }
//     });
//   }

//   void generateLoveList() {
//     loveList = List<String>.generate(100, (index) => 'احبك يا هناء');
//   }

//   @override
//   Widget build(BuildContext context) {
//     ThemeController theme = Provider.of<ThemeController>(context);
//     return Scaffold(
//       appBar: CustomAppBar(
//           leading: const SizedBox(),
//           centerTitle: true,
//           theme: theme,
//           label: 'هناء'),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 20),
//           GestureDetector(
//             onTap: () {
//               _handleTap();
//             },
//             child: Transform.scale(
//               scale: _animation.value,
//               child: Container(
//                 width: 50,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: _isPressed ? Colors.red : Colors.green,
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Icon(
//                   Icons.favorite,
//                   color: _isPressed ? Colors.white : Colors.blue,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: ListView.builder(
//               itemCount: loveList.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(loveList[index]),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
