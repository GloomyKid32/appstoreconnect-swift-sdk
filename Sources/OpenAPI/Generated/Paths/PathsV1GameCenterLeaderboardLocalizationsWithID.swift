// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterLeaderboardLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterLeaderboardLocalizations_getInstance")
		}

		public struct GetParameters {
			public var fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]?
			public var fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]?
			public var include: [Include]?

			public enum FieldsGameCenterLeaderboardLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case formatterOverride
				case formatterSuffix
				case formatterSuffixSingular
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
			}

			public enum FieldsGameCenterLeaderboardImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case imageAsset
				case uploadOperations
				case assetDeliveryState
				case gameCenterLeaderboardLocalization
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
			}

			public init(fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]? = nil, include: [Include]? = nil) {
				self.fieldsGameCenterLeaderboardLocalizations = fieldsGameCenterLeaderboardLocalizations
				self.fieldsGameCenterLeaderboardImages = fieldsGameCenterLeaderboardImages
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterLeaderboardLocalizations, forKey: "fields[gameCenterLeaderboardLocalizations]")
				encoder.encode(fieldsGameCenterLeaderboardImages, forKey: "fields[gameCenterLeaderboardImages]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationResponse> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterLeaderboardLocalizations_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "gameCenterLeaderboardLocalizations_deleteInstance")
		}
	}
}
