import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:workspace/features/home/data/models/workspace_model.dart';

class WorkSpaceRepo {
  Future<List<WorkSpace>> fetchWorkSpaces() async {
    final String response = await rootBundle.loadString('assets/data/workspaces.json');
    final List<dynamic> data = json.decode(response);
    return data.map((workspaceJson) => WorkSpace.fromJson(workspaceJson)).toList();
  }
}