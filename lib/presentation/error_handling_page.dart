// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:heroicons/heroicons.dart';
// import 'package:loading_overlay/loading_overlay.dart';
// import 'package:onetouchoffering_app/domain/auth/request/token_fcm_request_model.dart';
// import 'package:onetouchoffering_app/utils/dio_client/network_exceptions.dart';

// import 'package:url_launcher/url_launcher.dart';

// import '../../application/auth/auth_cubit.dart';
// import '../../injectable.dart';
// import 'package:onetouchoffering_app/utils/user_session.dart' as userSession;

// import '../../utils/theme/themes.dart';
// import '../auth/login_page.dart';

// // PENTING !!!!
// // Setiap menggunakan class ini, wajib mengirim argument => index 0 = Network Exceptions, index 1 = previous route, index 2 = arguments,

// class ErrorPage extends StatefulWidget {
//   const ErrorPage({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => _ErrorPageState();
// }

// class _ErrorPageState extends State<ErrorPage> {
//   final error = Get.arguments[0];
//   final pageBefore = Get.arguments[1];
//   final argumentsBefore = Get.arguments[2];
//   String nomorError = "6281327912422";
//   final logoutApi = getIt<AuthCubit>();
//   bool isLoading = false;

//   @override
//   void initState() {
//     if (NetworkExceptions.getErrorCode(error) == 401) {
//       setState(() {
//         isLoading = true;
//       });
//       var deviceToken = GetStorage().read(userSession.DeviceToken);
//       final _req = TokenFcmRequestModel(token: deviceToken);

//       logoutApi.postDeleteTokenFcmAPI(delFcmReq: _req);
//     }

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:
//           PreferredSize(preferredSize: Size(Get.width, 0), child: Container()),
//       body: Container(
//         width: Get.width,
//         color: Colors.white,
//         child: LoadingOverlay(
//           isLoading: isLoading,
//           color: Colors.white,
//           opacity: 0.5,
//           progressIndicator: const CircularProgressIndicator(
//             color: primaryColors,
//           ),
//           child: SafeArea(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const HeroIcon(
//                         HeroIcons.xCircle,
//                         color: primaryColors,
//                         size: 150,
//                       ),
//                       const SizedBox(
//                         height: 14,
//                       ),
//                       Text(
//                         "Terdapat Kesalahan",
//                         style: tBodyTextWithoutAtt.copyWith(
//                             fontSize: 21, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       // ------- Deskripsi Error ------- //
//                       Text(
//                         NetworkExceptions.getErrorMessage(error),
//                         style: tBodyTextNew.copyWith(fontSize: 14),
//                       ),
//                       // ------------------------------- //
//                       const SizedBox(
//                         height: 27,
//                       ),

//                       // ----- Button Coba Lagi ----- //
//                       GestureDetector(
//                         onTap: () {
//                           Get.offNamed(
//                             pageBefore,
//                             arguments: argumentsBefore,
//                           );
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 39, vertical: 12),
//                           decoration: const BoxDecoration(
//                               color: primaryColors,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(6))),
//                           child: Text(
//                             "Coba Lagi",
//                             style: tBodyTextNew.copyWith(
//                                 color: Colors.white,
//                                 fontSize: 15,
//                                 fontWeight: semiBold),
//                           ),
//                         ),
//                       ),
//                       // ---------------------------- //
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Text(
//                         "Jika masih mengalami kendala, hubungi IT kami \n melalui Whatsapp dibawah ini.",
//                         style: tBodyTextWithoutAtt,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(
//                         height: 9,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           toWhatsapp("https://wa.me/$nomorError");
//                         },
//                         child: Text(
//                           "https://wa.me/$nomorError",
//                           style: tBodyTextWithoutAtt.copyWith(
//                               color: primaryColors,
//                               fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 60,
//                       ),
//                     ],
//                   ),
//                 ),
//                 BlocProvider(
//                   create: (context) => logoutApi,
//                   child: BlocConsumer<AuthCubit, AuthState>(
//                     listener: (context, state) {
//                       state.maybeMap(
//                         orElse: () {},
//                         postDeleteTokenFcmLoading: (e) {},
//                         errorDioHandling: (e) {
//                           GetStorage().remove(userSession.DeviceToken);
//                           setState(() {
//                             isLoading = false;
//                           });

//                           Get.off(LoginPage());
//                         },
//                         tokenFcm: (result) {
//                           GetStorage().remove(userSession.DeviceToken);
//                           setState(() {
//                             isLoading = false;
//                           });

//                           Get.off(LoginPage());
//                         },
//                       );
//                     },
//                     builder: (context, state) {
//                       return state.maybeMap(
//                         orElse: () {
//                           return Container();
//                         },
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> toWhatsapp(String url,
//       {bool forcedWebView = false, bool enableJavaScript = false}) async {
//     final Uri link = Uri.parse(url);
//     await launchUrl(
//       link,
//       mode: LaunchMode.externalApplication,
//     );
//   }
// }
