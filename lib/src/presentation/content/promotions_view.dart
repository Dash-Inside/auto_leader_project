import 'package:flutter/material.dart';

/// Section for displaying all possible promotions.
class PromotionsView extends StatelessWidget {
  /// Returns an instance of [PromotionsView].
  const PromotionsView({super.key});

  static const List<_PromotionData> _data = [
    _PromotionData(
      title: 'Скидки студентам',
      description: 'Мамам в декрете скидка 2000 рублей. Всем студентам и учащимся скидка в размере 1 000 рублей от стоимости теоретического курса',
    ),
    _PromotionData(
      title: 'Приведи друга',
      description: 'Приходи сам и приводи своего друга или сразу всех! И мы вернем Вам по 1 000 рублей за каждого.',
    ),
    _PromotionData(
      title: 'День Рождения!',
      description: 'В честь вашего Дня Рождения, мы дарим Вам скидку на обучение в размере 2000 рублей. ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(_data.length, (index) {
          return SizedBox(
            width: double.infinity,
            height: 200.0,
            child: _PromotionRow(
              data: _data.elementAt(index),
              isRight: index.isEven,
            ),
          );
        }),
      ],
    );
  }
}

class _PromotionRow extends StatelessWidget {
  const _PromotionRow({
    required this.isRight,
    required this.data,
  });

  final _PromotionData data;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      return Expanded(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
          ),
          child: const SizedBox.expand(),
        ),
      );
    }

    Widget buildContent() {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.title),
            const SizedBox(height: 16.0),
            Text(data.description),
          ],
        ),
      );
    }

    return Row(
      children: isRight ? [buildContent(), buildImage()] : [buildImage(), buildContent()],
    );
  }
}

class _PromotionData {
  const _PromotionData({
    required this.title,
    required this.description,
    this.networkImage,
  });

  final String title;
  final String description;
  final String? networkImage;
}
