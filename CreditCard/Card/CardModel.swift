//
//  CardModel.swift
//  CreditCard
//
//  Created by Ibrahim Nasser Ibrahim on 24/02/2024.
//

import Foundation


struct Card: Codable {
    let number: String
    let date: String
    let cvv: String
    let logo: String
    let type: String
    let name: String
    let image: String
}
