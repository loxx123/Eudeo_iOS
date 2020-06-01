//
//  EDOEOSUtilities.swift
//  Eudeo
//
//  Created by Jacob Liu on 6/1/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import Foundation

class LoginResponse: Decodable {
    let chainName: String
    
    private enum CodingKeys: String, CodingKey {
        case chainName = "chain_name"
    }
}

enum LoginError: Error {
    case loginFailed
}

class EDOEOSUtilities {
    static let shared = EDOEOSUtilities()
    let baseUrl = "http://newaccount.productlogger.eostribe.io"
    
    func generateKeyPair() -> (privateKey: PrivateKey?, publicKey: PublicKey?) {
        return generateRandomKeyPair(enclave: .Secp256k1)
    }
    
    func signup(pubKey: String, fullName: String, cellPhone: String, completion: @escaping (_ result: LoginResponse?, _ error: Error?) -> ()) {
        guard let endpointUrl = URL(string: "\(baseUrl)/accounts") else { return }
    
        var json = [String:Any]()
        
        json["public_key"] = pubKey
        json["full_name"] = fullName
        json["cell_phone"] = cellPhone

        do {
            let data = try JSONSerialization.data(withJSONObject: json, options: [])
            
            var request = URLRequest(url: endpointUrl)
            request.httpMethod = "POST"
            request.httpBody = data
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")

            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let error = error {
                    completion(nil, error)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse,
                    (200...299).contains(httpResponse.statusCode) else {
                        completion(nil, LoginError.loginFailed)
                    return
                }
                
                if let data = data,
                  let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) {
                  completion(loginResponse, nil)
                }
            }
            
            task.resume()
        } catch {
            
        }
  
    }
    
}
