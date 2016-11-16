//
// Token.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/**  */
public class Token: JSONEncodable {
    public var accessToken: String?
    public var expiresIn: Int64?
    public var scope: String?
    public var tokenType: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["access_token"] = self.accessToken
        nillableDictionary["expires_in"] = self.expiresIn?.encodeToJSON()
        nillableDictionary["scope"] = self.scope
        nillableDictionary["token_type"] = self.tokenType
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
