import Cocoa

let data = "[{\"form_id\":3465,\"canonical_name\":\"df_SAWERQ\",\"form_name\":\"Activity 4 with Images\",\"form_desc\":null}]".data(using: .utf8)!

struct Form: Codable {
    let id: Int
    let name: String
    let description: String?

    private enum CodingKeys: String, CodingKey {
        case id = "form_id"
        case name = "form_name"
        case description = "form_desc"
    }
}

do {
    let f = try JSONDecoder().decode([Form].self, from: data)
    print(f)
    print(f[0])
} catch {
    print(error)
}
