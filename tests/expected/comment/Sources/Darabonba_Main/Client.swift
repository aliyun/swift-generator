import Foundation
import Tea
import DarabonbaImport

open class Client {

    public var _a: [String]?

    public init() throws {
        var str: String = "sss"
        var modelInstance: Test1 = Test1([
            "test": "test",
            "test2": "test2",
        ])
        var array: [Any] = [
            "string",
            300
        ]
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testAPI() async throws -> Void {
        var _runtime: [String: Any] = [
        ]
        var _lastRequest: Tea.TeaRequest? = nil
        var _lastResponse: Tea.TeaResponse? = nil
        var _retriesAttempted: Int = 0
        var _context: Tea.RetryPolicyContext = Tea.TeaCore.retryPolicyContext(_retriesAttempted)
        while (Tea.TeaCore.shouldRetry(_runtime["retryOptions"], _context)) {
            if (_retriesAttempted > 0) {
                var _backoffTime: Int = Tea.TeaCore.getBackoffDelay(_runtime["retryOptions"], _context)
                if (_backoffTime > 0) {
                    Tea.TeaCore.sleep(_backoffTime)
                }
            }
            _retriesAttempted = _retriesAttempted + 1
            do {
                var _request: Tea.TeaRequest = Tea.TeaRequest()
                var modelInstance: Test1 = Test1([
                    "test": "test",
                    "test2": "test2"
                ])
                var num: Int = 123
                Client.staticFunc()
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
                try await Client.testFunc("test", true)
                return nil
            }
            catch {
                _context = Tea.TeaCore.retryPolicyContext(_retriesAttempted, error, _lastRequest, _lastResponse)
                continue
            }
        }
        throw Tea.UnretryableError(_lastRequest, _context)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testAPI2() async throws -> Void {
        var _runtime: [String: Any] = [
            "retry": true,
        ]
        var _lastRequest: Tea.TeaRequest? = nil
        var _lastResponse: Tea.TeaResponse? = nil
        var _retriesAttempted: Int = 0
        var _context: Tea.RetryPolicyContext = Tea.TeaCore.retryPolicyContext(_retriesAttempted)
        while (Tea.TeaCore.shouldRetry(_runtime["retryOptions"], _context)) {
            if (_retriesAttempted > 0) {
                var _backoffTime: Int = Tea.TeaCore.getBackoffDelay(_runtime["retryOptions"], _context)
                if (_backoffTime > 0) {
                    Tea.TeaCore.sleep(_backoffTime)
                }
            }
            _retriesAttempted = _retriesAttempted + 1
            do {
                var _request: Tea.TeaRequest = Tea.TeaRequest()
                var modelInstance: Test3 = Test3([
                ])
                var bool: Bool = true
                if (bool) {
                }
                else {
                }
                try await testAPI()
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
            }
            catch {
                _context = Tea.TeaCore.retryPolicyContext(_retriesAttempted, error, _lastRequest, _lastResponse)
                continue
            }
        }
        throw Tea.UnretryableError(_lastRequest, _context)
    }

    public static func staticFunc() -> Void {
        var a: [Any] = [
        ]
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public static func testFunc(_ str: String?, _ val: Bool?) async throws -> Void {
    }
}
