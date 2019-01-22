import UIKit
import Flutter
import GoogleMaps
//import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    // Google Maps
    GMSServices.provideAPIKey("AIzaSyDvkWG_OXHAbHAunYW4lTQ2xdU6n1Qgal8")
    GeneratedPluginRegistrant.register(with: self)
    // FirebaseApp.configure()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
