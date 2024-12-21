import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

final stationRepositoryProvider = Provider<StationRepositoryInterface>((ref) {
  final talker = ref.watch(loggingProvider);
  return StationRepository(talker: talker, env: Environment());
});

final defaultStationId = 'a7a36d7a-7d97-4c02-8ccf-4ff1cbe8b7d2';

class StationViewModel {
  final String? error;
  final bool isLoading;
  final List<Station> stations;
  final String userId;
  final Station? currentStation;
  final List<TeamUpdate> teamUpdates;

  StationViewModel({
    this.error,
    this.isLoading = false,
    this.stations = const [],
    required this.userId,
    this.currentStation,
    this.teamUpdates = const [],
  });
}


@Riverpod(keepAlive: true)
class StationController extends _$StationController {
  @override
  FutureOr<StationViewModel> build(String userId) async {
    return await load(userId);
  }

  FutureOr<StationViewModel> load(String userId) async {
    final stationRepository = ref.read(stationRepositoryProvider);
    final stationResult = await stationRepository.queryStations();
    return stationResult.fold(
          (l) {
        final viewModel = StationViewModel(userId: userId, error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
          (r) {
            final currentStation = r.firstWhere(
                (station) => station.id == defaultStationId,
                orElse: () => r.first);
        final viewModel = StationViewModel(
            userId: userId,
            stations: r,
            currentStation: currentStation);
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }
}
