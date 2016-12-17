//
//  FilmesService.swift
//  provaios
//
//  Created by Arthur on 17/12/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import Foundation

class FilmesService {

    public func getFilmes(){
        var request = URLRequest(url: URL(string: "http://www.mocky.io/v2/58559bcb2c00004d1d598d5b")!)
        request.httpMethod = "GET"
        let session = URLSession.shared

        let task = session.dataTask(with: request) {
            data, response, error in
            
            // Check for error
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // Print out response string
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(responseString)")
            
            
            // Convert server json response to NSDictionary
//            do {
//                if let convertedJsonIntoDict = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as? NSDictionary {
//                    
//                    // Print out dictionary
//                    print(convertedJsonIntoDict)
//                    
//                    // Get value by key
//                    let firstNameValue = convertedJsonIntoDict["userName"] as? String
//                    print(firstNameValue!)
//                    
//                }
//            } catch let error as NSError {
//                print(error.localizedDescription)
//            }
            
        }
        
        task.resume()
        
        
        
//        session.dataTask(with: <#T##URLRequest#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
        
//        session.dataTask(with: URL, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)ask(with: request) {data, response, err in
//            print("Entered the completionHandler")
//            
//            if(err != nil){
//                print("error")
//            }else{
//                print("OK")
//            }
//            
//            }.resume()
    }
    
   
    
    
}
