//  This file was automatically generated and should not be edited.

import Apollo

/// The input BEX context used for identifying users, sites and other platform functions
public struct ContextInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(clientInfo: Swift.Optional<ClientInfoInput?> = nil, currency: Swift.Optional<String?> = nil, debugContext: Swift.Optional<DebugContextInput?> = nil, device: DeviceInput, eapid: Swift.Optional<Int?> = nil, identity: IdentityInput, locale: String, siteId: Int) {
    graphQLMap = ["clientInfo": clientInfo, "currency": currency, "debugContext": debugContext, "device": device, "eapid": eapid, "identity": identity, "locale": locale, "siteId": siteId]
  }

  /// Information regarding the application which triggered the query
  public var clientInfo: Swift.Optional<ClientInfoInput?> {
    get {
      return graphQLMap["clientInfo"] as! Swift.Optional<ClientInfoInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientInfo")
    }
  }

  /// Currency as Alphabetic ISO 4217 code e.g. 'USD'. Use if default currency for Locale needs to be overwritten.
  public var currency: Swift.Optional<String?> {
    get {
      return graphQLMap["currency"] as! Swift.Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "currency")
    }
  }

  /// Debugging context, such as Abacus overrides
  public var debugContext: Swift.Optional<DebugContextInput?> {
    get {
      return graphQLMap["debugContext"] as! Swift.Optional<DebugContextInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "debugContext")
    }
  }

  /// Client/user Device information
  public var device: DeviceInput {
    get {
      return graphQLMap["device"] as! DeviceInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "device")
    }
  }

  /// The Expedia Affiliate Partner ID
  public var eapid: Swift.Optional<Int?> {
    get {
      return graphQLMap["eapid"] as! Swift.Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eapid")
    }
  }

  /// Client/user information
  public var identity: IdentityInput {
    get {
      return graphQLMap["identity"] as! IdentityInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "identity")
    }
  }

  /// The context locale, e.g. "en_US"
  public var locale: String {
    get {
      return graphQLMap["locale"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locale")
    }
  }

  /// The context Site ID, e.g. (70201 for Orbitz)
  public var siteId: Int {
    get {
      return graphQLMap["siteId"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "siteId")
    }
  }
}

/// Describe which application is invoking bex api
public struct ClientInfoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, version: Swift.Optional<String?> = nil) {
    graphQLMap = ["name": name, "version": version]
  }

  /// Name of the application
  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  /// Version of the application eg:18.10 or 5fbc9958
  public var version: Swift.Optional<String?> {
    get {
      return graphQLMap["version"] as! Swift.Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "version")
    }
  }
}

/// Context used for debugging purposes, such as overriding Abacus experiments
public struct DebugContextInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(abacusOverrides: [ExposureInput]) {
    graphQLMap = ["abacusOverrides": abacusOverrides]
  }

  /// Abacus exposure overrides to be applied
  public var abacusOverrides: [ExposureInput] {
    get {
      return graphQLMap["abacusOverrides"] as! [ExposureInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "abacusOverrides")
    }
  }
}

/// An exposure to an abacus experiment
public struct ExposureInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(bucket: Int, id: String) {
    graphQLMap = ["bucket": bucket, "id": id]
  }

  /// The experiment bucket of the exposure
  public var bucket: Int {
    get {
      return graphQLMap["bucket"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bucket")
    }
  }

  /// The numeric Abacus ID for an experiment
  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

/// Device information
public struct DeviceInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(type: DeviceType) {
    graphQLMap = ["type": type]
  }

  public var type: DeviceType {
    get {
      return graphQLMap["type"] as! DeviceType
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }
}

/// Valid device types
public enum DeviceType: RawRepresentable, Equatable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case desktop
  case mobilePhone
  case mobileTablet
  case appPhone
  case appTablet
  case chatApp
  case voiceApp
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DESKTOP": self = .desktop
      case "MOBILE_PHONE": self = .mobilePhone
      case "MOBILE_TABLET": self = .mobileTablet
      case "APP_PHONE": self = .appPhone
      case "APP_TABLET": self = .appTablet
      case "CHAT_APP": self = .chatApp
      case "VOICE_APP": self = .voiceApp
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .desktop: return "DESKTOP"
      case .mobilePhone: return "MOBILE_PHONE"
      case .mobileTablet: return "MOBILE_TABLET"
      case .appPhone: return "APP_PHONE"
      case .appTablet: return "APP_TABLET"
      case .chatApp: return "CHAT_APP"
      case .voiceApp: return "VOICE_APP"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: DeviceType, rhs: DeviceType) -> Bool {
    switch (lhs, rhs) {
      case (.desktop, .desktop): return true
      case (.mobilePhone, .mobilePhone): return true
      case (.mobileTablet, .mobileTablet): return true
      case (.appPhone, .appPhone): return true
      case (.appTablet, .appTablet): return true
      case (.chatApp, .chatApp): return true
      case (.voiceApp, .voiceApp): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

/// Identity information for a specific user or device
public struct IdentityInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(authState: Swift.Optional<AuthenticationState?> = nil, duaid: String, expUserId: Swift.Optional<String?> = nil, tuid: Swift.Optional<String?> = nil) {
    graphQLMap = ["authState": authState, "duaid": duaid, "expUserId": expUserId, "tuid": tuid]
  }

  /// The Expedia user authenticated state
  public var authState: Swift.Optional<AuthenticationState?> {
    get {
      return graphQLMap["authState"] as! Swift.Optional<AuthenticationState?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authState")
    }
  }

  /// The device ID (DUAID)
  public var duaid: String {
    get {
      return graphQLMap["duaid"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "duaid")
    }
  }

  /// The Expedia User ID
  public var expUserId: Swift.Optional<String?> {
    get {
      return graphQLMap["expUserId"] as! Swift.Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "expUserId")
    }
  }

  /// The user TUID
  public var tuid: Swift.Optional<String?> {
    get {
      return graphQLMap["tuid"] as! Swift.Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tuid")
    }
  }
}

