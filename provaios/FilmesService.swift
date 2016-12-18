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
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(responseString)")
            
        }
        
        task.resume()
        
    }
    
    
   
    
    
}
