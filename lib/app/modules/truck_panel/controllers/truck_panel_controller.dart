
import 'package:get/get.dart';


class TruckPanelController extends GetxController {
  //TODO: Implement TruckPanelController
  //   Query dbRef = FirebaseDatabase.instance.ref().child('Report');
  // DatabaseReference reference = FirebaseDatabase.instance.ref().child('Report');

  // // final count = 0.obs;
  // // @override
  // // void onInit() {
  // //   super.onInit();
  // // }

  // // @override
  // // void onReady() {
  // //   super.onReady();
  // // }

  // // @override
  // // void onClose() {
  // //   super.onClose();
  // // }

  // // void increment() => count.value++;
  // ReportModel? reportModel;
  // getFromDB(String reportType) {
  //   DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
  //   log("Working");

  //   databaseReference.child(reportType).get().then(
  //     (value) {
  //       reportModel = ReportModel(
  //         activeTripcount:
  //             int.parse(value.child("activeTripcount").value.toString()),
  //         shift2Tripcount:
  //             int.parse(value.child("shift2Tripcount").value.toString()),
  //         totalProduction:
  //             double.parse(value.child("totalProduction").value.toString()),
  //         shift1Tripcount:
  //             int.parse(value.child("shift1Tripcount").value.toString()),
  //         shift3Tripcount:
  //             int.parse(value.child("shift3Tripcount").value.toString()),
  //         expectedProduction:
  //             double.parse(value.child("expectedProduction").value.toString()),
  //       );
  //       print(value.child("shift2Tripcount").value);
  //     },
  //   );
  //   return ;
  // }
}



 
// class FetchData extends StatefulWidget {
//   const FetchData({Key? key}) : super(key: key);
 
//   @override
//   State<FetchData> createState() => _FetchDataState();
// }
 
// class _FetchDataState extends State<FetchData> {
  

  
//   Widget listItem({required Map student}) {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       padding: const EdgeInsets.all(10),
//       height: 110,
//       color: Colors.amberAccent,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             student['name'],
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//             student['age'],
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//             student['salary'],
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                 //  Navigator.push(context, MaterialPageRoute(builder: (_) => UpdateRecord(studentKey: student['key'])));
//                 },
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.edit,
//                       color: Theme.of(context).primaryColor,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 width: 6,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   reference.child(student['key']).remove();
//                 },
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.delete,
//                       color: Colors.red[700],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Fetching data'),
//       ),
//       body: SizedBox(
//         height: double.infinity,
//         child: FirebaseAnimatedList(
//           query: dbRef,
//           itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
 
//             Map<dynamic,dynamic> student ={};
//             // print(student);
//             // student['key'] = snapshot.key;
//             log(snapshot.value.toString());
 
//             // return listItem(student: student);
//             return Container(
//               height: 250,
//               color: Colors.amber,
//               child:Center(child: Text(snapshot.value.toString()),),
//             );
 
//           },
//         ),
//       )
//     );
//   }
// }