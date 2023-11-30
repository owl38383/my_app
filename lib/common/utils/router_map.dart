const routerMap = {
  "xc_video_device": "",
  "xc_transmission_device": "",
  "xc_repai_task_add": "",
  "xc_repai_task": "",
  "xc_repai_report": "",
  "xc_pump_house": "",
  "xc_person_position": "",
  "xc_patrol": "",
  "xc_maintenance_task": "",
  "xc_maintenance_report": "",
  "xc_fire_module": "",
  "xc_fire_device_module": "",
  "xc_fire_control_room": "",
  "xc_electrical_fire_monitoring": "",
  "xc_electrical_facilities": "",
  "xc_dtu_device": "",
  "xc_device_distribution": "/device",
  "xc_deluge_valve": "",
  "xc_component_device": "",
  "xc_check_task": "",
  "xc_check_report": "",
  "xc_building_module": "",
  "xc_automatic_sprinkler": "",
  "xc_automatic_fire_alarm": "",
  "xc_all_device": "",
};

String duGetRouterName(String navigation) {
  return routerMap[navigation] ?? '';
}
