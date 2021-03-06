//
// AggregatesHistogramResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Aggregates Histogram Response */
public class AggregatesHistogramResponse: JSONEncodable {
    public var data: [AggregatesHistogramData]?
    public var endDate: Int64?
    public var field: String?
    public var interval: String?
    public var sdid: String?
    public var size: Int64?
    public var startDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        nillableDictionary["endDate"] = self.endDate?.encodeToJSON()
        nillableDictionary["field"] = self.field
        nillableDictionary["interval"] = self.interval
        nillableDictionary["sdid"] = self.sdid
        nillableDictionary["size"] = self.size?.encodeToJSON()
        nillableDictionary["startDate"] = self.startDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
