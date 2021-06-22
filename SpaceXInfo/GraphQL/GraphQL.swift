// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FetchShipsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchShips {
      ships {
        __typename
        ...ShipModel
      }
    }
    """

  public let operationName: String = "fetchShips"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ShipModel.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("ships", type: .list(.object(Ship.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(ships: [Ship?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "ships": ships.flatMap { (value: [Ship?]) -> [ResultMap?] in value.map { (value: Ship?) -> ResultMap? in value.flatMap { (value: Ship) -> ResultMap in value.resultMap } } }])
    }

    public var ships: [Ship?]? {
      get {
        return (resultMap["ships"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Ship?] in value.map { (value: ResultMap?) -> Ship? in value.flatMap { (value: ResultMap) -> Ship in Ship(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Ship?]) -> [ResultMap?] in value.map { (value: Ship?) -> ResultMap? in value.flatMap { (value: Ship) -> ResultMap in value.resultMap } } }, forKey: "ships")
      }
    }

    public struct Ship: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Ship"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ShipModel.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(image: String? = nil, model: String? = nil, name: String? = nil, speedKn: Double? = nil, successfulLandings: Int? = nil, id: GraphQLID? = nil, active: Bool? = nil, yearBuilt: Int? = nil, type: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Ship", "image": image, "model": model, "name": name, "speed_kn": speedKn, "successful_landings": successfulLandings, "id": id, "active": active, "year_built": yearBuilt, "type": type])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var shipModel: ShipModel {
          get {
            return ShipModel(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct ShipModel: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ShipModel on Ship {
      __typename
      image
      model
      name
      speed_kn
      successful_landings
      id
      active
      year_built
      type
    }
    """

  public static let possibleTypes: [String] = ["Ship"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("model", type: .scalar(String.self)),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("speed_kn", type: .scalar(Double.self)),
      GraphQLField("successful_landings", type: .scalar(Int.self)),
      GraphQLField("id", type: .scalar(GraphQLID.self)),
      GraphQLField("active", type: .scalar(Bool.self)),
      GraphQLField("year_built", type: .scalar(Int.self)),
      GraphQLField("type", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(image: String? = nil, model: String? = nil, name: String? = nil, speedKn: Double? = nil, successfulLandings: Int? = nil, id: GraphQLID? = nil, active: Bool? = nil, yearBuilt: Int? = nil, type: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "Ship", "image": image, "model": model, "name": name, "speed_kn": speedKn, "successful_landings": successfulLandings, "id": id, "active": active, "year_built": yearBuilt, "type": type])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var model: String? {
    get {
      return resultMap["model"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "model")
    }
  }

  public var name: String? {
    get {
      return resultMap["name"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }

  public var speedKn: Double? {
    get {
      return resultMap["speed_kn"] as? Double
    }
    set {
      resultMap.updateValue(newValue, forKey: "speed_kn")
    }
  }

  public var successfulLandings: Int? {
    get {
      return resultMap["successful_landings"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "successful_landings")
    }
  }

  public var id: GraphQLID? {
    get {
      return resultMap["id"] as? GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var active: Bool? {
    get {
      return resultMap["active"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "active")
    }
  }

  public var yearBuilt: Int? {
    get {
      return resultMap["year_built"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "year_built")
    }
  }

  public var type: String? {
    get {
      return resultMap["type"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "type")
    }
  }
}
