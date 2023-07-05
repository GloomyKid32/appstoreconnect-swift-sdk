// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Actors {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/actors/{id}`
		public let path: String

		public func get(fieldsActors: [FieldsActors]? = nil) -> Request<AppStoreConnect_Swift_SDK.ActorResponse> {
			.get(path, query: makeGetQuery(fieldsActors))
		}

		private func makeGetQuery(_ fieldsActors: [FieldsActors]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsActors, forKey: "fields[actors]", explode: false)
			return encoder.items
		}

		public enum FieldsActors: String, Codable, CaseIterable {
			case actorType
			case apiKeyID = "apiKeyId"
			case userEmail
			case userFirstName
			case userLastName
		}
	}
}
