import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nlw06_flutter_payflow/shared/themes/app_colors.dart';
import 'package:nlw06_flutter_payflow/shared/themes/app_text_style.dart';
import 'package:nlw06_flutter_payflow/shared/widgets/input_text/input_text_widget.dart';
import 'package:nlw06_flutter_payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class InsertBoletoPage extends StatelessWidget {
  const InsertBoletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(
          color: AppColors.input,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Text(
                "Preencha os dados do boleto",
                style: AppTextStyles.titleBoldHeading,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InputTextWidget(
              label: "Nome do boleto",
              icon: Icons.description_outlined,
              onChanged: (value) {},
            ),
            InputTextWidget(
              label: "Vencimento",
              icon: FontAwesomeIcons.timesCircle,
              onChanged: (value) {},
            ),
            InputTextWidget(
              label: "Valor",
              icon: FontAwesomeIcons.wallet,
              onChanged: (value) {},
            ),
            InputTextWidget(
              label: "Código",
              icon: FontAwesomeIcons.barcode,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: SetLabelButtons(
          primaryLabel: "Cancelar",
          primaryOnPressed: () {
            Navigator.pop(context);
          },
          enableSecondaryColor: true,
          secondaryLabel: "Cadastrar",
          secondaryOnPressed: () {}),
    );
  }
}
