//
//  ApiConfiguration.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

import Foundation

struct MYError : Error {
    let description : String
    let domain : String
    
    var localizedDescription: String {
        return NSLocalizedString(description, comment: "")
    }
}
class ApiServicesCommon:  NSObject
{
    
   
    //MARK:-POST Method
    class func PostURL(url: String, dict:[String: Any] ,completion: @escaping (_ responceData:Dictionary<String, Any>, _ success: Bool, _ error: Error) -> ())
    {
        if ReachabilityHelper.isInternetAvailable()
        {
              
            // Create a URLRequest with the HTTP method set to POST
            var request = URLRequest(url: URL(string: url)!)
            request.httpMethod = "POST"
            
            // Define the request body as a dictionary (you can use any JSON serializable data)
            
            // Serialize the request body to JSON data
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: dict, options: [])
                request.httpBody = jsonData
            } catch {
                print("Error serializing request body: \(error)")
                return
            }
            
            // Set the request's content type
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            // Create a URLSession and a data task to send the request
            let session = URLSession.shared
            let task = session.dataTask(with: request) { (data, response, error) in
              
                
                
                
                // Check for errors
                if let error = error {
                    print("Error: \(error)")
                    let temp=NSDictionary.init(object: "HTTP Error: \(error)", forKey: "message" as NSCopying)
                    completion(temp as! Dictionary<String, Any>,false,MYError(description: "", domain: ""))
                    
                    return
                }
                
                // Check the HTTP response status code
                if let httpResponse = response as? HTTPURLResponse {
                    if (200...299).contains(httpResponse.statusCode) {
                        // Request was successful
                        guard let responseData = data else {
                            print("No data received")
                            return
                        }
                        do {
                            // Parse the JSON data into a dictionary
                            if let jsonDictionary = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] {
                                // Now, jsonDictionary contains the JSON data as a Swift dictionary
                                print(jsonDictionary)
                                completion(jsonDictionary,true,error ?? MYError(description: "", domain: ""))
                            }
                        } catch {
                            print("Error parsing JSON data: \(error)")
                            let temp=NSDictionary.init(object: "Error parsing JSON data: \(error)", forKey: "message" as NSCopying)
                            completion(temp as! Dictionary<String, Any>,false,MYError(description: "", domain: ""))
                        }
                    } else {
                        // Request failed with a non-2xx status code
                        print("HTTP Error: \(httpResponse.statusCode)")
                        let temp=NSDictionary.init(object: "HTTP Error: \(httpResponse.statusCode)", forKey: "message" as NSCopying)
                        completion(temp as! Dictionary<String, Any>,false,MYError(description: "", domain: ""))
                    }
                }
                
                
                
                
                
                
            }
            
            // Start the data task
            task.resume()
            
            
            
            
        }
        else
        {
            let temp=NSDictionary.init(object: AlertTitleMessage.INTERNET_ERROR, forKey: "message" as NSCopying)
            completion(temp as! Dictionary<String, Any>,false,MYError(description: "", domain: ""))
        }
    }
    
    
    
}
