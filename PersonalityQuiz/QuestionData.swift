import Foundation

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: SkollType
}

enum SkollType: String {
    case wedstrijd = "Wedstrijdroeier", commissie = "Commissie persoon", competitie = "Competitie roeier", coach = "Coach"
    
    var definition: String {
        switch self {
        case .wedstrijd:
            return "Sportief blabla"
        case .commissie:
            return "Ondernemend blabla"
        case .competitie:
            return "Chill blabla"
        case .coach:
            return "Leidend blabla"
        }
    }
}
