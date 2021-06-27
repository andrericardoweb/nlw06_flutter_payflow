import 'package:flutter/material.dart';
import 'package:nlw06_flutter_payflow/shared/models/boleto_model.dart';
import 'package:nlw06_flutter_payflow/shared/themes/app_colors.dart';
import 'package:nlw06_flutter_payflow/shared/themes/app_text_style.dart';
import 'package:nlw06_flutter_payflow/shared/widgets/boleto_info/boleto_info_widget.dart';
import 'package:nlw06_flutter_payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nlw06_flutter_payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class MeusBoletosPage extends StatefulWidget {
  const MeusBoletosPage({Key? key}) : super(key: key);

  @override
  _MeusBoletosPageState createState() => _MeusBoletosPageState();
}

class _MeusBoletosPageState extends State<MeusBoletosPage> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            color: AppColors.primary,
            height: 40,
            width: double.maxFinite,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ValueListenableBuilder<List<BoletoModel>>(
              valueListenable: controller.boletosNotifier,
              builder: (_,boletos,__) => BoletoInfoWidget(size: boletos.length)
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                "Meus Boletos",
                style: AppTextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BoletoListWidget(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
