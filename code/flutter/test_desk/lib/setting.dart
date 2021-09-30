import 'package:flutter/cupertino.dart';

goto(context, path) => Navigator.push(context, path);
gotoArgs(context, path, args) =>
    Navigator.pushNamed(context, path, arguments: args);
gotoReplace(context, path) => Navigator.pushReplacementNamed(context, path);
backto(context) => Navigator.pop(context);
