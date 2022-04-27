import Foundation

@objc public class FirebaseInAppMessaging: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
