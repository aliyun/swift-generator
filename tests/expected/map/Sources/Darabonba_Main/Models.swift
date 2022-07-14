import Foundation

public class A : Tea.TeaModel {
    public var m: [String:String]?

    public var str: String?
}

public class B : Tea.TeaModel {
    public var mm: [A]?
}
