//
//  BusinessCourseRequirements.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 03/01/2022.
//

import SwiftUI

struct BusinessCourseRequirements: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                BusCR1()
                BusCR2()
            }
            .padding(.bottom, 60)
        }
        .overlay(
            NavigationBarSub(title: "Course Req.", Account_View: .constant(false))
        )
        .navigationBarHidden(true)
    }
}

struct BusinessCourseRequirements_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCourseRequirements()
    }
}
