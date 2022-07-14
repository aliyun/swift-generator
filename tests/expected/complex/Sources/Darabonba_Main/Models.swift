import Foundation

public class ComplexRequest : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var content: String?
    }
    public class Configs : Tea.TeaModel {
        public var key: String?

        public var value: [String]?

        public var extra: [String:String]?
    }
    public class Part : Tea.TeaModel {
        public var partNumber: String?
    }
    public class ComplexList : Tea.TeaModel {
        public var name: String?

        public var code: Int32?
    }
    public var duplicatName: DarabonbaImport.Complexrequest?

    public var accessKey: String?

    public var body: Stream?

    public var strs: [String]?

    public var header: ComplexRequest.Header?

    public var Num: Int?

    public var configs: ComplexRequest.Configs?

    public var part: [ComplexRequest.Part]?

    public var i64: Int64?

    public var f64: Double?

    public var b: Bool?

    public var f32: Double?

    public var f64List: [Double]?

    public var floatList: [Double]?

    public var booleantList: [Bool]?

    public var i32: Int32?

    public var stringList: [String]?

    public var intList: [Int32]?

    public var int32List: [Int32]?

    public var int16List: [Int32]?

    public var int64List: [Int64]?

    public var uint64List: [Int64]?

    public var uint32List: [Int32]?

    public var uint16List: [Int32]?

    public var u64: Int64?

    public var u32: Int32?

    public var u16: Int32?

    public var obj: [String:Any]?

    public var any: Any?

    public var byt: [UInt8]?

    public var req: Tea.TeaRequest?

    public var resp: Tea.TeaResponse?

    public var map: [String:String]?

    public var anyMap: [String:Any]?

    public var numMap: [String:Int]?

    public var modelMap: [String:DarabonbaImport.Request]?

    public var request: DarabonbaImport.Request?

    public var client: DarabonbaImport.Client?

    public var instance: DarabonbaImport.Request.Instance?

    public var complexList: [[[ComplexRequest.ComplexList]]]?

    public var complexList1: [[[String:String]]]?
}

public class Response : Tea.TeaModel {
    public var instance: ComplexRequest.Part?
}
