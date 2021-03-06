//
// Device.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Device information. */
public class Device: JSONEncodable {
    /** Device ID */
    public var id: String?
    /** User ID */
    public var uid: String?
    /** Device Type ID */
    public var dtid: String?
    /** Name */
    public var name: String?
    /** Manifest Version */
    public var manifestVersion: Int32?
    /** Manifest Version Policy (LATEST, DEVICE) */
    public var manifestVersionPolicy: String?
    /** Needs Provider Authentication */
    public var needProviderAuth: Bool?
    public var properties: [String:AnyObject]?
    /** Created On (milliseconds since epoch) */
    public var createdOn: Int64?
    /** Is Connected */
    public var connected: Bool?
    /** Certificate Info (if any) */
    public var certificateInfo: String?
    /** Certificate Signature (if any) */
    public var certificateSignature: String?
    /** External ID (if any) */
    public var eid: String?
    public var providerCredentials: [String:AnyObject]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["uid"] = self.uid
        nillableDictionary["dtid"] = self.dtid
        nillableDictionary["name"] = self.name
        nillableDictionary["manifestVersion"] = self.manifestVersion?.encodeToJSON()
        nillableDictionary["manifestVersionPolicy"] = self.manifestVersionPolicy
        nillableDictionary["needProviderAuth"] = self.needProviderAuth
        nillableDictionary["properties"] = self.properties?.encodeToJSON()
        nillableDictionary["createdOn"] = self.createdOn?.encodeToJSON()
        nillableDictionary["connected"] = self.connected
        nillableDictionary["certificateInfo"] = self.certificateInfo
        nillableDictionary["certificateSignature"] = self.certificateSignature
        nillableDictionary["eid"] = self.eid
        nillableDictionary["providerCredentials"] = self.providerCredentials?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
