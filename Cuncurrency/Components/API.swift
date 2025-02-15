// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class CourseModQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CourseMod {
      cuncurrencyDbCollection {
        __typename
        courses: items {
          __typename
          sys {
            __typename
            publishedAt
            id
          }
          title
          subtitle
          numberSec
          numberH
          subject
          colors
          illustration {
            __typename
            url
          }
          sectionCollection {
            __typename
            sections: items {
              __typename
              sys {
                __typename
                id
              }
              title
              subtitle
              content
            }
          }
        }
      }
    }
    """

  public let operationName: String = "CourseMod"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("cuncurrencyDbCollection", type: .object(CuncurrencyDbCollection.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(cuncurrencyDbCollection: CuncurrencyDbCollection? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "cuncurrencyDbCollection": cuncurrencyDbCollection.flatMap { (value: CuncurrencyDbCollection) -> ResultMap in value.resultMap }])
    }

    public var cuncurrencyDbCollection: CuncurrencyDbCollection? {
      get {
        return (resultMap["cuncurrencyDbCollection"] as? ResultMap).flatMap { CuncurrencyDbCollection(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "cuncurrencyDbCollection")
      }
    }

    public struct CuncurrencyDbCollection: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CuncurrencyDbCollection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", alias: "courses", type: .nonNull(.list(.object(Course.selections)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(courses: [Course?]) {
        self.init(unsafeResultMap: ["__typename": "CuncurrencyDbCollection", "courses": courses.map { (value: Course?) -> ResultMap? in value.flatMap { (value: Course) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var courses: [Course?] {
        get {
          return (resultMap["courses"] as! [ResultMap?]).map { (value: ResultMap?) -> Course? in value.flatMap { (value: ResultMap) -> Course in Course(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Course?) -> ResultMap? in value.flatMap { (value: Course) -> ResultMap in value.resultMap } }, forKey: "courses")
        }
      }

      public struct Course: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CuncurrencyDb"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("sys", type: .nonNull(.object(Sy.selections))),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("subtitle", type: .scalar(String.self)),
            GraphQLField("numberSec", type: .scalar(Int.self)),
            GraphQLField("numberH", type: .scalar(Int.self)),
            GraphQLField("subject", type: .scalar(String.self)),
            GraphQLField("colors", type: .list(.scalar(String.self))),
            GraphQLField("illustration", type: .object(Illustration.selections)),
            GraphQLField("sectionCollection", type: .object(SectionCollection.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(sys: Sy, title: String? = nil, subtitle: String? = nil, numberSec: Int? = nil, numberH: Int? = nil, subject: String? = nil, colors: [String?]? = nil, illustration: Illustration? = nil, sectionCollection: SectionCollection? = nil) {
          self.init(unsafeResultMap: ["__typename": "CuncurrencyDb", "sys": sys.resultMap, "title": title, "subtitle": subtitle, "numberSec": numberSec, "numberH": numberH, "subject": subject, "colors": colors, "illustration": illustration.flatMap { (value: Illustration) -> ResultMap in value.resultMap }, "sectionCollection": sectionCollection.flatMap { (value: SectionCollection) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var sys: Sy {
          get {
            return Sy(unsafeResultMap: resultMap["sys"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "sys")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var subtitle: String? {
          get {
            return resultMap["subtitle"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "subtitle")
          }
        }

        public var numberSec: Int? {
          get {
            return resultMap["numberSec"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "numberSec")
          }
        }

        public var numberH: Int? {
          get {
            return resultMap["numberH"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "numberH")
          }
        }

        public var subject: String? {
          get {
            return resultMap["subject"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "subject")
          }
        }

        public var colors: [String?]? {
          get {
            return resultMap["colors"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "colors")
          }
        }

        public var illustration: Illustration? {
          get {
            return (resultMap["illustration"] as? ResultMap).flatMap { Illustration(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "illustration")
          }
        }

        public var sectionCollection: SectionCollection? {
          get {
            return (resultMap["sectionCollection"] as? ResultMap).flatMap { SectionCollection(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "sectionCollection")
          }
        }

        public struct Sy: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Sys"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("publishedAt", type: .scalar(String.self)),
              GraphQLField("id", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(publishedAt: String? = nil, id: String) {
            self.init(unsafeResultMap: ["__typename": "Sys", "publishedAt": publishedAt, "id": id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var publishedAt: String? {
            get {
              return resultMap["publishedAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "publishedAt")
            }
          }

          public var id: String {
            get {
              return resultMap["id"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }
        }

        public struct Illustration: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Asset"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("url", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(url: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Asset", "url": url])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var url: String? {
            get {
              return resultMap["url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "url")
            }
          }
        }

        public struct SectionCollection: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CuncurrencyDbSectionCollection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("items", alias: "sections", type: .nonNull(.list(.object(Section.selections)))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(sections: [Section?]) {
            self.init(unsafeResultMap: ["__typename": "CuncurrencyDbSectionCollection", "sections": sections.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var sections: [Section?] {
            get {
              return (resultMap["sections"] as! [ResultMap?]).map { (value: ResultMap?) -> Section? in value.flatMap { (value: ResultMap) -> Section in Section(unsafeResultMap: value) } }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } }, forKey: "sections")
            }
          }

          public struct Section: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SectionMod"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("sys", type: .nonNull(.object(Sy.selections))),
                GraphQLField("title", type: .scalar(String.self)),
                GraphQLField("subtitle", type: .scalar(String.self)),
                GraphQLField("content", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(sys: Sy, title: String? = nil, subtitle: String? = nil, content: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SectionMod", "sys": sys.resultMap, "title": title, "subtitle": subtitle, "content": content])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var sys: Sy {
              get {
                return Sy(unsafeResultMap: resultMap["sys"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "sys")
              }
            }

            public var title: String? {
              get {
                return resultMap["title"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "title")
              }
            }

            public var subtitle: String? {
              get {
                return resultMap["subtitle"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "subtitle")
              }
            }

            public var content: String? {
              get {
                return resultMap["content"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "content")
              }
            }

            public struct Sy: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["Sys"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: String) {
                self.init(unsafeResultMap: ["__typename": "Sys", "id": id])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: String {
                get {
                  return resultMap["id"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }
            }
          }
        }
      }
    }
  }
}
