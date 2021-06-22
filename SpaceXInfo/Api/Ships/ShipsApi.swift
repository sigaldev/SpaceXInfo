//
//  ShipsApi.swift
//  SpaceXInfo
//
//  Created by Danil Sigal on 21.06.2021.
//

import Foundation

struct ShipsApi {
    
    private let api = ApiClient()
    
    func fetchShips(completion: @escaping (Result<[ShipModel], Error>) -> Void) {
        let query = FetchShipsQuery()
        
        api.client.fetch(query: query) { result in
            switch result {
            case .success(let resultData):
                let ships = (resultData.data?.ships ?? [FetchShipsQuery.Data.Ship]())
                    .compactMap({ $0?.fragments.shipModel })
                
                completion(.success(ships))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
