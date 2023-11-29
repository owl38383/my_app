import 'package:flutter/material.dart';
import 'package:my_app/common/services/pagination_service.dart';

class EventListViewModel extends PaginationService<EventDetailEntity> with ChangeNotifier  {

  @override
  Future<List<EventDetailEntity>> fetchData() {
    // TODO: implement fetchData
    throw UnimplementedError();
  }



}

class EventDetailEntity {
}
