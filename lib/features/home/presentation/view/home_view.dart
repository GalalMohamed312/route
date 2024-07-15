
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../core/widgets/custom_text.dart';



class HomeView extends StatelessWidget {

  const HomeView
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.black,
      body: RefreshIndicator(
        onRefresh: () async{
          print("object");
        },
        child:Padding(
          padding: EdgeInsets.only(right:20.sp,left:20.sp,top:20.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Image.asset(ImageAssets.logo,),
                SizedBox(height:16.h),
                _searchTextFormField(context: context),
                SizedBox(height:16.h),
                _listViewProducts(context: context),
              ],
            ),
          ),
        )
      ),
    );
  }
  Widget _searchTextFormField({required BuildContext context}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height:40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color:AppColors.white,
              border: Border.all(color: AppColors.primaryColor)
            ),
            child: TextFormField(
          
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },style: TextStyle(
                fontSize: AppSize.s16
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(AppPadding.p10),
                // border: InputBorder.none,
                enabledBorder: InputBorder.none, // Remove enabled border
                focusedBorder: InputBorder.none, // Remove focused border
                hintMaxLines: 1,
                // filled:true,
                fillColor: AppColors.red,
                prefixIcon:Icon(Icons.search,color:AppColors.primaryColor,size:24.h),
                hintText: "what do you search for?",
                labelStyle:TextStyle(
                  color: AppColors.lightGrey,
                  fontSize: AppSize.s14,
                ),
                hintStyle: TextStyle(
                  color: AppColors.gray,
                  fontSize: AppSize.s14,
                ),
              ),
              cursorColor: AppColors.primaryColor,
          
            ),
          ),
        ),
        SizedBox(width:20.w),
        InkWell(
          onTap:(){},
            child: Icon(Icons.shopping_cart_outlined,color:AppColors.primaryColor))
      ],
    );
  }
  Widget _listViewProducts({required BuildContext context}) {
    return  GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
      // mainAxisSpacing: 10,
      // crossAxisSpacing: 10,
      // childAspectRatio: .9,
      // crossAxisCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: AppPadding.p4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: AppColors.primaryColor,
                width: 0.4.w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right:AppPadding.p8,left:AppPadding.p8,bottom:AppPadding.p8),
                    // color: AppColors.lightLightGray,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(12.r),
                      child: Stack(
                        children:  [
                          Image.asset(
                            ImageAssets.pharmacy,
                            // fit: BoxFit.fill,
                            fit: BoxFit.cover,
                            // height: 100.0,
                            width: double.infinity,
                          ),
                          Positioned(
                            top: 8.0,
                            right: 0.0,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white,

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 4),
                                    blurRadius: 5.0,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.favorite_border,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.sp,left: 8.sp),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Augmantin",
                        // alignment: Alignment.centerLeft,
                        fontWeight: FontWeight.w400,
                        // color: customThemeColor(context: context),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                // Padding(
                //   padding: EdgeInsets.only(right: 8.sp,left: 8.sp),
                //   child: CustomText(
                //     text: controller.productModel[index].storage!,
                //     color: Colors.grey,
                //     alignment: Alignment.centerLeft,
                //   ),
                // ),
                // SizedBox(
                //   height: 8.h,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.sp,left: 8.sp),
                      child: CustomText(
                        text: "120",
                        color: AppColors.primaryColor,
                        // alignment: Alignment.centerLeft,
                        fontWeight: FontWeight.w700,
                        fontSize: AppSize.s24,
                      ),
                    ),
                    CustomText(
                      text:"egp",
                      fontSize: AppSize.s14,
                      color: AppColors.primaryColor,
                      // alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
                SizedBox(height: 8.h,),
              ],
            ),
          ),
        );
      },

    );
  }
}


