// final publicApiClientProvider = Provider<PublicApiClient>(
//   (ref) => PublicApiClient(ref.watch(buildPublicDio)),
// );
//
// Provider<Dio> get buildPublicDio => Provider<Dio>(
//       (ref) => Dio(BaseOptions(baseUrl: ))
//         ..interceptors.addAll(
//           [
//             LoggyDioInterceptor(requestBody: true, requestHeader: true),
//             // ref.watch(headerInterceptorProvider),
//           ],
//         ),
//     );
