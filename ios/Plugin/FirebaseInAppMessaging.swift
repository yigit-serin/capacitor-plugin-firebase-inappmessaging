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
        var data: [String: Any] = ["inAppMessage": inAppMessage]
        
        var actionURL: URL? = nil
        
        switch inAppMessage {
        case let cardMessage as InAppMessagingCardDisplay:
            actionURL = cardMessage.primaryActionURL
        case let bannerMessage as InAppMessagingBannerDisplay:
            actionURL = bannerMessage.actionURL
        case let imageMessage as InAppMessagingImageOnlyDisplay:
            actionURL = imageMessage.actionURL
        case let modalMessage as InAppMessagingModalDisplay:
            actionURL = modalMessage.actionURL
        default:
            break
        }
        
        if let url = actionURL {
            data["actionURL"] = url.absoluteString
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        
        self.plugin?.notifyListeners("inAppMessagingMessageClicked", data: data, retainUntilConsumed: true)
    }

    public  func messageDismissed(_ inAppMessage: InAppMessagingDisplayMessage,
                                  dismissType: InAppMessagingDismissType) {
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
