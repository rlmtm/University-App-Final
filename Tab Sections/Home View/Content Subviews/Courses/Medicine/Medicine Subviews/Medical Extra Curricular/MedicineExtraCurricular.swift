//
//  MedicineExtraCurricular.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 03/01/2022.
//

import SwiftUI

struct MedicineExtraCurricular: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                MedEC1()
                MedEC2()
            }
            .padding(.bottom, 60)
        }
        .overlay(
            NavigationBarSub(title: "Extra C. Med", Account_View: .constant(false))
        )
        .navigationBarHidden(true)
    }
}

struct MedicineExtraCurricular_Previews: PreviewProvider {
    static var previews: some View {
        MedicineExtraCurricular()
    }
}
