import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // This line is key to fixing the white screen issue
    self.window = UIWindow(frame: UIScreen.main.bounds)
    
    // Create and run a headless engine
    let flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
    flutterEngine.run(withEntrypoint: nil)
    
    // Register plugins
    GeneratedPluginRegistrant.register(with: flutterEngine)
    
    // Create the Flutter view controller with the engine
    let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
    
    // Set the root view controller
    self.window.rootViewController = flutterViewController
    self.window.makeKeyAndVisible()
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
