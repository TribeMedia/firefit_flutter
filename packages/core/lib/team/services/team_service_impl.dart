import 'package:core/commerce/domain/models/team_order.dart';
import 'package:core/nutrition/domain/models/dietary_preferences.dart';
import 'package:core/team/domain/models/shift_info.dart';
import 'package:core/team/domain/models/shift_schedule.dart';
import 'package:core/team/domain/models/shift_status.dart';
import 'package:core/team/domain/models/team_member.dart';
import 'package:core/team/domain/models/team_update.dart';
import 'package:core/team/services/team_service.dart';
import 'package:flutter/material.dart' show DateTimeRange;

class TeamServiceImpl extends TeamService {
  @override
  Future<List<TeamUpdate>> getTeamUpdates() async {
    return [];
  }

  @override
  Future<void> addTeamUpdate(TeamUpdate update) {
    // TODO: implement addTeamUpdate
    throw UnimplementedError();
  }

  @override
  Future<void> coordinateTeamOrder(TeamOrder order) {
    // TODO: implement coordinateTeamOrder
    throw UnimplementedError();
  }

  @override
  Future<ShiftInfo> getCurrentShift() {
    // TODO: implement getCurrentShift
    throw UnimplementedError();
  }

  @override
  Future<List<ShiftSchedule>> getShiftSchedule(DateTimeRange range) {
    // TODO: implement getShiftSchedule
    throw UnimplementedError();
  }

  @override
  Future<List<TeamMember>> getTeamMembers() {
    // TODO: implement getTeamMembers
    throw UnimplementedError();
  }

  @override
  Future<void> updateShiftStatus(ShiftStatus status) {
    // TODO: implement updateShiftStatus
    throw UnimplementedError();
  }

  @override
  Future<void> updateTeamMemberPreferences(
      String memberId, DietaryPreferences preferences) {
    // TODO: implement updateTeamMemberPreferences
    throw UnimplementedError();
  }
}
