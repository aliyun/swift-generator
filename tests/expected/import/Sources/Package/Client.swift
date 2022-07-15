import Foundation

open class Client {
    protected var _id: [String]?

    protected var _str: String?

    init(_ id: [String], _ str: String) {
        super.id = id
        super.str = str
        throw Tea.ReuqestError([
            "code": "SomeError",
            "messge": "ErrorMessage"
        ])
    }

    public static func Sample(_ client: Import.Client) -> Void {
        var runtime: Import.RuntimeObject = Import.RuntimeObject([:])
        var request: Import.Request = Import.Request([
            "accesskey": "accesskey",
            "region": "region"
        ])
        client.print(runtime)
    }
}
