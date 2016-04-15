//
// ExportHistoryResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Export History Response. */
public class ExportHistoryResponse: JSONEncodable {

    public var count: Int?
    public var data: ExportDataArray?
    public var offset: Int?
    public var total: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["count"] = self.count
        nillableDictionary["data"] = self.data?.encodeToJSON()
        nillableDictionary["offset"] = self.offset
        nillableDictionary["total"] = self.total
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}