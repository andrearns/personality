import Foundation

struct Badge: Codable {
    var id = UUID()
    var image_url: String
    var profileImagesURL: [Ego : String]
    //    var label: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case image_url
        case profileImagesURL
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try values.decode(UUID.self, forKey: .id)
        self.image_url = try values.decode(String.self, forKey: .image_url)
        let stringDictionary = try values.decode([String: String].self, forKey: .profileImagesURL)
        
        profileImagesURL = [:]
        for (stringKey, value) in stringDictionary {
            guard let key = Ego(rawValue: stringKey) else {
                throw DecodingError.dataCorruptedError(
                    forKey: .profileImagesURL,
                    in: values,
                    debugDescription: "Invalid key '\(stringKey)'"
                )
            }
            profileImagesURL[key] = value
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        let stringDictionary: [String: String] = Dictionary(
            uniqueKeysWithValues: profileImagesURL.map { ($0.rawValue, $1) }
        )
        var container = encoder.singleValueContainer()
        try container.encode(stringDictionary)
    }
    
    init(image_url: String, profileImagesURL: [Ego : String]) {
        self.image_url = image_url
        self.profileImagesURL = profileImagesURL
        //        self.label = label
    }
}
