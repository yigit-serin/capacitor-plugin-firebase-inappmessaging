import Foundation
import Capacitor
import FirebaseInAppMessaging

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(FirebaseInAppMessagingPlugin)
public class FirebaseInAppMessagingPlugin: CAPPlugin {
    private let implementation = FirebaseInAppMessaging()
    
     @objc public override func load() {
         InAppMessaging.inAppMessaging().delegate=implementation
    }
    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
