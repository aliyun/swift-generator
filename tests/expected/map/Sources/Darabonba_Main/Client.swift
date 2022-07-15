import Foundation

open class Client : DarabonbaImport.Client {
    init(_ config: DarabonbaImport.Config) {
        super.init(config)
        super.endpointRule = "central"
        super.endpointMap = [
            "ap-northeast-1": "cusanalytic.aliyuncs.com",
            "ap-south-1": "cusanalytic.aliyuncs.com"
        ]
        _endpointMap["ap-northeast-1"]
        _endpointMap["ap-northeast-1"] = "";
        _endpointMap["test"] = "test"
        var b: B = B([:])
        for a in b.mm {
            a.m[a.str]
        }
    }
}
