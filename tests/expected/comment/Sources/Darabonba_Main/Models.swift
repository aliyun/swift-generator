import Foundation
import Tea
import DarabonbaImport

public class Test1 : Tea.TeaModel {
    public var test: String?


    public var test2: String?


    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.test, "test")
        try self.validateRequired(self.test2, "test2")
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.test != nil {
            map["test"] = self.test!
        }
        if self.test2 != nil {
            map["test2"] = self.test2!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["test"] as? String {
            self.test = value
        }
        if let value = dict["test2"] as? String {
            self.test2 = value
        }
    }
}

public class Test2 : Tea.TeaModel {

    public var test: String?


    public var test2: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.test, "test")
        try self.validateRequired(self.test2, "test2")
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.test != nil {
            map["test"] = self.test!
        }
        if self.test2 != nil {
            map["test2"] = self.test2!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["test"] as? String {
            self.test = value
        }
        if let value = dict["test2"] as? String {
            self.test2 = value
        }
    }
}

public class Test3 : Tea.TeaModel {

    public var test: String?



    public var test1: String?


    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.test, "test")
        try self.validateRequired(self.test1, "test1")
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.test != nil {
            map["test"] = self.test!
        }
        if self.test1 != nil {
            map["test1"] = self.test1!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["test"] as? String {
            self.test = value
        }
        if let value = dict["test1"] as? String {
            self.test1 = value
        }
    }
}
