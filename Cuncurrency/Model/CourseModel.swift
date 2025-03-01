//
//  CourseModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 27/11/1403.
//

import Foundation

typealias CoursesData = CourseModQuery.Data.CuncurrencyDbCollection

struct CoursesCollection: Decodable {
    let courses: [Course]

    init(_ coursesCollection: CoursesData?) {
        self.courses = coursesCollection?.courses.map({ course -> Course in
            Course(course)
        }) ?? []
    }
}

struct Course: Identifiable, Decodable {
    let id: String
    let publishedAt: String
    let title: String
    let subtitle: String
    let numberSec: Int
    let numberH: Int
    let subject: String
    let colors: [String?]
    let illustration: String
    let sectionCollection: SectionsCollection?

    init(_ course: CoursesData.Course?) {
        self.id = course?.sys.id ?? ""
        self.publishedAt = course?.sys.publishedAt ?? ""
        self.title = course?.title ?? ""
        self.subtitle = course?.subtitle ?? ""
        self.numberSec = course?.numberSec ?? 0
        self.numberH = course?.numberSec ?? 0
        self.subject = course?.subject ?? ""
        self.colors = course?.colors ?? ["#0279FF","#4FA3FF"]
        self.illustration = course?.illustration?.url ?? ""
        self.sectionCollection = SectionsCollection(course?.sectionCollection)
    }
}

struct SectionsCollection: Decodable {
    let sections: [Section]

    init(_ sectionsCollection: CoursesData.Course.SectionCollection?) {
        self.sections = sectionsCollection?.sections.map({ section -> Section in
            Section(section)
        }) ?? []
    }

    struct Section: Identifiable, Decodable {
        let id: String
        let title: String
        let subtitle: String
        let content: String

        init(_ section: CoursesData.Course.SectionCollection.Section?) {
            self.id = section?.sys.id ?? ""
            self.title = section?.title ?? ""
            self.subtitle = section?.subtitle ?? ""
            self.content = section?.content ?? ""
        }
    }
} 
