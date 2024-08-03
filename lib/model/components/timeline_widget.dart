import 'package:flutter/material.dart';
import 'package:goljaam_education/model/api/generated/goljaam.models.swagger.dart';
import 'package:goljaam_education/model/components/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  final UserTaskDto dto;
  final Function()? doneOnClick;
  final Function()? descOnClick;

  const MyTimeLineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.eventCard,
      required this.dto,
      this.doneOnClick,
      this.descOnClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: doneOnClick,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100),
        indicatorStyle: IndicatorStyle(
            width: 40,
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
            iconStyle: IconStyle(
              iconData: Icons.done,
              color: isPast ? Colors.white : Colors.deepPurple.shade100,
            )),
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
