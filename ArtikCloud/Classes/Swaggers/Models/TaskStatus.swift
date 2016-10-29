//
// TaskStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/**  */
public class TaskStatus: JSONEncodable {
    /** Number of attempts */
    public var numAttempts: Int32?
    /** Error Message */
    public var errorMessage: String?
    /** Error Code */
    public var errorCode: String?
    /** Device ID */
    public var did: String?
    /** Status */
    public var status: String?
    /** Timestamp of most recent status change */
    public var ts: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["numAttempts"] = self.numAttempts?.encodeToJSON()
        nillableDictionary["errorMessage"] = self.errorMessage
        nillableDictionary["errorCode"] = self.errorCode
        nillableDictionary["did"] = self.did
        nillableDictionary["status"] = self.status
        nillableDictionary["ts"] = self.ts?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
