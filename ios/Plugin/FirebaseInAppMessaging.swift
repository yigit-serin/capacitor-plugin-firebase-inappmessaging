import Foundation
import Capacitor
import FirebaseInAppMessaging

@objc public class FirebaseInAppMessaging: NSObject, InAppMessagingDisplayDelegate {
    public weak var plugin: CAPPlugin?

    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    
    public func messageClicked(_ inAppMessage: InAppMessagingDisplayMessage) {
        // ...
        self.plugin?.notifyListeners("inAppMessagingMessageClicked", data: ["inAppMessage":inAppMessage], retainUntilConsumed: true)
    }

    public  func messageDismissed(_ inAppMessage: InAppMessagingDisplayMessage,
                          dismissType: FIRInAppMessagingDismissType) {
        // ...
        self.plugin?.notifyListeners("inAppMessagingMessageDismissed", data: ["inAppMessage":inAppMessage], retainUntilConsumed: true)
    }

    public func impressionDetected(for inAppMessage: InAppMessagingDisplayMessage) {
        // ...
        self.plugin?.notifyListeners("inAppMessagingImpressionDetected", data: ["inAppMessage":inAppMessage], retainUntilConsumed: true)
    }

    public func displayError(for inAppMessage: InAppMessagingDisplayMessage, error: Error) {
        // ...
        self.plugin?.notifyListeners("inAppMessagingDisplayError", data: ["inAppMessage":inAppMessage], retainUntilConsumed: true)
    }
}
