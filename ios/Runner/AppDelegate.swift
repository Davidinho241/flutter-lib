import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GSMServices.provideAPIKey("AIzaSyAndXpWUAYCWNoXFwTqPxUzhTbRdX8O3nc")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
