import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

final scaffoldKeyProvider = Provider.family<GlobalKey<ScaffoldState>, String>(
    (ref, name) => GlobalKey<ScaffoldState>(debugLabel: name));
