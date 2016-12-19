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
        let url=URL(string:"http://www.mocky.io/v2/58559bcb2c00004d1d598d5b")
        do {
            print("Arthur")
            let allContactsData = try Data(contentsOf: url!)
            let allContacts = try JSONSerialization.jsonObject(with: allContactsData, options: JSONSerialization.ReadingOptions.allowFragments) as! [String : AnyObject]
            if let arrJSON = allContacts["filmes"] {
                for index in 0...arrJSON.count-1 {
                    
                    let aObject = arrJSON[index] as! [String : AnyObject]
                    
//                    names.append(aObject["name"] as! String)
//                    contacts.append(aObject["email"] as! String)
                    print(aObject["titulo"] as! String)
                }
            }
//            print(names)
//            print(contacts)
            
//            self.tableView.reloadData()
        }
        catch {
            
        }
    }
    
    
//    public func getFilmes(){
//        var request = URLRequest(url: URL(string: "http://www.mocky.io/v2/58559bcb2c00004d1d598d5b")!)
//        request.httpMethod = "GET"
//        let session = URLSession.shared
//
//        let task = session.dataTask(with: request) {
//            data, response, error in
//            
//            if error != nil
//            {
//                print("error=\(error)")
//                return
//            }
//            
//            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
//            print("responseString = \(responseString)")
//            
//        }
//        
//        task.resume()
//        
//    }
    
    
//    public func getFilmes(){
//        let urlString = "http://www.mocky.io/v2/58559bcb2c00004d1d598d5b"
//        
//        let url = URL(string: urlString)
//        URLSession.shared.dataTask(with:url!) { (data, response, error) in
//            if error != nil {
//                print(error)
//            } else {
//                do {
//                    
//                    if let array = jsonWithArrayRoot as? [Any] {
//                        if let firstObject = array.first {
//                            // access individual object in array
//                        }
//                        
//                        for object in array {
//                            // access all objects in array
//                        }
//                        
//                        for case let string as String in array {
//                            // access only string values in array
//                        }
//                    }
//                    
//                    
////                    let parsedData = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:Any]
////                    let currentConditions = parsedData["currently"] as! [String:Any]
////                    
////                    print(currentConditions)
////                    
////                    let currentTemperatureF = currentConditions["temperature"] as! Double
////                    print(currentTemperatureF)
//                } catch let error as NSError {
//                    print(error)
//                }
//            }
//            
//            }.resume()
//    }
    
    
//    func parserProdutos(data: NSData) -> Array<Filme> {
//        do {
//            if (data.length == 0) {
//                return []
//            }
//            
//            var produtos: Array<Filme> = []
//            let dict: NSArray = try JSONSerialization.jsonObject(with: data as Data, options:
//                JSONSerialization.ReadingOptions.mutableContainers) as! NSArray
//            
//            for obj:AnyObject in dict {
//                let dict = obj as! NSDictionary
//                let filme = Filme()
//                produto.ti = dict["codProduto"] as! Int
//                produto.descricao = dict["descricao"] as! String
//                produto.preco = dict["valorProduto"] as! Float
//                if (dict["tipoExame"] != nil) {
//                    produto.tipoExame = dict["tipoExame"] as! String
//                }
//                produtos.append(produto)
//            }
//            
//            return produtos
//        } catch let error as NSError {
//            print("json error: \(error.localizedDescription)")
//            return []
//        }
//        
//    }

    
    
    
   
    
    
}
