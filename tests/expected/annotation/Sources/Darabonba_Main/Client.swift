import Foundation
import Tea

open class Client {
    public var _a: String?

    public init() throws {
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func testAPI() async throws -> Void {
        var _runtime: [String: Any] = [:]
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
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
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
    public static func testFunc() async throws -> Void {
    }
}
