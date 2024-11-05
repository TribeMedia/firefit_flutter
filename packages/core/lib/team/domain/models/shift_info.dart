import 'package:core/team/domain/models/team_member.dart';
import 'package:core/team/domain/models/shift_status.dart';

class ShiftInfo {
  final ShiftStatus status;
  final DateTime nextShiftTime;
  final String stationId;
  final String shiftId;
  final List<TeamMember> onDutyMembers;

  const ShiftInfo({
    required this.status,
    required this.nextShiftTime,
    required this.stationId,
    required this.shiftId,
    required this.onDutyMembers,
  });
}
