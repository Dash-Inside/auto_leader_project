import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:auto_leader_project/src/presentation/style/text_style.dart';
import 'package:auto_leader_project/src/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Section for displaying schedule.
class InfoView extends StatelessWidget {
  /// Returns an instance of [InfoView]
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Расписание',
          style: getSubtitleTextStyle(context),
        ),
        const SizedBox(height: 32.0),
        const Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ScheduleCard(
              group: 'Дневная',
              time: 'Пн, Ср │ 12:00 - 14:00',
              date: '25 Апреля',
            ),
            // SizedBox(width: 32.0),
            _ScheduleCard(
              group: 'Вечерняя',
              time: 'Вт, Чт │ 18:00 - 20:00',
              date: '24 Апреля',
            ),
          ],
        ),
      ],
    );
  }
}

class _ScheduleCard extends StatelessWidget {
  const _ScheduleCard({
    required this.group,
    required this.time,
    required this.date,
  });

  final String group;
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: 250,
          width: 500,
          // height: MediaQuery.of(context).size.height / 2.5,
          // width: MediaQuery.of(context).size.width / 2.29,
          decoration: BoxDecoration(
            color: getBackgroundColor(context),
            borderRadius: const BorderRadius.all(
              Radius.circular(32.0),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  '$group группа',
                  style: getSubtitleTextStyle(context),
                ),
              ),
              Text(
                time,
                style: getRegularTextStyle(context),
              ),
              Text(
                'Набор до $date',
                style: getRegularTextStyle(context),
              ),
              const Spacer(),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
                child: const ButtonWidget(
                  text: 'Записаться',
                  isInCard: true,
                ),
              ),
            ],
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: getPrimaryColor(context),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(64.0),
              bottomRight: Radius.circular(160.0),
            ),
          ),
          child: const SizedBox(
            height: 80.0,
            width: 80.0,
          ),
        ),
      ],
    );
  }
}
