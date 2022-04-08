import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

// String uuidFromObject(Object object) {
//   if (object is Map<String, Object>) {
//     final String typeName = object['__typename'];
//     final String id = object['id'].toString();
//     if (typeName != null && id != null) {
//       return <String>[typeName, id].join('/');
//     }
//   }
//   return null;
// }

ValueNotifier<GraphQLClient> clientFor({
  required String uri,
  required AuthLink authLink,
  required String subscriptionUri,
}) {


//   final AuthLink authLink = AuthLink(
//       getToken: () async => '',
// //       // getToken: () async =>  SharedPreferencesUtils.getToken != null ? '''JWT ${SharedPreferencesUtils.getToken}''' :'',
// //       getToken: () async =>  Provider.of<TokenProvider>(context,listen: false).getToken != null ?
// //       'JWT ${Provider.of<TokenProvider>(context,listen: false).getToken}'
// //        : '',
//     );
//
//     final Link link = authLink.concat(httpLink);


  // final AuthLink authLink1 =
  Link link = authLink.concat(HttpLink(uri));

  if (subscriptionUri != null) {
    final WebSocketLink websocketLink = WebSocketLink(
      subscriptionUri,
    );

    link = Link.split((request) => request.isSubscription, websocketLink, link);
  }

  return ValueNotifier<GraphQLClient>(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    ),
  );
}