class ShoeShopPage extends StatelessWidget {
  final List<Map<String, dynamic>> shoes = [
    {
      'name': 'Nike Air Jordan',
      'description': 'Nike shoes flexible for wo...',
      'price': 1200,
      'oldPrice': 2000,
      'rating': 4.6,
      'image': ImageAssets.pharmacy,
    },
    {
      'name': 'Nike Air Jordan',
      'description': 'Nike shoes flexible for wo...',
      'price': 1100,
      'oldPrice': 1500,
      'rating': 4.5,
      'image': ImageAssets.pharmacy,
    },
    // Add more shoes here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'What do you search for?',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // Expanded(
          //   child: GridView.builder(
          //     padding: EdgeInsets.all(10.0),
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       childAspectRatio: 0.75,
          //       mainAxisSpacing: 10.0,
          //       crossAxisSpacing: 10.0,
          //     ),
          //     itemCount: shoes.length,
          //     itemBuilder: (context, index) {
          //       final shoe = shoes[index];
          //       return Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Stack(
          //               children: [
          //                 Image.asset(
          //                   shoe['image'],
          //                   fit: BoxFit.cover,
          //                   height: 100.0,
          //                   width: double.infinity,
          //                 ),
          //                 Positioned(
          //                   top: 8.0,
          //                   right: 8.0,
          //                   child: Icon(
          //                     Icons.favorite_border,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 shoe['name'],
          //                 style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //               child: Text(shoe['description']),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //               child: Row(
          //                 children: [
          //                   Text(
          //                     'EGP ${shoe['price']}',
          //                     style: TextStyle(
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                   SizedBox(width: 5),
          //                   if (shoe['oldPrice'] != null)
          //                     Text(
          //                       'EGP ${shoe['oldPrice']}',
          //                       style: TextStyle(
          //                         color: Colors.grey,
          //                         decoration: TextDecoration.lineThrough,
          //                       ),
          //                     ),
          //                 ],
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Row(
          //                 children: [
          //                   Icon(
          //                     Icons.star,
          //                     color: Colors.amber,
          //                     size: 16.0,
          //                   ),
          //                   SizedBox(width: 4.0),
          //                   Text(shoe['rating'].toString()),
          //                 ],
          //               ),
          //             ),
          //             Spacer(),
          //             Center(
          //               child: IconButton(
          //                 icon: Icon(Icons.add_circle_outline),
          //                 onPressed: () {},
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}


//
// class ShoeShopPage extends StatelessWidget {
//   final List<Map<String, dynamic>> shoes = [
//     {
//       'name': 'Nike Air Jordan',
//       'description': 'Nike shoes flexible for wo...',
//       'price': 1200,
//       'oldPrice': 2000,
//       'rating': 4.6,
//       'image': 'assets/shoe1.png',
//     },
//     {
//       'name': 'Nike Air Jordan',
//       'description': 'Nike shoes flexible for wo...',
//       'price': 1100,
//       'oldPrice': 1500,
//       'rating': 4.5,
//       'image': 'assets/shoe2.png',
//     },
//     // Add more shoes here
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Route'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.search),
//                 hintText: 'What do you search for?',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide.none,
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey[200],
//               ),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               padding: EdgeInsets.all(10.0),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 0.75,
//                 mainAxisSpacing: 10.0,
//                 crossAxisSpacing: 10.0,
//               ),
//               itemCount: shoes.length,
//               itemBuilder: (context, index) {
//                 final shoe = shoes[index];
//                 return Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Stack(
//                         children: [
//                           Image.asset(
//                             shoe['image'],
//                             fit: BoxFit.cover,
//                             height: 100.0,
//                             width: double.infinity,
//                           ),
//                           Positioned(
//                             top: 8.0,
//                             right: 8.0,
//                             child: Icon(
//                               Icons.favorite_border,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           shoe['name'],
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Text(shoe['description']),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Row(
//                           children: [
//                             Text(
//                               'EGP ${shoe['price']}',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             if (shoe['oldPrice'] != null)
//                               Text(
//                                 'EGP ${shoe['oldPrice']}',
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   decoration: TextDecoration.lineThrough,
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                               size: 16.0,
//                             ),
//                             SizedBox(width: 4.0),
//                             Text(shoe['rating'].toString()),
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       Center(
//                         child: IconButton(
//                           icon: Icon(Icons.add_circle_outline),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