public enum AuthenticationState: RawRepresentable, Equatable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case anonymous
  case identified
  case authenticated
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ANONYMOUS": self = .anonymous
      case "IDENTIFIED": self = .identified
      case "AUTHENTICATED": self = .authenticated
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .anonymous: return "ANONYMOUS"
      case .identified: return "IDENTIFIED"
      case .authenticated: return "AUTHENTICATED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: AuthenticationState, rhs: AuthenticationState) -> Bool {
    switch (lhs, rhs) {
      case (.anonymous, .anonymous): return true
      case (.identified, .identified): return true
      case (.authenticated, .authenticated): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

/// Activity search region information
public struct ActivityRegionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(regionId: Swift.Optional<String?> = nil, regionName: Swift.Optional<String?> = nil) {
    graphQLMap = ["regionId": regionId, "regionName": regionName]
  }

  /// Gaia region ID of the search
  public var regionId: Swift.Optional<String?> {
    get {
      return graphQLMap["regionId"] as! Swift.Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "regionId")
    }
  }

  /// Name of the region, used for fuzzy resolution
  public var regionName: Swift.Optional<String?> {
    get {
      return graphQLMap["regionName"] as! Swift.Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "regionName")
    }
  }
}

public struct ActivityDateRangeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(endDate: DateInput, startDate: DateInput) {
    graphQLMap = ["endDate": endDate, "startDate": startDate]
  }

  public var endDate: DateInput {
    get {
      return graphQLMap["endDate"] as! DateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endDate")
    }
  }

  public var startDate: DateInput {
    get {
      return graphQLMap["startDate"] as! DateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }
}

/// A common date object
public struct DateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(day: Int, month: Int, year: Int) {
    graphQLMap = ["day": day, "month": month, "year": year]
  }

  /// The day of the month, e.g. `1` for the 1st
  public var day: Int {
    get {
      return graphQLMap["day"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  /// The numeric month, e.g. `1` for January
  public var month: Int {
    get {
      return graphQLMap["month"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "month")
    }
  }

  /// The four-digit year e.g. `1999`
  public var year: Int {
    get {
      return graphQLMap["year"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "year")
    }
  }
}

/// Activity search filtering options
public struct ActivitySearchFiltersInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(categories: Swift.Optional<[ActivityCategory]?> = nil) {
    graphQLMap = ["categories": categories]
  }

  /// Filter results by activity category
  public var categories: Swift.Optional<[ActivityCategory]?> {
    get {
      return graphQLMap["categories"] as! Swift.Optional<[ActivityCategory]?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "categories")
    }
  }
}

