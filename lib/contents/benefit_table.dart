import 'package:flutter/material.dart';

import '../data/models/benefit_feature.dart';
import '../widgets/table_cell_widget.dart';

class BenefitTable extends StatelessWidget {
  const BenefitTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final benefitFeatureList = [
      BenefitFeature("Akses semua kelas", true, true),
      BenefitFeature("Ujian", true, true),
      BenefitFeature("Kirim Submission", false, true),
    ];
    return Table(
      border: TableBorder.all(width: 0.5),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        const TableRow(children: [
          TableCellWidget(
            text: "Fitur Utama",
            isBold: true,
          ),
          TableCellWidget(
            text: "Uji Coba",
            isBold: true,
          ),
          TableCellWidget(
            text: "Langganan",
            isBold: true,
          ),
        ]),
        ...benefitFeatureList.map((benefitFeature) {
          return TableRow(
            children: [
              TableCellWidget(
                text: benefitFeature.feature,
              ),
              TableCellWidget(
                check: benefitFeature.freeBenefit,
              ),
              TableCellWidget(
                check: benefitFeature.paidBenefit,
              ),
            ],
          );
        }).toList(),
      ],
    );
  }
}
