//
// RegistrationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit



public class RegistrationsAPI: APIBase {
    /**
     Confirm User
     
     - parameter registrationInfo: (body) Device Registration information. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func confirmUser(registrationInfo registrationInfo: DeviceRegConfirmUserRequest, completion: ((data: DeviceRegConfirmUserResponseEnvelope?, error: ErrorType?) -> Void)) {
        confirmUserWithRequestBuilder(registrationInfo: registrationInfo).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     Confirm User
     
     - parameter registrationInfo: (body) Device Registration information. 
     - returns: Promise<DeviceRegConfirmUserResponseEnvelope>
     */
    public class func confirmUser(registrationInfo registrationInfo: DeviceRegConfirmUserRequest) -> Promise<DeviceRegConfirmUserResponseEnvelope> {
        let deferred = Promise<DeviceRegConfirmUserResponseEnvelope>.pendingPromise()
        confirmUser(registrationInfo: registrationInfo) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     Confirm User
     - PUT /devices/registrations/pin
     - This call updates the registration request issued earlier by associating it with an authenticated user and captures all additional information required to add a new device.
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "rid" : "aeiou"
  }
}}]
     
     - parameter registrationInfo: (body) Device Registration information. 

     - returns: RequestBuilder<DeviceRegConfirmUserResponseEnvelope> 
     */
    public class func confirmUserWithRequestBuilder(registrationInfo registrationInfo: DeviceRegConfirmUserRequest) -> RequestBuilder<DeviceRegConfirmUserResponseEnvelope> {
        let path = "/devices/registrations/pin"
        let URLString = ArtikCloudAPI.basePath + path
        let parameters = registrationInfo.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<DeviceRegConfirmUserResponseEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get Request Status For User
     
     - parameter requestId: (path) Request ID. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getRequestStatusForUser(requestId requestId: String, completion: ((data: DeviceRegStatusResponseEnvelope?, error: ErrorType?) -> Void)) {
        getRequestStatusForUserWithRequestBuilder(requestId: requestId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     Get Request Status For User
     
     - parameter requestId: (path) Request ID. 
     - returns: Promise<DeviceRegStatusResponseEnvelope>
     */
    public class func getRequestStatusForUser(requestId requestId: String) -> Promise<DeviceRegStatusResponseEnvelope> {
        let deferred = Promise<DeviceRegStatusResponseEnvelope>.pendingPromise()
        getRequestStatusForUser(requestId: requestId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     Get Request Status For User
     - GET /devices/registrations/{requestId}/status
     - This call checks the status of the request so users can poll and know when registration is complete.
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "did" : "aeiou",
    "status" : "aeiou"
  }
}}]
     
     - parameter requestId: (path) Request ID. 

     - returns: RequestBuilder<DeviceRegStatusResponseEnvelope> 
     */
    public class func getRequestStatusForUserWithRequestBuilder(requestId requestId: String) -> RequestBuilder<DeviceRegStatusResponseEnvelope> {
        var path = "/devices/registrations/{requestId}/status"
        path = path.stringByReplacingOccurrencesOfString("{requestId}", withString: "\(requestId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<DeviceRegStatusResponseEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Unregister Device
     
     - parameter deviceId: (path) Device ID. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func unregisterDevice(deviceId deviceId: String, completion: ((data: UnregisterDeviceResponseEnvelope?, error: ErrorType?) -> Void)) {
        unregisterDeviceWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     Unregister Device
     
     - parameter deviceId: (path) Device ID. 
     - returns: Promise<UnregisterDeviceResponseEnvelope>
     */
    public class func unregisterDevice(deviceId deviceId: String) -> Promise<UnregisterDeviceResponseEnvelope> {
        let deferred = Promise<UnregisterDeviceResponseEnvelope>.pendingPromise()
        unregisterDevice(deviceId: deviceId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     Unregister Device
     - DELETE /devices/{deviceId}/registrations
     - This call clears any associations from the secure device registration.
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "eid" : "aeiou",
    "uid" : "aeiou",
    "dtid" : "aeiou",
    "manifestVersion" : 123456789,
    "manifestVersionPolicy" : "aeiou",
    "name" : "aeiou",
    "certificateSignature" : "aeiou",
    "needProviderAuth" : true,
    "id" : "aeiou",
    "certificateInfo" : "aeiou",
    "createdOn" : 123456789
  }
}}]
     
     - parameter deviceId: (path) Device ID. 

     - returns: RequestBuilder<UnregisterDeviceResponseEnvelope> 
     */
    public class func unregisterDeviceWithRequestBuilder(deviceId deviceId: String) -> RequestBuilder<UnregisterDeviceResponseEnvelope> {
        var path = "/devices/{deviceId}/registrations"
        path = path.stringByReplacingOccurrencesOfString("{deviceId}", withString: "\(deviceId)", options: .LiteralSearch, range: nil)
        let URLString = ArtikCloudAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UnregisterDeviceResponseEnvelope>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
