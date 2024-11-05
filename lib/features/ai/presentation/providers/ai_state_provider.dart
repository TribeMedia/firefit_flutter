import 'package:hooks_riverpod/hooks_riverpod.dart';

// Enums for AI Assistant states
enum AiProcessingState { idle, listening, processing, speaking, error }

enum AiMode { chat, voiceCommand, mealPlanning, nutritionAnalysis, emergency }

// Model for AI messages
class AiMessage {
  final String id;
  final String content;
  final bool isUser;
  final DateTime timestamp;
  final Map<String, dynamic>? metadata;

  const AiMessage({
    required this.id,
    required this.content,
    required this.isUser,
    required this.timestamp,
    this.metadata,
  });
}

// Main AI State class
class AiState {
  final AiProcessingState processingState;
  final AiMode currentMode;
  final List<AiMessage> messageHistory;
  final String? lastError;
  final bool isMinimized;
  final Map<String, dynamic>? contextData;
  final bool hasUnreadMessages;

  const AiState({
    this.processingState = AiProcessingState.idle,
    this.currentMode = AiMode.chat,
    this.messageHistory = const [],
    this.lastError,
    this.isMinimized = true,
    this.contextData,
    this.hasUnreadMessages = false,
  });

  AiState copyWith({
    AiProcessingState? processingState,
    AiMode? currentMode,
    List<AiMessage>? messageHistory,
    String? lastError,
    bool? isMinimized,
    Map<String, dynamic>? contextData,
    bool? hasUnreadMessages,
  }) {
    return AiState(
      processingState: processingState ?? this.processingState,
      currentMode: currentMode ?? this.currentMode,
      messageHistory: messageHistory ?? this.messageHistory,
      lastError: lastError ?? this.lastError,
      isMinimized: isMinimized ?? this.isMinimized,
      contextData: contextData ?? this.contextData,
      hasUnreadMessages: hasUnreadMessages ?? this.hasUnreadMessages,
    );
  }
}

// AI State Notifier
class AiStateNotifier extends StateNotifier<AiState> {
  AiStateNotifier() : super(const AiState());

  void setProcessingState(AiProcessingState processingState) {
    state = state.copyWith(processingState: processingState);
  }

  void setMode(AiMode mode) {
    state = state.copyWith(currentMode: mode);
  }

  void addMessage(String content, bool isUser,
      {Map<String, dynamic>? metadata}) {
    final message = AiMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      isUser: isUser,
      timestamp: DateTime.now(),
      metadata: metadata,
    );

    state = state.copyWith(
      messageHistory: [...state.messageHistory, message],
      hasUnreadMessages: !isUser && state.isMinimized,
    );
  }

  void clearMessages() {
    state = state.copyWith(messageHistory: []);
  }

  void setError(String error) {
    state = state.copyWith(
      lastError: error,
      processingState: AiProcessingState.error,
    );
  }

  void clearError() {
    state = state.copyWith(
      lastError: null,
      processingState: AiProcessingState.idle,
    );
  }

  void toggleMinimized() {
    state = state.copyWith(
      isMinimized: !state.isMinimized,
      hasUnreadMessages: false,
    );
  }

  void updateContextData(Map<String, dynamic> newData) {
    final updatedContext = Map<String, dynamic>.from(state.contextData ?? {})
      ..addAll(newData);
    state = state.copyWith(contextData: updatedContext);
  }

  void clearContextData() {
    state = state.copyWith(contextData: null);
  }

  void markMessagesAsRead() {
    state = state.copyWith(hasUnreadMessages: false);
  }
}

// Providers
final aiStateProvider = StateNotifierProvider<AiStateNotifier, AiState>((ref) {
  return AiStateNotifier();
});

// AI Configuration Provider
final aiConfigProvider = Provider((ref) {
  return const AiConfiguration(
    maxMessageHistory: 50,
    enableVoice: true,
    enableEmergencyMode: true,
    modelName: 'stable-lm-3b-4e1t',
    temperature: 0.7,
    maxTokens: 1000,
  );
});

// AI Configuration class
class AiConfiguration {
  final int maxMessageHistory;
  final bool enableVoice;
  final bool enableEmergencyMode;
  final String modelName;
  final double temperature;
  final int maxTokens;

  const AiConfiguration({
    required this.maxMessageHistory,
    required this.enableVoice,
    required this.enableEmergencyMode,
    required this.modelName,
    required this.temperature,
    required this.maxTokens,
  });
}

// AI Service Provider
final aiServiceProvider = Provider((ref) {
  final config = ref.watch(aiConfigProvider);
  return AiService(config);
});

// AI Service class
class AiService {
  final AiConfiguration config;

  AiService(this.config);

  Future<String> processMessage(
      String message, Map<String, dynamic>? context) async {
    // Implement AI processing logic here
    // This would integrate with your Stable LM 3B model
    return 'AI response';
  }

  Future<String> processVoiceCommand(String audioPath) async {
    // Implement voice command processing
    return 'Voice command processed';
  }

  Future<Map<String, dynamic>> analyzeMealPlan(
      Map<String, dynamic> mealData) async {
    // Implement meal plan analysis
    return {'analysis': 'Meal plan analysis results'};
  }

  Future<Map<String, dynamic>> getNutritionAdvice(
      Map<String, dynamic> nutritionData) async {
    // Implement nutrition advice generation
    return {'advice': 'Nutrition advice'};
  }

  Future<Map<String, dynamic>> handleEmergencyQuery(String query) async {
    // Implement emergency query handling
    return {'response': 'Emergency handling response'};
  }
}
