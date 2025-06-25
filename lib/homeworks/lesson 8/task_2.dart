final Set<String> iremember = {"int", "string", "double", "bool", "list", "map", "set", "object"};

final Set<String> allthetypes = {"int", "string", "double", "bool", "list", "map", "set", "object", "dynamic", "void", "null", "enum", };

void main() {
  print("Types in both sets: ${allthetypes.intersection(iremember)}");
  print("Types I do not remember: ${allthetypes.difference(iremember)}");
}