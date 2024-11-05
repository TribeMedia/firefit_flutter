import 'package:core/team/domain/models/shift_info.dart';
import 'package:core/team/domain/models/shift_status.dart';
import 'package:core/team/domain/models/shift_schedule.dart';
import 'package:core/team/domain/models/team_update.dart';
import 'package:core/team/domain/models/team_member.dart';
import 'package:flutter/material.dart';
import 'package:core/commerce/domain/models/team_order.dart';
import 'package:core/nutrition/domain/models/dietary_preferences.dart';

abstract class TeamService {
  Future<ShiftInfo> getCurrentShift();
  Future<void> updateShiftStatus(ShiftStatus status);
  Future<List<TeamUpdate>> getTeamUpdates();
  Future<void> addTeamUpdate(TeamUpdate update);
  Future<List<TeamMember>> getTeamMembers();
  Future<void> updateTeamMemberPreferences(
      String memberId, DietaryPreferences preferences);
  Future<List<ShiftSchedule>> getShiftSchedule(DateTimeRange range);
  Future<void> coordinateTeamOrder(TeamOrder order);
}
