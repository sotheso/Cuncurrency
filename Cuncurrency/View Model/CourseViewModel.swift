//
//  CourseViewModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 27/11/1403.
//

import Foundation
import Apollo

// برای موضوع تصادقی از پروتوکل Caseiterable استفاده می کنیم
enum FeaturedSubject: String, CaseIterable {
    case SwiftUI = "SwiftUI"
    case Design = "Design"
    case Uikit = "UIKit"
}

class CourseViewModel: ObservableObject {
    @Published private(set) var courses: [Course] = []
    
    // برای رندم کردم بنر بالای صفحه هوم
    var featuredSubject: FeaturedSubject = FeaturedSubject.allCases.randomElement() ?? .SwiftUI
    @Published public private(set) var featuredCourses: [Course] = []
    
    private func queryCourses() async throws -> GraphQLResult<CourseModQuery.Data>? {
        return await withCheckedContinuation { continuation in
            Network.shared.apollo.fetch(query: CourseModQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    continuation.resume(returning: graphQLResult)
                case .failure(let error):
                    if let error = error as? Never {
                        continuation.resume(throwing: error)
                    }
                }
            }
        }
    }
            
    
    func fetch() async  {
        do {
            let result = try await queryCourses()
            guard let result = result,
                  let courseCollection = result.data?.cuncurrencyDbCollection else {
                print("دریافت اطلاعات دوره با شکست مواجه شد")
                return
            }
            
            // ارسال تغییرات به نخ اصلی
            DispatchQueue.main.async {
                self.courses = self.process(data: courseCollection)
                self.finefeaturedCourses()
            }
            
        } catch {
            print("Error", error)
        }
    }
    
    private func process(data: CoursesData) -> [Course] {
        let content = CoursesCollection.init(data)
        
        return content.courses
    }
    
    private func finefeaturedCourses() {
        // اول ببین یه چیزی توش باشه اگر نبود از تابع بیاد بیرون
        guard courses.count > 0 else { return }

        featuredCourses = courses.filter { $0.subject == featuredSubject.rawValue
//        featuredCourses =  courses.filter{ course in
//            course.subject == featuredSubject.rawValue
            
        }
    }
}

