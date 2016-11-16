//
// MessageAction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Message or Action Information. */
public class MessageAction: JSONEncodable {
    public var data: [String:AnyObject]?
    /** Destination Device ID. */
    public var ddid: String?
    /** Source Device ID. */
    public var sdid: String?
    /** Timestamp (past, present or future). Defaults to current time if not provided. */
    public var ts: Int64?
    /** Type. */
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        nillableDictionary["ddid"] = self.ddid
        nillableDictionary["sdid"] = self.sdid
        nillableDictionary["ts"] = self.ts?.encodeToJSON()
        nillableDictionary["type"] = self.type
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
