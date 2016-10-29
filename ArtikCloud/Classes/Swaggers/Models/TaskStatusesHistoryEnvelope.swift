//
// TaskStatusesHistoryEnvelope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/**  */
public class TaskStatusesHistoryEnvelope: JSONEncodable {
    /** Task statuses history */
    public var data: TaskHistoryList?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
