// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipAdvancedExperience: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case appClipAdvancedExperiences
	}

	public struct Attributes: Codable {
		public var link: URL?
		public var version: Int?
		public var status: Status?
		public var action: AppClipAction?
		public var isPoweredBy: Bool?
		public var place: Place?
		public var placeStatus: PlaceStatus?
		public var businessCategory: BusinessCategory?
		public var defaultLanguage: AppClipAdvancedExperienceLanguage?

		public enum Status: String, Codable, CaseIterable {
			case received = "RECEIVED"
			case deactivated = "DEACTIVATED"
			case appTransferInProgress = "APP_TRANSFER_IN_PROGRESS"
		}

		public struct Place: Codable {
			public var placeID: String?
			public var names: [String]?
			public var mainAddress: MainAddress?
			public var displayPoint: DisplayPoint?
			public var mapAction: MapAction?
			public var relationship: Relationship?
			public var phoneNumber: PhoneNumber?
			public var homePage: String?
			public var categories: [String]?

			public struct MainAddress: Codable {
				public var fullAddress: String?
				public var structuredAddress: StructuredAddress?

				public struct StructuredAddress: Codable {
					public var streetAddress: [String]?
					public var floor: String?
					public var neighborhood: String?
					public var locality: String?
					public var stateProvince: String?
					public var postalCode: String?
					public var countryCode: String?

					public init(streetAddress: [String]? = nil, floor: String? = nil, neighborhood: String? = nil, locality: String? = nil, stateProvince: String? = nil, postalCode: String? = nil, countryCode: String? = nil) {
						self.streetAddress = streetAddress
						self.floor = floor
						self.neighborhood = neighborhood
						self.locality = locality
						self.stateProvince = stateProvince
						self.postalCode = postalCode
						self.countryCode = countryCode
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.streetAddress = try values.decodeIfPresent([String].self, forKey: "streetAddress")
						self.floor = try values.decodeIfPresent(String.self, forKey: "floor")
						self.neighborhood = try values.decodeIfPresent(String.self, forKey: "neighborhood")
						self.locality = try values.decodeIfPresent(String.self, forKey: "locality")
						self.stateProvince = try values.decodeIfPresent(String.self, forKey: "stateProvince")
						self.postalCode = try values.decodeIfPresent(String.self, forKey: "postalCode")
						self.countryCode = try values.decodeIfPresent(String.self, forKey: "countryCode")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encodeIfPresent(streetAddress, forKey: "streetAddress")
						try values.encodeIfPresent(floor, forKey: "floor")
						try values.encodeIfPresent(neighborhood, forKey: "neighborhood")
						try values.encodeIfPresent(locality, forKey: "locality")
						try values.encodeIfPresent(stateProvince, forKey: "stateProvince")
						try values.encodeIfPresent(postalCode, forKey: "postalCode")
						try values.encodeIfPresent(countryCode, forKey: "countryCode")
					}
				}

				public init(fullAddress: String? = nil, structuredAddress: StructuredAddress? = nil) {
					self.fullAddress = fullAddress
					self.structuredAddress = structuredAddress
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.fullAddress = try values.decodeIfPresent(String.self, forKey: "fullAddress")
					self.structuredAddress = try values.decodeIfPresent(StructuredAddress.self, forKey: "structuredAddress")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(fullAddress, forKey: "fullAddress")
					try values.encodeIfPresent(structuredAddress, forKey: "structuredAddress")
				}
			}

			public struct DisplayPoint: Codable {
				public var coordinates: Coordinates?
				public var source: Source?

				public struct Coordinates: Codable {
					public var latitude: Double?
					public var longitude: Double?

					public init(latitude: Double? = nil, longitude: Double? = nil) {
						self.latitude = latitude
						self.longitude = longitude
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.latitude = try values.decodeIfPresent(Double.self, forKey: "latitude")
						self.longitude = try values.decodeIfPresent(Double.self, forKey: "longitude")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encodeIfPresent(latitude, forKey: "latitude")
						try values.encodeIfPresent(longitude, forKey: "longitude")
					}
				}

				public enum Source: String, Codable, CaseIterable {
					case calculated = "CALCULATED"
					case manuallyPlaced = "MANUALLY_PLACED"
				}

				public init(coordinates: Coordinates? = nil, source: Source? = nil) {
					self.coordinates = coordinates
					self.source = source
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.coordinates = try values.decodeIfPresent(Coordinates.self, forKey: "coordinates")
					self.source = try values.decodeIfPresent(Source.self, forKey: "source")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(coordinates, forKey: "coordinates")
					try values.encodeIfPresent(source, forKey: "source")
				}
			}

			public enum MapAction: String, Codable, CaseIterable {
				case buyTickets = "BUY_TICKETS"
				case viewAvailability = "VIEW_AVAILABILITY"
				case viewPricing = "VIEW_PRICING"
				case hotelBookRoom = "HOTEL_BOOK_ROOM"
				case parkingReserveParking = "PARKING_RESERVE_PARKING"
				case restaurantJoinWaitlist = "RESTAURANT_JOIN_WAITLIST"
				case restaurantOrderDelivery = "RESTAURANT_ORDER_DELIVERY"
				case restaurantOrderFood = "RESTAURANT_ORDER_FOOD"
				case restaurantOrderTakeout = "RESTAURANT_ORDER_TAKEOUT"
				case restaurantReservation = "RESTAURANT_RESERVATION"
				case scheduleAppointment = "SCHEDULE_APPOINTMENT"
				case restaurantViewMenu = "RESTAURANT_VIEW_MENU"
				case theaterNowPlaying = "THEATER_NOW_PLAYING"
			}

			public enum Relationship: String, Codable, CaseIterable {
				case owner = "OWNER"
				case authorized = "AUTHORIZED"
				case other = "OTHER"
			}

			public struct PhoneNumber: Codable {
				public var number: String?
				public var type: `Type`?
				public var intent: String?

				public enum `Type`: String, Codable, CaseIterable {
					case fax = "FAX"
					case landline = "LANDLINE"
					case mobile = "MOBILE"
					case tollfree = "TOLLFREE"
				}

				public init(number: String? = nil, type: `Type`? = nil, intent: String? = nil) {
					self.number = number
					self.type = type
					self.intent = intent
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.number = try values.decodeIfPresent(String.self, forKey: "number")
					self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
					self.intent = try values.decodeIfPresent(String.self, forKey: "intent")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(number, forKey: "number")
					try values.encodeIfPresent(type, forKey: "type")
					try values.encodeIfPresent(intent, forKey: "intent")
				}
			}

			public init(placeID: String? = nil, names: [String]? = nil, mainAddress: MainAddress? = nil, displayPoint: DisplayPoint? = nil, mapAction: MapAction? = nil, relationship: Relationship? = nil, phoneNumber: PhoneNumber? = nil, homePage: String? = nil, categories: [String]? = nil) {
				self.placeID = placeID
				self.names = names
				self.mainAddress = mainAddress
				self.displayPoint = displayPoint
				self.mapAction = mapAction
				self.relationship = relationship
				self.phoneNumber = phoneNumber
				self.homePage = homePage
				self.categories = categories
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.placeID = try values.decodeIfPresent(String.self, forKey: "placeId")
				self.names = try values.decodeIfPresent([String].self, forKey: "names")
				self.mainAddress = try values.decodeIfPresent(MainAddress.self, forKey: "mainAddress")
				self.displayPoint = try values.decodeIfPresent(DisplayPoint.self, forKey: "displayPoint")
				self.mapAction = try values.decodeIfPresent(MapAction.self, forKey: "mapAction")
				self.relationship = try values.decodeIfPresent(Relationship.self, forKey: "relationship")
				self.phoneNumber = try values.decodeIfPresent(PhoneNumber.self, forKey: "phoneNumber")
				self.homePage = try values.decodeIfPresent(String.self, forKey: "homePage")
				self.categories = try values.decodeIfPresent([String].self, forKey: "categories")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(placeID, forKey: "placeId")
				try values.encodeIfPresent(names, forKey: "names")
				try values.encodeIfPresent(mainAddress, forKey: "mainAddress")
				try values.encodeIfPresent(displayPoint, forKey: "displayPoint")
				try values.encodeIfPresent(mapAction, forKey: "mapAction")
				try values.encodeIfPresent(relationship, forKey: "relationship")
				try values.encodeIfPresent(phoneNumber, forKey: "phoneNumber")
				try values.encodeIfPresent(homePage, forKey: "homePage")
				try values.encodeIfPresent(categories, forKey: "categories")
			}
		}

		public enum PlaceStatus: String, Codable, CaseIterable {
			case pending = "PENDING"
			case matched = "MATCHED"
			case noMatch = "NO_MATCH"
		}

		public enum BusinessCategory: String, Codable, CaseIterable {
			case automotive = "AUTOMOTIVE"
			case beauty = "BEAUTY"
			case bikes = "BIKES"
			case books = "BOOKS"
			case casino = "CASINO"
			case education = "EDUCATION"
			case educationJapan = "EDUCATION_JAPAN"
			case entertainment = "ENTERTAINMENT"
			case evCharger = "EV_CHARGER"
			case financialUsd = "FINANCIAL_USD"
			case financialCny = "FINANCIAL_CNY"
			case financialGbp = "FINANCIAL_GBP"
			case financialJpy = "FINANCIAL_JPY"
			case financialEur = "FINANCIAL_EUR"
			case fitness = "FITNESS"
			case foodAndDrink = "FOOD_AND_DRINK"
			case gas = "GAS"
			case grocery = "GROCERY"
			case healthAndMedical = "HEALTH_AND_MEDICAL"
			case hotelAndTravel = "HOTEL_AND_TRAVEL"
			case music = "MUSIC"
			case parking = "PARKING"
			case petServices = "PET_SERVICES"
			case professionalServices = "PROFESSIONAL_SERVICES"
			case shopping = "SHOPPING"
			case ticketing = "TICKETING"
			case transit = "TRANSIT"
		}

		public init(link: URL? = nil, version: Int? = nil, status: Status? = nil, action: AppClipAction? = nil, isPoweredBy: Bool? = nil, place: Place? = nil, placeStatus: PlaceStatus? = nil, businessCategory: BusinessCategory? = nil, defaultLanguage: AppClipAdvancedExperienceLanguage? = nil) {
			self.link = link
			self.version = version
			self.status = status
			self.action = action
			self.isPoweredBy = isPoweredBy
			self.place = place
			self.placeStatus = placeStatus
			self.businessCategory = businessCategory
			self.defaultLanguage = defaultLanguage
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.link = try values.decodeIfPresent(URL.self, forKey: "link")
			self.version = try values.decodeIfPresent(Int.self, forKey: "version")
			self.status = try values.decodeIfPresent(Status.self, forKey: "status")
			self.action = try values.decodeIfPresent(AppClipAction.self, forKey: "action")
			self.isPoweredBy = try values.decodeIfPresent(Bool.self, forKey: "isPoweredBy")
			self.place = try values.decodeIfPresent(Place.self, forKey: "place")
			self.placeStatus = try values.decodeIfPresent(PlaceStatus.self, forKey: "placeStatus")
			self.businessCategory = try values.decodeIfPresent(BusinessCategory.self, forKey: "businessCategory")
			self.defaultLanguage = try values.decodeIfPresent(AppClipAdvancedExperienceLanguage.self, forKey: "defaultLanguage")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(link, forKey: "link")
			try values.encodeIfPresent(version, forKey: "version")
			try values.encodeIfPresent(status, forKey: "status")
			try values.encodeIfPresent(action, forKey: "action")
			try values.encodeIfPresent(isPoweredBy, forKey: "isPoweredBy")
			try values.encodeIfPresent(place, forKey: "place")
			try values.encodeIfPresent(placeStatus, forKey: "placeStatus")
			try values.encodeIfPresent(businessCategory, forKey: "businessCategory")
			try values.encodeIfPresent(defaultLanguage, forKey: "defaultLanguage")
		}
	}

	public struct Relationships: Codable {
		public var appClip: AppClip?
		public var headerImage: HeaderImage?
		public var localizations: Localizations?

		public struct AppClip: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appClips
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct HeaderImage: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appClipAdvancedExperienceImages
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Localizations: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appClipAdvancedExperienceLocalizations
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(appClip: AppClip? = nil, headerImage: HeaderImage? = nil, localizations: Localizations? = nil) {
			self.appClip = appClip
			self.headerImage = headerImage
			self.localizations = localizations
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appClip = try values.decodeIfPresent(AppClip.self, forKey: "appClip")
			self.headerImage = try values.decodeIfPresent(HeaderImage.self, forKey: "headerImage")
			self.localizations = try values.decodeIfPresent(Localizations.self, forKey: "localizations")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appClip, forKey: "appClip")
			try values.encodeIfPresent(headerImage, forKey: "headerImage")
			try values.encodeIfPresent(localizations, forKey: "localizations")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encode(links, forKey: "links")
	}
}
