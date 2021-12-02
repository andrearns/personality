import Foundation

struct UserResult: Identifiable, Codable, Equatable {
    var id = UUID()
    var user_id: UUID
    var result_id: UUID
    var isSelected: Bool
    var isPrivate: Bool
    var result: Result
    //    var user: User

    init(user_id: UUID, result_id: UUID, isSelected: Bool, isPrivate: Bool) {
        self.user_id = user_id
        self.result_id = result_id
        self.isSelected = isSelected
        self.isPrivate = isPrivate
        self.result = Result(
            label: "teste",
            about: "teste teste",
            code: "bdf",
            badge:
                Badge(
                    iconImageURL: "chapeu4",
                    profileImagesURL: [
                        .coracaozinho : "Criatividade_Aventureiro_Cora",
                        .diabinho : "Criatividade_Aventureiro_Diab",
                        .estrelinha : "Criatividade_Aventureiro_Estr",
                        .florzinha : "Criatividade_Aventureiro_Flor"
                    ]
                ),
            color: "Yellow"
        )
        //        self.user = user
    }
    
    init(result: Result, isPrivate: Bool) {
        self.result = result
        self.user_id = UUID()
        self.result_id = result.id
        self.isPrivate = isPrivate
        self.isSelected = false
        //        self.user = user
    }
    
    static func == (lhs: UserResult, rhs: UserResult) -> Bool {
        lhs.id == rhs.id
    }
}
