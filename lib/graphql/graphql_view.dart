import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/graphql_provider.dart';


/// Wraps the root application with the `graphql_flutter` client.
/// We use the cache for all state management.
class ClientProvider extends StatelessWidget {
  ClientProvider({
    required this.child,
    required String uri,
    required AuthLink authLink,
    required String subscriptionUri,
  }) : client = clientFor(
    authLink: authLink,
    uri: uri,
    subscriptionUri: subscriptionUri,
  );

  final Widget child;
  final ValueNotifier<GraphQLClient> client;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: child,
    );
  }
}