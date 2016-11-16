//
// AggregatesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Aggregates Response */
public class AggregatesResponse: JSONEncodable {
    public var data: [AggregateData]?
    public var endDate: Int64?
    public var field: String?
    public var sdid: String?
    public var size: Int32?
    public var startDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        nillableDictionary["endDate"] = self.endDate?.encodeToJSON()
        nillableDictionary["field"] = self.field
        nillableDictionary["sdid"] = self.sdid
        nillableDictionary["size"] = self.size?.encodeToJSON()
        nillableDictionary["startDate"] = self.startDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
