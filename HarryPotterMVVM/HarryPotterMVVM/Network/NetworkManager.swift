//
//  NetworkManager.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import Foundation


struct NetworkManager  {
    
    static let shared = NetworkManager()
    
    func callService<T:Codable>(with url : URLConstants, completion: @escaping (Result<T,Error>) -> ()) {
        guard let url = URL(string: url.rawValue) else {return}
        
      
        let request = createURLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, urlResponse, error in
            if let data = data {
                do {
                    let decoder = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(decoder))
                }
                catch {
                    completion(.failure(error))
                }
            }
            
            if let error = error {
                completion(.failure(error))
            }
        }
        .resume()
    }
    
    
    
    private func createURLRequest (url: URL) -> URLRequest {
        let request = URLRequest(url: url)
        
        return request
    }
    
}
