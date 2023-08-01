import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DeliveryEvent {
  final String timestamp;
  final String description;

  DeliveryEvent({required this.timestamp, required this.description});
}

List<DeliveryEvent> deliveryEvents = [
  DeliveryEvent(timestamp: "10: AM 20/18", description: "تم استلام الطلب"),
  DeliveryEvent(timestamp: "10: AM 20/18", description: "استلام المندوب الطلب"),
  DeliveryEvent(timestamp: "10: AM 20/18", description: "الطلب في الطريق اليك"),
  DeliveryEvent(timestamp: "10: AM 20/18", description: "تم التوصيل"),
];

class DeliveryTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: deliveryEvents.length,
        itemBuilder: (context, index) {
          return TimelineTile(
              beforeLineStyle: LineStyle(thickness: 1),
              alignment: TimelineAlign.manual,
              lineXY: 1,
              isFirst: index == 0,
              isLast: index == deliveryEvents.length - 1,
              indicatorStyle: IndicatorStyle(
                width: 30,
                height: 30,
                indicator: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFFF2A007)),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0XFFF2A007)),
                    ),
                  ),
                ),
              ),
              startChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      deliveryEvents[index].timestamp,
                      style: TextStyle(
                          color: Color(0XFFF2A007), fontFamily: 'Fonts'),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 4,
                    ),
                    Text(
                      deliveryEvents[index].description,
                      style: TextStyle(fontFamily: 'Fonts'),
                    )
                  ],
                ),
              ));
        });
  }
}
