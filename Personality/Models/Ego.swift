//
//  Ego.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import Foundation
import SwiftUI

enum Ego: CaseIterable, Identifiable, Codable {
    var id: Self { self }
    
    case florzinha
    case diabinho
    case estrelinha
    case coracaozinho
    
    func getImageName() -> String {
        switch self {
        case .florzinha:
            return "Florzinha"
        case .diabinho:
            return "Diabinho"
        case .estrelinha:
            return "Estrelinha"
        case .coracaozinho:
            return "Coracaozinho"
        }
    }
    
    func getProfileImageName() -> String {
        switch self {
        case .florzinha:
            return "Base_Flor"
        case .diabinho:
            return "Base_Diab"
        case .estrelinha:
            return "Base_Estr"
        case .coracaozinho:
            return "Base_Cora"
        }
    }
    
    func getColor() -> Color {
        switch self {
        case .florzinha:
            return .amarelo
        case .diabinho:
            return .azul
        case .estrelinha:
            return .roxo
        case .coracaozinho:
            return .verde
        }
    }
    
    func getColorBackground() -> Color {
        switch self {
        case .florzinha:
            return .verde
        case .diabinho:
            return .laranja
        case .estrelinha:
            return .amarelo
        case .coracaozinho:
            return .rosa
        }
    }
    
    func getImageFace() -> String {
        switch self {
        case .florzinha:
            return "RostoFlor"
        case .diabinho:
            return "RostoDiabinho"
        case .estrelinha:
            return "RostoEstrela"
        case .coracaozinho:
            return "RostoCoracao"
        }
    }
}