public enum ActivityCategory: RawRepresentable, Equatable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case adventures
  case airBalloonHelicopterTours
  case attractions
  case beyondTheCity
  case cirque
  case cruisesWaterTours
  case dayTripsExcursions
  case disney
  case doseOfCulture
  case familyFriendly
  case foodDrink
  case funForFoodies
  case funOnTheWater
  case gamesShowsSpecialEvents
  case gettingAround
  case hopOnHopOff
  case latestGreatest
  case likelyToSellOut
  case localExpertPicks
  case multiDayExtendedTours
  case mustSeeSights
  case na
  case new
  case nightlife
  case privateTours
  case privateTransfers
  case pureRomance
  case romanStaycation
  case sharedTransfers
  case showSportTickets
  case sightseeingPasses
  case spa
  case stayActive
  case themeParks
  case theGreatOutdoors
  case thrillSeeker
  case toursSightseeing
  case treatYourself
  case walkingBikeTours
  case waterActivities
  case weddingCeremonies
  case whatToDoWithGroups
  case whatToDoWithKids
  case winterActivities
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ADVENTURES": self = .adventures
      case "AIR_BALLOON_HELICOPTER_TOURS": self = .airBalloonHelicopterTours
      case "ATTRACTIONS": self = .attractions
      case "BEYOND_THE_CITY": self = .beyondTheCity
      case "CIRQUE": self = .cirque
      case "CRUISES_WATER_TOURS": self = .cruisesWaterTours
      case "DAY_TRIPS_EXCURSIONS": self = .dayTripsExcursions
      case "DISNEY": self = .disney
      case "DOSE_OF_CULTURE": self = .doseOfCulture
      case "FAMILY_FRIENDLY": self = .familyFriendly
      case "FOOD_DRINK": self = .foodDrink
      case "FUN_FOR_FOODIES": self = .funForFoodies
      case "FUN_ON_THE_WATER": self = .funOnTheWater
      case "GAMES_SHOWS_SPECIAL_EVENTS": self = .gamesShowsSpecialEvents
      case "GETTING_AROUND": self = .gettingAround
      case "HOP_ON_HOP_OFF": self = .hopOnHopOff
      case "LATEST_GREATEST": self = .latestGreatest
      case "LIKELY_TO_SELL_OUT": self = .likelyToSellOut
      case "LOCAL_EXPERT_PICKS": self = .localExpertPicks
      case "MULTI_DAY_EXTENDED_TOURS": self = .multiDayExtendedTours
      case "MUST_SEE_SIGHTS": self = .mustSeeSights
      case "NA": self = .na
      case "NEW": self = .new
      case "NIGHTLIFE": self = .nightlife
      case "PRIVATE_TOURS": self = .privateTours
      case "PRIVATE_TRANSFERS": self = .privateTransfers
      case "PURE_ROMANCE": self = .pureRomance
      case "ROMAN_STAYCATION": self = .romanStaycation
      case "SHARED_TRANSFERS": self = .sharedTransfers
      case "SHOW_SPORT_TICKETS": self = .showSportTickets
      case "SIGHTSEEING_PASSES": self = .sightseeingPasses
      case "SPA": self = .spa
      case "STAY_ACTIVE": self = .stayActive
      case "THEME_PARKS": self = .themeParks
      case "THE_GREAT_OUTDOORS": self = .theGreatOutdoors
      case "THRILL_SEEKER": self = .thrillSeeker
      case "TOURS_SIGHTSEEING": self = .toursSightseeing
      case "TREAT_YOURSELF": self = .treatYourself
      case "WALKING_BIKE_TOURS": self = .walkingBikeTours
      case "WATER_ACTIVITIES": self = .waterActivities
      case "WEDDING_CEREMONIES": self = .weddingCeremonies
      case "WHAT_TO_DO_WITH_GROUPS": self = .whatToDoWithGroups
      case "WHAT_TO_DO_WITH_KIDS": self = .whatToDoWithKids
      case "WINTER_ACTIVITIES": self = .winterActivities
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .adventures: return "ADVENTURES"
      case .airBalloonHelicopterTours: return "AIR_BALLOON_HELICOPTER_TOURS"
      case .attractions: return "ATTRACTIONS"
      case .beyondTheCity: return "BEYOND_THE_CITY"
      case .cirque: return "CIRQUE"
      case .cruisesWaterTours: return "CRUISES_WATER_TOURS"
      case .dayTripsExcursions: return "DAY_TRIPS_EXCURSIONS"
      case .disney: return "DISNEY"
      case .doseOfCulture: return "DOSE_OF_CULTURE"
      case .familyFriendly: return "FAMILY_FRIENDLY"
      case .foodDrink: return "FOOD_DRINK"
      case .funForFoodies: return "FUN_FOR_FOODIES"
      case .funOnTheWater: return "FUN_ON_THE_WATER"
      case .gamesShowsSpecialEvents: return "GAMES_SHOWS_SPECIAL_EVENTS"
      case .gettingAround: return "GETTING_AROUND"
      case .hopOnHopOff: return "HOP_ON_HOP_OFF"
      case .latestGreatest: return "LATEST_GREATEST"
      case .likelyToSellOut: return "LIKELY_TO_SELL_OUT"
      case .localExpertPicks: return "LOCAL_EXPERT_PICKS"
      case .multiDayExtendedTours: return "MULTI_DAY_EXTENDED_TOURS"
      case .mustSeeSights: return "MUST_SEE_SIGHTS"
      case .na: return "NA"
      case .new: return "NEW"
      case .nightlife: return "NIGHTLIFE"
      case .privateTours: return "PRIVATE_TOURS"
      case .privateTransfers: return "PRIVATE_TRANSFERS"
      case .pureRomance: return "PURE_ROMANCE"
      case .romanStaycation: return "ROMAN_STAYCATION"
      case .sharedTransfers: return "SHARED_TRANSFERS"
      case .showSportTickets: return "SHOW_SPORT_TICKETS"
      case .sightseeingPasses: return "SIGHTSEEING_PASSES"
      case .spa: return "SPA"
      case .stayActive: return "STAY_ACTIVE"
      case .themeParks: return "THEME_PARKS"
      case .theGreatOutdoors: return "THE_GREAT_OUTDOORS"
      case .thrillSeeker: return "THRILL_SEEKER"
      case .toursSightseeing: return "TOURS_SIGHTSEEING"
      case .treatYourself: return "TREAT_YOURSELF"
      case .walkingBikeTours: return "WALKING_BIKE_TOURS"
      case .waterActivities: return "WATER_ACTIVITIES"
      case .weddingCeremonies: return "WEDDING_CEREMONIES"
      case .whatToDoWithGroups: return "WHAT_TO_DO_WITH_GROUPS"
      case .whatToDoWithKids: return "WHAT_TO_DO_WITH_KIDS"
      case .winterActivities: return "WINTER_ACTIVITIES"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ActivityCategory, rhs: ActivityCategory) -> Bool {
    switch (lhs, rhs) {
      case (.adventures, .adventures): return true
      case (.airBalloonHelicopterTours, .airBalloonHelicopterTours): return true
      case (.attractions, .attractions): return true
      case (.beyondTheCity, .beyondTheCity): return true
      case (.cirque, .cirque): return true
      case (.cruisesWaterTours, .cruisesWaterTours): return true
      case (.dayTripsExcursions, .dayTripsExcursions): return true
      case (.disney, .disney): return true
      case (.doseOfCulture, .doseOfCulture): return true
      case (.familyFriendly, .familyFriendly): return true
      case (.foodDrink, .foodDrink): return true
      case (.funForFoodies, .funForFoodies): return true
      case (.funOnTheWater, .funOnTheWater): return true
      case (.gamesShowsSpecialEvents, .gamesShowsSpecialEvents): return true
      case (.gettingAround, .gettingAround): return true
      case (.hopOnHopOff, .hopOnHopOff): return true
      case (.latestGreatest, .latestGreatest): return true
      case (.likelyToSellOut, .likelyToSellOut): return true
      case (.localExpertPicks, .localExpertPicks): return true
      case (.multiDayExtendedTours, .multiDayExtendedTours): return true
      case (.mustSeeSights, .mustSeeSights): return true
      case (.na, .na): return true
      case (.new, .new): return true
      case (.nightlife, .nightlife): return true
      case (.privateTours, .privateTours): return true
      case (.privateTransfers, .privateTransfers): return true
      case (.pureRomance, .pureRomance): return true
      case (.romanStaycation, .romanStaycation): return true
      case (.sharedTransfers, .sharedTransfers): return true
      case (.showSportTickets, .showSportTickets): return true
      case (.sightseeingPasses, .sightseeingPasses): return true
      case (.spa, .spa): return true
      case (.stayActive, .stayActive): return true
      case (.themeParks, .themeParks): return true
      case (.theGreatOutdoors, .theGreatOutdoors): return true
      case (.thrillSeeker, .thrillSeeker): return true
      case (.toursSightseeing, .toursSightseeing): return true
      case (.treatYourself, .treatYourself): return true
      case (.walkingBikeTours, .walkingBikeTours): return true
      case (.waterActivities, .waterActivities): return true
      case (.weddingCeremonies, .weddingCeremonies): return true
      case (.whatToDoWithGroups, .whatToDoWithGroups): return true
      case (.whatToDoWithKids, .whatToDoWithKids): return true
      case (.winterActivities, .winterActivities): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public enum ActivityDiscountType: RawRepresentable, Equatable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case airAttachMip
  case airHotelAttachMip
  case hotelAttachMip
  case mod
  case strikeOut
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "AIR_ATTACH_MIP": self = .airAttachMip
      case "AIR_HOTEL_ATTACH_MIP": self = .airHotelAttachMip
      case "HOTEL_ATTACH_MIP": self = .hotelAttachMip
      case "MOD": self = .mod
      case "STRIKE_OUT": self = .strikeOut
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .airAttachMip: return "AIR_ATTACH_MIP"
      case .airHotelAttachMip: return "AIR_HOTEL_ATTACH_MIP"
      case .hotelAttachMip: return "HOTEL_ATTACH_MIP"
      case .mod: return "MOD"
      case .strikeOut: return "STRIKE_OUT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ActivityDiscountType, rhs: ActivityDiscountType) -> Bool {
    switch (lhs, rhs) {
      case (.airAttachMip, .airAttachMip): return true
      case (.airHotelAttachMip, .airHotelAttachMip): return true
      case (.hotelAttachMip, .hotelAttachMip): return true
      case (.mod, .mod): return true
      case (.strikeOut, .strikeOut): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public enum ActivityCategoryType: RawRepresentable, Equatable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case activities
  case categories
  case dealsPromotions
  case na
  case recommendations
  case tours
  case transportation
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVITIES": self = .activities
      case "CATEGORIES": self = .categories
      case "DEALS_PROMOTIONS": self = .dealsPromotions
      case "NA": self = .na
      case "RECOMMENDATIONS": self = .recommendations
      case "TOURS": self = .tours
      case "TRANSPORTATION": self = .transportation
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .activities: return "ACTIVITIES"
      case .categories: return "CATEGORIES"
      case .dealsPromotions: return "DEALS_PROMOTIONS"
      case .na: return "NA"
      case .recommendations: return "RECOMMENDATIONS"
      case .tours: return "TOURS"
      case .transportation: return "TRANSPORTATION"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ActivityCategoryType, rhs: ActivityCategoryType) -> Bool {
    switch (lhs, rhs) {
      case (.activities, .activities): return true
      case (.categories, .categories): return true
      case (.dealsPromotions, .dealsPromotions): return true
      case (.na, .na): return true
      case (.recommendations, .recommendations): return true
      case (.tours, .tours): return true
      case (.transportation, .transportation): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public final class ActivitySearchQuery: GraphQLQuery {
  public let operationDefinition =
    "query activitySearch($context: ContextInput!, $region: ActivityRegionInput!, $dateRange: ActivityDateRangeInput, $filters: ActivitySearchFiltersInput) {\n  activitySearch(context: $context, region: $region, dateRange: $dateRange, filters: $filters) {\n    __typename\n    activities {\n      __typename\n      categoryDetails {\n        __typename\n        name\n        category\n      }\n      description\n      duration {\n        __typename\n        formatted\n      }\n      id\n      image {\n        __typename\n        url\n      }\n      leadTicket {\n        __typename\n        label\n        price {\n          __typename\n          lead {\n            __typename\n            currency {\n              __typename\n              code\n            }\n            raw\n          }\n          strikeOut {\n            __typename\n            currency {\n              __typename\n              code\n            }\n            raw\n          }\n        }\n      }\n      name\n      priceMetadata {\n        __typename\n        discountPercent\n        discountType\n      }\n      redemption {\n        __typename\n        locations {\n          __typename\n          latitude\n          longitude\n        }\n      }\n      reviewSummary {\n        __typename\n        score {\n          __typename\n          raw\n        }\n        total\n      }\n    }\n    searchSummary {\n      __typename\n      resolvedRegion {\n        __typename\n        regionName\n      }\n    }\n    sortAndFilter {\n      __typename\n      categoryFilterOptions {\n        __typename\n        displayOrder\n        name\n        summary {\n          __typename\n          details {\n            __typename\n            category\n            name\n          }\n          size\n        }\n        type\n      }\n    }\n  }\n}"

  public var context: ContextInput
  public var region: ActivityRegionInput
  public var dateRange: ActivityDateRangeInput?
  public var filters: ActivitySearchFiltersInput?

  public init(context: ContextInput, region: ActivityRegionInput, dateRange: ActivityDateRangeInput? = nil, filters: ActivitySearchFiltersInput? = nil) {
    self.context = context
    self.region = region
    self.dateRange = dateRange
    self.filters = filters
  }

  public var variables: GraphQLMap? {
    return ["context": context, "region": region, "dateRange": dateRange, "filters": filters]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("activitySearch", arguments: ["context": GraphQLVariable("context"), "region": GraphQLVariable("region"), "dateRange": GraphQLVariable("dateRange"), "filters": GraphQLVariable("filters")], type: .nonNull(.object(ActivitySearch.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(activitySearch: ActivitySearch) {
      self.init(unsafeResultMap: ["__typename": "Query", "activitySearch": activitySearch.resultMap])
    }

    /// Search for activities
    public var activitySearch: ActivitySearch {
      get {
        return ActivitySearch(unsafeResultMap: resultMap["activitySearch"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "activitySearch")
      }
    }

    public struct ActivitySearch: GraphQLSelectionSet {
      public static let possibleTypes = ["ActivitySearchResults"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("activities", type: .nonNull(.list(.nonNull(.object(Activity.selections))))),
        GraphQLField("searchSummary", type: .nonNull(.object(SearchSummary.selections))),
        GraphQLField("sortAndFilter", type: .nonNull(.object(SortAndFilter.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(activities: [Activity], searchSummary: SearchSummary, sortAndFilter: SortAndFilter) {
        self.init(unsafeResultMap: ["__typename": "ActivitySearchResults", "activities": activities.map { (value: Activity) -> ResultMap in value.resultMap }, "searchSummary": searchSummary.resultMap, "sortAndFilter": sortAndFilter.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Activities returned from the search, sorted in the order specified or in default recommended order
      public var activities: [Activity] {
        get {
          return (resultMap["activities"] as! [ResultMap]).map { (value: ResultMap) -> Activity in Activity(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Activity) -> ResultMap in value.resultMap }, forKey: "activities")
        }
      }

      /// Insights about search results such as resolved-location, validated dates, activity count
      public var searchSummary: SearchSummary {
        get {
          return SearchSummary(unsafeResultMap: resultMap["searchSummary"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "searchSummary")
        }
      }

      /// Sort And Filter Selected Options, Defaults if necessary, and display options
      public var sortAndFilter: SortAndFilter {
        get {
          return SortAndFilter(unsafeResultMap: resultMap["sortAndFilter"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "sortAndFilter")
        }
      }

      public struct Activity: GraphQLSelectionSet {
        public static let possibleTypes = ["Activity"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categoryDetails", type: .list(.object(CategoryDetail.selections))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("duration", type: .nonNull(.object(Duration.selections))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("image", type: .object(Image.selections)),
          GraphQLField("leadTicket", type: .nonNull(.object(LeadTicket.selections))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("priceMetadata", type: .object(PriceMetadatum.selections)),
          GraphQLField("redemption", type: .object(Redemption.selections)),
          GraphQLField("reviewSummary", type: .object(ReviewSummary.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(categoryDetails: [CategoryDetail?]? = nil, description: String? = nil, duration: Duration, id: String, image: Image? = nil, leadTicket: LeadTicket, name: String, priceMetadata: PriceMetadatum? = nil, redemption: Redemption? = nil, reviewSummary: ReviewSummary? = nil) {
          self.init(unsafeResultMap: ["__typename": "Activity", "categoryDetails": categoryDetails.flatMap { (value: [CategoryDetail?]) -> [ResultMap?] in value.map { (value: CategoryDetail?) -> ResultMap? in value.flatMap { (value: CategoryDetail) -> ResultMap in value.resultMap } } }, "description": description, "duration": duration.resultMap, "id": id, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }, "leadTicket": leadTicket.resultMap, "name": name, "priceMetadata": priceMetadata.flatMap { (value: PriceMetadatum) -> ResultMap in value.resultMap }, "redemption": redemption.flatMap { (value: Redemption) -> ResultMap in value.resultMap }, "reviewSummary": reviewSummary.flatMap { (value: ReviewSummary) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Details of categories with which activity is associated with
        public var categoryDetails: [CategoryDetail?]? {
          get {
            return (resultMap["categoryDetails"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [CategoryDetail?] in value.map { (value: ResultMap?) -> CategoryDetail? in value.flatMap { (value: ResultMap) -> CategoryDetail in CategoryDetail(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [CategoryDetail?]) -> [ResultMap?] in value.map { (value: CategoryDetail?) -> ResultMap? in value.flatMap { (value: CategoryDetail) -> ResultMap in value.resultMap } } }, forKey: "categoryDetails")
          }
        }

        /// Short description of activity, limits to 160 characters including ellipsis
        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        /// Duration of activity
        public var duration: Duration {
          get {
            return Duration(unsafeResultMap: resultMap["duration"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "duration")
          }
        }

        /// Activity's unique identifier
        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// Featured activity image
        public var image: Image? {
          get {
            return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "image")
          }
        }

        /// Lead activity ticket
        public var leadTicket: LeadTicket {
          get {
            return LeadTicket(unsafeResultMap: resultMap["leadTicket"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "leadTicket")
          }
        }

        /// Localized name of activity
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// Details about applied price discounts
        public var priceMetadata: PriceMetadatum? {
          get {
            return (resultMap["priceMetadata"] as? ResultMap).flatMap { PriceMetadatum(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "priceMetadata")
          }
        }

        /// Activity redemption details, like redemption-location and redeption-type
        public var redemption: Redemption? {
          get {
            return (resultMap["redemption"] as? ResultMap).flatMap { Redemption(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "redemption")
          }
        }

        /// Customer review summary information
        public var reviewSummary: ReviewSummary? {
          get {
            return (resultMap["reviewSummary"] as? ResultMap).flatMap { ReviewSummary(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "reviewSummary")
          }
        }

        public struct CategoryDetail: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityCategoryDetails"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("category", type: .nonNull(.scalar(ActivityCategory.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String, category: ActivityCategory) {
            self.init(unsafeResultMap: ["__typename": "ActivityCategoryDetails", "name": name, "category": category])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// localized name of category
          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var category: ActivityCategory {
            get {
              return resultMap["category"]! as! ActivityCategory
            }
            set {
              resultMap.updateValue(newValue, forKey: "category")
            }
          }
        }

        public struct Duration: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityDuration"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("formatted", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(formatted: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "ActivityDuration", "formatted": formatted])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// formatted duration, e.g. 1h+, 15 分, 1h 30m
          public var formatted: String? {
            get {
              return resultMap["formatted"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "formatted")
            }
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes = ["Image"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(url: String) {
            self.init(unsafeResultMap: ["__typename": "Image", "url": url])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var url: String {
            get {
              return resultMap["url"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "url")
            }
          }
        }

        public struct LeadTicket: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivitySearchTicket"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("label", type: .scalar(String.self)),
            GraphQLField("price", type: .object(Price.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(label: String? = nil, price: Price? = nil) {
            self.init(unsafeResultMap: ["__typename": "ActivitySearchTicket", "label": label, "price": price.flatMap { (value: Price) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Localized ticket label for ticket one ticket, e.g. [per Adult], [par voyageur]
          public var label: String? {
            get {
              return resultMap["label"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "label")
            }
          }

          /// Lead price of activity
          public var price: Price? {
            get {
              return (resultMap["price"] as? ResultMap).flatMap { Price(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "price")
            }
          }

          public struct Price: GraphQLSelectionSet {
            public static let possibleTypes = ["ActivityPrice"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("lead", type: .nonNull(.object(Lead.selections))),
              GraphQLField("strikeOut", type: .nonNull(.object(StrikeOut.selections))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(lead: Lead, strikeOut: StrikeOut) {
              self.init(unsafeResultMap: ["__typename": "ActivityPrice", "lead": lead.resultMap, "strikeOut": strikeOut.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// lead or retail price
            public var lead: Lead {
              get {
                return Lead(unsafeResultMap: resultMap["lead"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "lead")
              }
            }

            /// strike-out or reference price
            public var strikeOut: StrikeOut {
              get {
                return StrikeOut(unsafeResultMap: resultMap["strikeOut"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "strikeOut")
              }
            }

            public struct Lead: GraphQLSelectionSet {
              public static let possibleTypes = ["Money"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("currency", type: .nonNull(.object(Currency.selections))),
                GraphQLField("raw", type: .nonNull(.scalar(Double.self))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(currency: Currency, raw: Double) {
                self.init(unsafeResultMap: ["__typename": "Money", "currency": currency.resultMap, "raw": raw])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Currency information about the price
              public var currency: Currency {
                get {
                  return Currency(unsafeResultMap: resultMap["currency"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "currency")
                }
              }

              /// The raw numeric price
              public var raw: Double {
                get {
                  return resultMap["raw"]! as! Double
                }
                set {
                  resultMap.updateValue(newValue, forKey: "raw")
                }
              }

              public struct Currency: GraphQLSelectionSet {
                public static let possibleTypes = ["Currency"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("code", type: .nonNull(.scalar(String.self))),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(code: String) {
                  self.init(unsafeResultMap: ["__typename": "Currency", "code": code])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// The ISO 4217 3-letter code for this currency
                public var code: String {
                  get {
                    return resultMap["code"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "code")
                  }
                }
              }
            }

            public struct StrikeOut: GraphQLSelectionSet {
              public static let possibleTypes = ["Money"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("currency", type: .nonNull(.object(Currency.selections))),
                GraphQLField("raw", type: .nonNull(.scalar(Double.self))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(currency: Currency, raw: Double) {
                self.init(unsafeResultMap: ["__typename": "Money", "currency": currency.resultMap, "raw": raw])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Currency information about the price
              public var currency: Currency {
                get {
                  return Currency(unsafeResultMap: resultMap["currency"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "currency")
                }
              }

              /// The raw numeric price
              public var raw: Double {
                get {
                  return resultMap["raw"]! as! Double
                }
                set {
                  resultMap.updateValue(newValue, forKey: "raw")
                }
              }

              public struct Currency: GraphQLSelectionSet {
                public static let possibleTypes = ["Currency"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("code", type: .nonNull(.scalar(String.self))),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(code: String) {
                  self.init(unsafeResultMap: ["__typename": "Currency", "code": code])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// The ISO 4217 3-letter code for this currency
                public var code: String {
                  get {
                    return resultMap["code"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "code")
                  }
                }
              }
            }
          }
        }

        public struct PriceMetadatum: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityPriceMetadata"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("discountPercent", type: .scalar(String.self)),
            GraphQLField("discountType", type: .scalar(ActivityDiscountType.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(discountPercent: String? = nil, discountType: ActivityDiscountType? = nil) {
            self.init(unsafeResultMap: ["__typename": "ActivityPriceMetadata", "discountPercent": discountPercent, "discountType": discountType])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// localized discount percent for this activity price
          public var discountPercent: String? {
            get {
              return resultMap["discountPercent"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "discountPercent")
            }
          }

          /// type of discount available for this activity price
          public var discountType: ActivityDiscountType? {
            get {
              return resultMap["discountType"] as? ActivityDiscountType
            }
            set {
              resultMap.updateValue(newValue, forKey: "discountType")
            }
          }
        }

        public struct Redemption: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityRedemption"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("locations", type: .list(.nonNull(.object(Location.selections)))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(locations: [Location]? = nil) {
            self.init(unsafeResultMap: ["__typename": "ActivityRedemption", "locations": locations.flatMap { (value: [Location]) -> [ResultMap] in value.map { (value: Location) -> ResultMap in value.resultMap } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Geo-coordinates of activity redemption points
          public var locations: [Location]? {
            get {
              return (resultMap["locations"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Location] in value.map { (value: ResultMap) -> Location in Location(unsafeResultMap: value) } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Location]) -> [ResultMap] in value.map { (value: Location) -> ResultMap in value.resultMap } }, forKey: "locations")
            }
          }

          public struct Location: GraphQLSelectionSet {
            public static let possibleTypes = ["Coordinates"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("latitude", type: .nonNull(.scalar(Double.self))),
              GraphQLField("longitude", type: .nonNull(.scalar(Double.self))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(latitude: Double, longitude: Double) {
              self.init(unsafeResultMap: ["__typename": "Coordinates", "latitude": latitude, "longitude": longitude])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The latitude of the point in degrees
            public var latitude: Double {
              get {
                return resultMap["latitude"]! as! Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "latitude")
              }
            }

            /// The longitude of the point in degrees
            public var longitude: Double {
              get {
                return resultMap["longitude"]! as! Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "longitude")
              }
            }
          }
        }

        public struct ReviewSummary: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityReviewsSummary"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("score", type: .nonNull(.object(Score.selections))),
            GraphQLField("total", type: .nonNull(.scalar(String.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(score: Score, total: String) {
            self.init(unsafeResultMap: ["__typename": "ActivityReviewsSummary", "score": score.resultMap, "total": total])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Average review score of an activity on the scale of 5
          public var score: Score {
            get {
              return Score(unsafeResultMap: resultMap["score"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "score")
            }
          }

          /// Total number of reviews for an activity
          public var total: String {
            get {
              return resultMap["total"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "total")
            }
          }

          public struct Score: GraphQLSelectionSet {
            public static let possibleTypes = ["FormattedNumber"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("raw", type: .nonNull(.scalar(Double.self))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(raw: Double) {
              self.init(unsafeResultMap: ["__typename": "FormattedNumber", "raw": raw])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The raw number value
            public var raw: Double {
              get {
                return resultMap["raw"]! as! Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "raw")
              }
            }
          }
        }
      }

      public struct SearchSummary: GraphQLSelectionSet {
        public static let possibleTypes = ["ActivitySearchSummary"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("resolvedRegion", type: .object(ResolvedRegion.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(resolvedRegion: ResolvedRegion? = nil) {
          self.init(unsafeResultMap: ["__typename": "ActivitySearchSummary", "resolvedRegion": resolvedRegion.flatMap { (value: ResolvedRegion) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Details region resolved from search-query for returning activities
        public var resolvedRegion: ResolvedRegion? {
          get {
            return (resultMap["resolvedRegion"] as? ResultMap).flatMap { ResolvedRegion(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "resolvedRegion")
          }
        }

        public struct ResolvedRegion: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityRegion"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("regionName", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(regionName: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "ActivityRegion", "regionName": regionName])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Name of the region, used for fuzzy resolution
          public var regionName: String? {
            get {
              return resultMap["regionName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "regionName")
            }
          }
        }
      }

      public struct SortAndFilter: GraphQLSelectionSet {
        public static let possibleTypes = ["ActivitySortAndFilter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("categoryFilterOptions", type: .list(.nonNull(.object(CategoryFilterOption.selections)))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(categoryFilterOptions: [CategoryFilterOption]? = nil) {
          self.init(unsafeResultMap: ["__typename": "ActivitySortAndFilter", "categoryFilterOptions": categoryFilterOptions.flatMap { (value: [CategoryFilterOption]) -> [ResultMap] in value.map { (value: CategoryFilterOption) -> ResultMap in value.resultMap } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// category-wise filter display options over raw activity search results
        public var categoryFilterOptions: [CategoryFilterOption]? {
          get {
            return (resultMap["categoryFilterOptions"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [CategoryFilterOption] in value.map { (value: ResultMap) -> CategoryFilterOption in CategoryFilterOption(unsafeResultMap: value) } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [CategoryFilterOption]) -> [ResultMap] in value.map { (value: CategoryFilterOption) -> ResultMap in value.resultMap } }, forKey: "categoryFilterOptions")
          }
        }

        public struct CategoryFilterOption: GraphQLSelectionSet {
          public static let possibleTypes = ["CategoryFilterViewModel"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("displayOrder", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("summary", type: .list(.nonNull(.object(Summary.selections)))),
            GraphQLField("type", type: .nonNull(.scalar(ActivityCategoryType.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(displayOrder: Int, name: String, summary: [Summary]? = nil, type: ActivityCategoryType) {
            self.init(unsafeResultMap: ["__typename": "CategoryFilterViewModel", "displayOrder": displayOrder, "name": name, "summary": summary.flatMap { (value: [Summary]) -> [ResultMap] in value.map { (value: Summary) -> ResultMap in value.resultMap } }, "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Recommended display order of category-type in filter view model
          public var displayOrder: Int {
            get {
              return resultMap["displayOrder"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "displayOrder")
            }
          }

          /// Localized name of category-type
          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// Filter summary of categories over raw activity search result
          public var summary: [Summary]? {
            get {
              return (resultMap["summary"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Summary] in value.map { (value: ResultMap) -> Summary in Summary(unsafeResultMap: value) } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Summary]) -> [ResultMap] in value.map { (value: Summary) -> ResultMap in value.resultMap } }, forKey: "summary")
            }
          }

          /// Category-type is group of multiple categories, like bike-tour, hop-on-hop-off-tour, sightseeing are TOURS
          public var type: ActivityCategoryType {
            get {
              return resultMap["type"]! as! ActivityCategoryType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public struct Summary: GraphQLSelectionSet {
            public static let possibleTypes = ["CategoryFilterSummary"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("details", type: .nonNull(.object(Detail.selections))),
              GraphQLField("size", type: .nonNull(.scalar(Int.self))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(details: Detail, size: Int) {
              self.init(unsafeResultMap: ["__typename": "CategoryFilterSummary", "details": details.resultMap, "size": size])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var details: Detail {
              get {
                return Detail(unsafeResultMap: resultMap["details"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "details")
              }
            }

            /// count of activities associates with category in raw activity search result
            public var size: Int {
              get {
                return resultMap["size"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "size")
              }
            }

            public struct Detail: GraphQLSelectionSet {
              public static let possibleTypes = ["ActivityCategoryDetails"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("category", type: .nonNull(.scalar(ActivityCategory.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(category: ActivityCategory, name: String) {
                self.init(unsafeResultMap: ["__typename": "ActivityCategoryDetails", "category": category, "name": name])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var category: ActivityCategory {
                get {
                  return resultMap["category"]! as! ActivityCategory
                }
                set {
                  resultMap.updateValue(newValue, forKey: "category")
                }
              }

              /// localized name of category
              public var name: String {
                get {
                  return resultMap["name"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "name")
                }
              }
            }
          }
        }
      }
    }
  }
}