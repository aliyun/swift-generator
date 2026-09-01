import Foundation
import Tea

open class Client {
    public init() throws {
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hello() async throws -> Void {
        var _request: Tea.TeaRequest = Tea.TeaRequest()
        _request.method = "GET"
        _request.pathname = "/"
        _request.headers = [
            "host": "www.test.com"
        ]
        var _lastRequest: Tea.TeaRequest = _request
        var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request)
        return nil
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func helloRuntime() async throws -> Void {
        var _runtime: [String: Any] = [
            "timeouted": "retry",
            "ignoreSSL": true,
            "keepAlive": false
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
                _request.method = "GET"
                _request.pathname = "/"
                _request.headers = [
                    "host": "www.test.com"
                ]
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
                throw Tea.ReuqestError([
                    "code": _response.statusCode,
                    "message": "message",
                    "data": [
                        "test": "test"
                    ]
                ])
            }
            catch {
                _context = Tea.TeaCore.retryPolicyContext(_retriesAttempted, error, _lastRequest, _lastResponse)
                continue
            }
        }
        throw Tea.UnretryableError(_lastRequest, _context)
    }
}
