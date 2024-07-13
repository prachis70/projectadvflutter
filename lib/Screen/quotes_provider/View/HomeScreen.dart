// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
//
// class homepage extends StatelessWidget {
//   const homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     quotedata homeproviderTrue=Provider.of(context,listen: true);
//     quotedata homeproviderFalse=Provider.of(context,listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Quote"),
//       ),
//       body: ListView.builder(
//         itemCount: homeproviderTrue.homeprovider.length,
//         itemBuilder: (context, index) => Card(child: ListTile(
//           leading: Text(index.toString()),
//           title: Text(homeproviderTrue.homeprovider[index]['quote']),
//           subtitle: Text(homeproviderTrue.homeprovider[index]['author']),
//           trailing: IconButton(onPressed: () {
//             homeproviderTrue.removeData(index);
//
//           },icon: Icon(Icons.delete),),
//
//         ),),),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class QuoteData {
// }
//
// class quotedata {
//   void removeData(int index) {}
// }