import Foundation

open class Client {
    init() {
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hello() async throws -> Void {
        var _request: Tea.TeaRequest = Tea.TeaRequest()
        _request.method = "GET"
        _request.pathname = "/"
        _request.headers = [
            "host": "www.test.com"
        ]
        if (true) {
            _request.headers["host"] = "www.test2.com";
        }
        var _lastRequest: Tea.TeaRequest = _request
        var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request)
        if (true) {
            throw Tea.RetryableError()
        }
        else {
            true
        }
        super.helloIf()
        !false
        var a: String? = nil
        a = "string"
        return nil
    }

    public static func helloIf() -> Void {
        if (true) {}
        if (true) {}
        else if (true) {}
        else {}
    }

    public static func helloThrow() throws -> Void {
        throw Tea.ReuqestError([:])
    }

    public static func helloForBreak() -> Void {
        for item in [Any]() {
            break
        }
    }

    public static func helloWhile() -> Void {
        while (true) {
            break
        }
    }

    public static func helloDeclare() -> Void {
        var hello: String = "world"
        var helloNull: String? = nil
        hello = "hehe"
    }
}
