import 'package:normalize/utils.dart';

class AddNestedTypenameVisitor extends AddTypenameVisitor {
  @override
  visitOperationDefinitionNode(node) => node;
}

// DocumentNode gql(String document) => transform(
//   parseString(document),
//   [AddNestedTypenameVisitor()],
// );