// ignore_for_file: avoid_unused_constructor_parameters

import 'package:core/config/env.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';

class GraphQLRepository {
  GraphQLRepository(
      {
        required this.talker,
        required this.env,
      }) {

    final AuthLink authLink = AuthLink(
      getToken: () => env.supabaseKey,
    );

    HttpLink httpLink = HttpLink('${env.supabaseBaseUrl}/graphql/v1',
        defaultHeaders: {
          'apiKey': env.supabaseKey,
          'Content-Type': 'application/json; charset=utf-8'
        });

    Link link = authLink.concat(httpLink);

    graphqlClient =
        GraphQLClient(link: link, cache: GraphQLCache(store: InMemoryStore()));
  }

  late final GraphQLClient graphqlClient;
  final Talker talker;
  final EnvInterface env;
}


