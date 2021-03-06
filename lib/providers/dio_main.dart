// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/model/currency.dart';
import 'package:notreprojet/providers/dio_provider.dart';
import 'package:notreprojet/screens/home/localwidget/cryptocard.dart';

class DioMain extends ConsumerWidget {
  const DioMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(testDioProvider)
        .map(data: _OnData, error: _OnError, loading: _OnLoading);
  }
}

Widget _OnLoading(loading) {
  return Container(
    color: Colors.green,
  );
}

Widget _OnError(error) {
  return Container(
    color: Colors.red,
  );
}

Widget _OnData(data) {
  final List<Currency> tab = data.value;

  if (tab == []) {
    return const Text('Impossible de charger les données');
  }
  return Wrap(
      alignment: WrapAlignment.spaceAround,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: tab.map((data) => CryptoCard(data: data)).toList());
}
