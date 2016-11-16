//
// Token.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/**  */
public class Token: NSObject, NSCoding, JSONEncodable {
    public var accessToken: String?
    public var expiresIn: Int64?
    public var scope: String?
    public var tokenType: String?
    public var refreshToken: String?

    struct PropertyKey {
        static let accessToken_key = "_accessToken"
        static let expiresIn_key = "_expiresIn"
        static let scope_key = "_scope"
        static let tokenType_key = "_tokenType"
        static let refreshToken_key = "_refreshToken"
    }
    
    public override init() {
        super.init()
    }
    
    init(accessToken: String?, expiresIn: Int64?, scope: String?, tokenType: String?, refreshToken: String?) {
        super.init()
        self.accessToken = accessToken
        self.expiresIn = expiresIn
        self.scope = scope
        self.tokenType = tokenType
        self.refreshToken = refreshToken
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["access_token"] = self.accessToken
        nillableDictionary["expires_in"] = self.expiresIn?.encodeToJSON()
        nillableDictionary["scope"] = self.scope
        nillableDictionary["token_type"] = self.tokenType
        nillableDictionary["refresh_token"] = self.refreshToken
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
    
    // MARK: NSObject Methods
    public func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(accessToken, forKey: PropertyKey.accessToken_key)
        aCoder.encodeObject(scope, forKey: PropertyKey.scope_key)
        aCoder.encodeObject(tokenType, forKey: PropertyKey.tokenType_key)
        aCoder.encodeObject(refreshToken, forKey: PropertyKey.refreshToken_key)
        
        if let expiresIn = expiresIn {
            aCoder.encodeInt64(expiresIn, forKey: PropertyKey.expiresIn_key)
        }
    }
    
    required convenience public init(coder aDecoder: NSCoder) {
        let accessToken = aDecoder.decodeObjectForKey(PropertyKey.accessToken_key) as? String
        let scope = aDecoder.decodeObjectForKey(PropertyKey.scope_key) as? String
        let tokenType = aDecoder.decodeObjectForKey(PropertyKey.tokenType_key) as? String
        let refreshToken = aDecoder.decodeObjectForKey(PropertyKey.refreshToken_key) as? String
        
        var expiresIn: Int64?
        if aDecoder.containsValueForKey(PropertyKey.expiresIn_key) {
            expiresIn = aDecoder.decodeInt64ForKey(PropertyKey.expiresIn_key)
        }
        
        self.init(accessToken: accessToken, expiresIn: expiresIn, scope: scope, tokenType: tokenType, refreshToken: refreshToken)
    }
}
