class XModel {
  int id;
  String name;

  XModel({this.name});

  Map<String, dynamic> toMap() => {"name": name};
}
