struct ActivitiesSearchResponse: Codable {
    let activities: [Activity]
    let filterCategories: [String: Category]
    let currencyCode: String
    let destination: String?
}

struct Activity: Codable {
    let id: String?
    let title: String?
    let imageUrl: String?
    let largeImageURL: String?
    let fromPriceValue: String?
    let fromOriginalPriceValue: String?
    let fromPriceLabel: String?
    let mipFromPriceValue: String?
    let mipFromPriceLabel: String?
    let mipFromOriginalPriceValue: String?
    let duration: String?
    let fromPriceTicketType: String?
    let discountPercentage: String?
    let mipDiscountPercentage: String?
    let categories: [String]?
    let scoreOutOf5: Double?
    let approvedReviewCount: Int?
    let redemptionLocations: [String]?
}

struct Category: Codable {
    let displayValue: String
    let count: Int
    let categoryRank: Int
    let categoryType: String
    let categoryTypeDisplayValue: String
}
