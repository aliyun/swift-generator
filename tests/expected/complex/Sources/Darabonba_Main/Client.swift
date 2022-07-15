import Foundation

open class Client : DarabonbaImport.Client {
    protected var _Strs: [String]?

    protected var _compleList: [[String]]?

    protected var _endpointMap: [String:String]?

    protected var _configs: [DarabonbaImport.Config]?

    init(_ config: DarabonbaImport.Config) {
        super.init(config)
        _configs[0] = config
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func complex1(_ request: ComplexRequest, _ client: DarabonbaImport.Client) async throws -> DarabonbaImport.RuntimeObject {
        try! request.validate()
        var _runtime: [String:Any] = [
            "timeouted": "retry"
        ]
        var _lastRequest: Tea.TeaRequest? = nil
        var _lastException: Tea.TeaError? = nil
        var _now: Int32 = Tea.TeaCore.timeNow()
        var _retryTimes: Int32 = 0
        while (Tea.TeaCore.allowRetry(_runtime["retry"], _retryTimes, _now)) {
            if (_retryTimes > 0) {
                var _backoffTime: Int32 = Tea.TeaCore.getBackoffTime(_runtime["backoff"], _retryTimes)
                if (_backoffTime > 0) {
                    Tea.TeaCore.sleep(_backoffTime)
                }
            }
            _retryTimes = _retryTimes + 1
            do {
                var _request: Tea.TeaRequest = Tea.TeaRequest()
                var name: String = "complex"
                var read: Stream? = nil
                var byt: [UInt8]? = nil
                var moduleModelMapVal: [String:DarabonbaImport.RuntimeObject] = [:]
                var moduleMapVal: [String:DarabonbaImport.Client] = [:]
                var modelMapVal: [String:ComplexRequest] = [:]
                var subModelMapVal: [String:ComplexRequest.Header] = [:]
                var version: String = "/" + "2019-01-08" + super.pathname
                var mapAccess: String = _API[version]
                var reqMap: [String:ComplexRequest]? = nil
                var mapString: [String:String] = [
                    "str": request.accessKey
                ]
                var inte: Int32 = 1
                var a: Int32 = 1
                var b: Int32? = nil
                b = a
                var c: Int32 = a
                super.intToInt32(a)
                var mapVal: [String:Any] = [
                    "read": read,
                    "test": "{"test":"ok"}",
                    "b": request.b,
                    "num": request.Num,
                    "u16": request.u16,
                    "u32": request.u32,
                    "u64": request.u64,
                    "u16List": request.uint16List,
                    "u32List": request.uint32List,
                    "u64List": request.uint64List,
                    "i64List": request.int64List,
                    "i16List": request.int16List,
                    "i32List": request.int32List,
                    "intList": request.intList,
                    "stringList": request.stringList,
                    "i32": request.i32,
                    "booleantList": request.booleantList,
                    "floatList": request.floatList,
                    "float64List": request.f64List,
                    "f32": request.f32,
                    "f64": request.f64,
                    "i64": request.i64
                ]
                var req: ComplexRequest = ComplexRequest([
                    "b": false,
                    "Num": 10,
                    "i32": a,
                    "intList": [
                        10,
                        11
                    ],
                    "stringList": [
                        "10",
                        "11"
                    ],
                    "booleantList": [
                        true,
                        false
                    ]
                ])
                super.Strs = request.strs
                _endpointMap[super.protocol]
                _endpointMap["test"] = "ok";
                request.strs = super.Strs
                _request.protocol = super.protocol
                _request.port = 80
                _request.method = "GET"
                _request.pathname = "/" + super.pathname
                _request.query = DarabonbaImport.Client.query(Tea.TeaConverter.merge([
                    "date": "2019",
                    "access": mapAccess,
                    "test": mapVal["test"]
                ], request.header))
                _request.body = DarabonbaImport.Client.body()
                var tmp: [String:Any] = Tea.TeaConverter.merge([:], _request.query, _request.headers, _request)
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
                if (true && true) {
                    return nil
                }
                else if (true || false) {
                    return DarabonbaImport.RuntimeObject([:])
                }
                client.print(request, "1")
                try! await client.printAsync(request, "1")
                try! await super.hello(request, [
                    "1",
                    "2"
                ], nil)
                try! await super.hello(nil, nil, nil)
                return RuntimeObject.fromMap([:])
                try! await super.Complex3(nil)
                return nil
            }
            catch {
                if (Tea.TeaCore.isRetryable(error)) {
                    _lastException = error as! Tea.RetryableError
                    continue
                }
                throw error
            }
        }
        throw Tea.UnretryableError(_lastRequest, _lastException)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func Complex2(_ request: ComplexRequest, _ str: [String], _ val: [String:String]) async throws -> [String:Any] {
        try! request.validate()
        var _request: Tea.TeaRequest = Tea.TeaRequest()
        var name: String = "complex"
        var config: DarabonbaImport.Config = DarabonbaImport.Config([:])
        var client: DarabonbaImport.Client = DarabonbaImport.Client(config)
        _request.protocol = "HTTP"
        _request.port = 80
        _request.method = "GET"
        _request.pathname = "/"
        _request.query = DarabonbaImport.Client.query([
            "date": "2019",
            "version": "2019-01-08",
            "protocol": _request.protocol
        ])
        _request.body = DarabonbaImport.Client.body()
        var _lastRequest: Tea.TeaRequest = _request
        var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ComplexMap() async throws -> [String:Any] {
        var _runtime: [String:Any] = [:]
        var _lastRequest: Tea.TeaRequest? = nil
        var _lastException: Tea.TeaError? = nil
        var _now: Int32 = Tea.TeaCore.timeNow()
        var _retryTimes: Int32 = 0
        while (Tea.TeaCore.allowRetry(_runtime["retry"], _retryTimes, _now)) {
            if (_retryTimes > 0) {
                var _backoffTime: Int32 = Tea.TeaCore.getBackoffTime(_runtime["backoff"], _retryTimes)
                if (_backoffTime > 0) {
                    Tea.TeaCore.sleep(_backoffTime)
                }
            }
            _retryTimes = _retryTimes + 1
            do {
                var _request: Tea.TeaRequest = Tea.TeaRequest()
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
            }
            catch {
                if (Tea.TeaCore.isRetryable(error)) {
                    _lastException = error as! Tea.RetryableError
                    continue
                }
                throw error
            }
        }
        throw Tea.UnretryableError(_lastRequest, _lastException)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func Complex3(_ request: ComplexRequest) async throws -> ComplexRequest {
        try! request.validate()
        var _request: Tea.TeaRequest = Tea.TeaRequest()
        var name: String = "complex"
        _request.protocol = try! await super.TemplateString()
        _request.port = 80
        _request.method = "GET"
        _request.pathname = "/"
        _request.query = DarabonbaImport.Client.query([
            "date": "2019"
        ])
        _request.body = DarabonbaImport.Client.body()
        _request.headers["host"] = "hello";
        var _lastRequest: Tea.TeaRequest = _request
        var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request)
        var temp_str: String = "test " + String(100) + " " + String(true)
        var resp: Tea.TeaResponse = _response
        var req: DarabonbaImport.Request = DarabonbaImport.Request([
            "accesskey": request.accessKey,
            "region": resp.statusMessage
        ])
        super.array0(request)
        req.accesskey = "accesskey"
        req.accesskey = request.accessKey
        DarabonbaImport.Client.parse(#ComplexRequest.class)
        DarabonbaImport.Client.array(request, "1")
        try! await DarabonbaImport.Client.asyncFunc()
        try! await super.tryCatch()
        try! super.throwsFunc()
        _response.statusCode
        return ComplexRequest.fromMap(Tea.TeaConverter.merge([:], _request.query))
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hello(_ request: [String:Any], _ strs: [String], _ complexList: [[String]]) async -> [String] {
        var a: [[String]]? = nil
        return super.array1()
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public static func print(_ reqeust: Tea.TeaRequest, _ reqs: [ComplexRequest], _ response: Tea.TeaResponse, _ val: [String:String]) async -> DarabonbaImport.Request {
        return Request.fromMap([:])
    }

    public static func intToInt32(_ a: Int32) throws -> Void {
        throw Tea.TeaError('Un-implemented')
    }

    public static func array0(_ req: [String:Any]) -> [Any] {
        var list: [String]? = nil
        list = [
            "test"
        ]
        var temp: DarabonbaImport.Config = DarabonbaImport.Config([:])
        var anyArr: [DarabonbaImport.Config] = [
            temp
        ]
        return [Any]()
    }

    public static func array1() -> [String] {
        return [
            "1"
        ]
    }

    public static func arrayAccess() -> String {
        var configs: [String] = [
            "a",
            "b",
            "c"
        ]
        var config: String = configs[0]
        return config
    }

    public static func arrayAccess2() -> String {
        var data: [String:[String]] = [
            "configs": [
                "a",
                "b",
                "c"
            ]
        ]
        var config: String = data["configs"][0]
        return config
    }

    public static func arrayAccess3(_ request: ComplexRequest) -> String {
        var configVal: String = request.configs.value[0]
        return configVal
    }

    public static func arrayAccess4(_ request: ComplexRequest, _ config: String, _ index: Int32) -> Void {
        request.configs.value[index] = config
    }

    public static func arrayAssign(_ config: String) -> [String] {
        var configs: [String] = [
            "a",
            "b",
            "c"
        ]
        configs[3] = config
        return configs
    }

    public static func arrayAssign2(_ config: String) -> [String] {
        var data: [String:[String]] = [
            "configs": [
                "a",
                "b",
                "c"
            ]
        ]
        data["configs"][3] = config
        return data["configs"]
    }

    public static func arrayAssign3(_ request: ComplexRequest, _ config: String) -> Void {
        request.configs.value[0] = config
    }

    public static func mapAccess(_ request: ComplexRequest) -> String {
        var configInfo: String = request.configs.extra["name"]
        return configInfo
    }

    public static func mapAccess2(_ request: DarabonbaImport.Request) -> String {
        var configInfo: String = request.configs.extra["name"]
        return configInfo
    }

    public static func mapAccess3() -> String {
        var data: [String:[String:String]] = [
            "configs": [
                "value": "string"
            ]
        ]
        return data["configs"]["value"]
    }

    public static func mapAccess4(_ request: ComplexRequest) -> String {
        var key: String = "name"
        var model: String = request.modelMap[key]
        var configInfo: String = request.configs.extra[key]
        return configInfo
    }

    public static func mapAssign(_ request: ComplexRequest, _ name: String) -> Void {
        var map: [String:String] = [:]
        request.configs.extra["name"] = name;
        var key: String = "name"
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func TemplateString() async -> String {
        return "/\n" + super.protocol
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func emptyModel() async -> Void {
        ComplexRequest()
        ComplexRequest.Header()
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tryCatch() async -> Void {
        do {
            var str: String = try! await super.TemplateString()
        }
        catch Tea.TeaError(var err: Tea.TeaError) {
            var error: Tea.ReuqestError = err
        }
        do {
            var strNoFinal: String = try! await super.TemplateString()
        }
        catch Tea.TeaError(var e: Tea.TeaError) {
            var errorNoFinal: Tea.ReuqestError = e
        }
        do {
            var strNoCatch: String = try! await super.TemplateString()
        }
        catch { throw error }
    }

    public func throwsFunc() -> String {
        return "/" + super.protocol
    }

    public func throwsFunc1() -> String {
        return ""
    }

    public func throwsFunc2() throws -> Void {
        throw Tea.ReuqestError([
            "code": ""
        ])
    }

    public func throwsFunc3() throws -> String {
        throw Tea.ReuqestError([
            "code": ""
        ])
    }
}
