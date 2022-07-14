import Foundation

open class Client {
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public static func emptyModel() async -> Void {
        DarabonbaImport.Client.test()
        DarabonbaSource.Client.test()
    }
}
