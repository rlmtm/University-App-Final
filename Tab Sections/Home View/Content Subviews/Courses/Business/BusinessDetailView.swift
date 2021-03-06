//
//  BusinessDetailView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//

import SwiftUI

struct BusinessDetailView: View {
    
    //var namespace: Namespace.ID
    //@Binding var showBusiness: Bool
    //var feature: Feature = features[0]
    @State var navigationBarHidden = true
    @AppStorage("isLiteMode") private var isLiteMode = false
    @State var progressValue1: Float = 0.0
    @State var progressValue2: Float = 0.0
    @State var progressValue3: Float = 0.0
    @State var progressValue4: Float = 0.0
    @State var progressValue5: Float = 0.0
    @State var progressValue6: Float = 0.0
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            ScrollView {
                ZStack {
                    Color("Background1Color")
                      .padding(.top, -920)
                      .padding(.bottom, 200)
                      .frame(width: 400, height: 0, alignment: .center)
                    cover
                        .padding(.top, -40)
                }
                .overlay(
                    Button {
                      withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                          //showMedicine.toggle()
                          self.presentationMode.wrappedValue.dismiss()
                        }
                    } label: {
                      Image(systemName: "xmark")
                          .font(.body.weight(.bold))
                          .foregroundColor(.secondary)
                          .padding(8)
                          .background(.ultraThinMaterial, in: Circle())
                    }
                    //.padding(.top, -50)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(20)
                    .ignoresSafeArea()
                )
                overlay
                    .padding(.bottom, -180)
                Rectangle()
                    .frame(width: 380, height: 150, alignment: .center)
                    .opacity(0)
            }
            /*.overlay(
              Button {
                  withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                      //showMedicine.toggle()
                      self.presentationMode.wrappedValue.dismiss()
                  }
              } label: {
                  Image(systemName: "xmark")
                      .font(.body.weight(.bold))
                      .foregroundColor(.secondary)
                      .padding(8)
                      .background(.ultraThinMaterial, in: Circle())
              }
              .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
              .padding(20)
              .ignoresSafeArea()
          )*/
            
            .navigationBarHidden(true)
            .statusBar(hidden: true)
        }
        .frame(width: 400, height: 860)
    }
    
    var cover: some View {
        VStack {
            Spacer()
                .navigationBarHidden(navigationBarHidden)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .padding(20)
        .foregroundColor(.black )
        .background(
            Image("Business")
                .resizable()
                .frame(width: 350, height: 350)
                .aspectRatio(contentMode: .fill)
                .padding(.leading, 70)
                .padding(.top, 20)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "image", in: namespace)
                //})
        )
        .background(
            Image("Background1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 400, minHeight: 720, alignment: .top)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "background", in: namespace)
                //})
                //.frame(maxHeight: .infinity)
        )
        .mask (
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
        //.if(!isLiteMode, transform: { view in
            //view.matchedGeometryEffect(id: "mask", in: namespace)
        //})
        //.padding(.bottom, 300)
        
    }
    
    var background: some View {
        VStack {
            Spacer()
                .navigationBarHidden(navigationBarHidden)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .padding(20)
        .foregroundColor(.black )
        .background(
            Image("Background1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 400, minHeight: 920, alignment: .top)
                //.frame(maxHeight: .infinity)
        )
        .mask (
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
        
        //.padding(.bottom, 300)
        
    }
    
    var overlay: some View {
/////////////////                                                       First Box
        //ScrollView {
            VStack {
                FirstBox
                .if(!isLiteMode, transform: { view in
                    view.shadow(color: Color("Mono").opacity(0.4), radius: 20, x: 0, y: 0)
                })
    /////////////////                                                       Second Box
                withAnimation(.easeIn(duration: 2)) {
                    SecondBox
                }
                .if(!isLiteMode, transform: { view in
                    view.shadow(color: Color("Mono").opacity(0.5), radius: 25, x: 0, y: 0)
                })
            }
        //}
    }
    
    var FirstBox: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Business")
                .font(.largeTitle.weight(.bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "title", in: namespace)
                //})
            Text("5 sections - 1 hour".uppercased())
                .font(.footnote.weight(.semibold))
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "subtitle", in: namespace)
                //})
            Text("Learn the process of getting a major in business and more ...")
                .font(.footnote)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "content", in: namespace)
                //})
            Divider()
            HStack {
                ZStack {
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .cornerRadius(5)
                        .foregroundColor(Color("LightGray"))
                    Image("BusinessIcon")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .cornerRadius(10)
                        .padding(8)
                        .background(.ultraThinMaterial,
                            in:
                            RoundedRectangle(cornerRadius: 18, style: .continuous))
                }
                    //.strokeStyle(cornerRadius: 18)
                Text("Created by Maximilian Miller")
                    .font(.footnote)
            }
        }
        .padding(20)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "blur", in: namespace)
                //})
        )
        .opacity(1)
        .offset(y: -150)
        .padding(20)
    }
    
    var SecondBox: some View {
        VStack(alignment: .leading, spacing: 12) {
            ZStack {
                ListItem1
                NavigationLink(destination: BusinessIdealApplicant()) {
                    Rectangle()
                        .frame(width: 240, height: 60, alignment: .leading)
                        .opacity(0)
                        .padding(.leading, 70)
                }
            }
            Divider()
            ZStack {
                ListItem2
                NavigationLink(destination: BusinessExtraCurricular()) {
                    Rectangle()
                        .frame(width: 240, height: 60, alignment: .leading)
                        .opacity(0)
                        .padding(.leading, 70)
                }
            }
            Divider()
            ZStack {
                ListItem3
                NavigationLink(destination: BusinessCourseStructure()) {
                    Rectangle()
                        .frame(width: 240, height: 60, alignment: .leading)
                        .opacity(0)
                        .padding(.leading, 70)
                }
            }
            Divider()
            ZStack {
                ListItem4
                NavigationLink(destination: BusinessCourseRequirements()) {
                    Rectangle()
                        .frame(width: 240, height: 60, alignment: .leading)
                        .opacity(0)
                        .padding(.leading, 70)
                }
            }
            Divider()
            ZStack {
                ListItem5
                Link(destination: URL(string: "https://www.topuniversities.com/university-rankings/university-subject-rankings/2021/business-management-studies")!) {
                    Rectangle()
                        .frame(width: 240, height: 60, alignment: .leading)
                        .opacity(0)
                        .padding(.leading, 70)
                }
            }
        }
        .padding(20)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
        )
        .offset(y: -150)
        .padding(20)
    }
    
    var ListItem1: some View {
        HStack {
            ZStack {
                ProgressBar1(progress: self.$progressValue1)
                    .frame(width: 55, height: 55, alignment: .center)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 2.0)) {
                            self.progressValue1 = 0.20
                        }
                    }
                Button (action: {
                    if (progressValue1) < 1.0 {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.progressValue1 += 0.10
                        }
                    } else {
                        progressValue1 -= 1.0
                    }
                }, label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .clipShape(Circle())
                        .padding(.leading, 10)
                        .padding(.trailing, 20)
                        .padding(.bottom, 6)
                })
            }
            VStack {
                Text("Ideal Applicant")
                    .font(.title2.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 3)
                Text("This section will explain what makes a good applicant for this course")
                    .font(.footnote)
                    .padding(.leading, 3)
                    .lineLimit(2)
            }
        }
        
    }
    
    var ListItem2: some View {
        HStack {
            ZStack {
                ProgressBar2(progress: self.$progressValue2)
                    .frame(width: 55, height: 55, alignment: .center)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 2.0)) {
                            self.progressValue2 = 0.40
                        }
                    }
                Button (action: {
                    if (progressValue2) < 1.0 {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.progressValue2 += 0.10
                        }
                    } else {
                        progressValue2 -= 1.0
                    }
                }, label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .clipShape(Circle())
                        .padding(.leading, 10)
                        .padding(.trailing, 20)
                        .padding(.bottom, 4)
                })
            }
            VStack {
                Text("Extra-curriculars")
                    .font(.title2.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 3)
                Text("Learn the process of getting a major in this field and more ...")
                    .font(.footnote)
                    .padding(.leading, 3)
            }
        }
    }

    var ListItem3: some View {
        HStack {
            ZStack {
                ProgressBar3(progress: self.$progressValue3)
                    .frame(width: 55, height: 55, alignment: .center)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 2.0)) {
                            self.progressValue3 = 0.60
                        }
                    }
                Button (action: {
                    if (progressValue3) < 1.0 {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.progressValue3 += 0.10
                        }                    } else {
                        progressValue3 -= 1.0
                    }
                }, label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .leading)
                        .clipShape(Circle())
                        .padding(.leading, 10)
                        .padding(.trailing, 20)
                        .padding(.bottom, 4)
                })
            }
            VStack {
                Text("Course Structure")
                    .font(.title2.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 3)
                Text("Learn the process of getting a major in this field and more ...")
                    .font(.footnote)
                    .padding(.leading, 3)
            }
        }
        
    }
    
    var ListItem4: some View {
        HStack {
            ZStack {
                ProgressBar4(progress: self.$progressValue4)
                    .frame(width: 55, height: 55, alignment: .center)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 2.0)) {
                            self.progressValue4 = 0.80
                        }
                    }
                Button (action: {
                    if (progressValue4) < 1.0 {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.progressValue4 += 0.10
                        }                    } else {
                        progressValue4 -= 1.0
                    }
                }, label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .leading)
                        .clipShape(Circle())
                        .padding(.leading, 10)
                        .padding(.trailing, 20)
                        .padding(.bottom, 4)
                })
            }
            VStack {
                Text("Course Requirements")
                    .font(.title2.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 3)
                Text("Learn the process of getting a major in this field and more ...")
                    .font(.footnote)
                    .padding(.leading, 3)
            }
        }
    }
    
    var ListItem5: some View {
        HStack {
            ZStack {
                ProgressBar5(progress: self.$progressValue5)
                    .frame(width: 55, height: 55, alignment: .center)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 2.0)) {
                            self.progressValue5 = 1.00
                        }
                    }
                Button (action: {
                    if (progressValue5) < 1.0 {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.progressValue5 += 0.10
                        }                    } else {
                        progressValue5 -= 1.0
                    }
                }, label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .leading)
                        .clipShape(Circle())
                        .padding(.leading, 10)
                        .padding(.trailing, 20)
                        .padding(.bottom, 4)
                })
            }
            VStack {
                Text("College Rankings Link")
                    .font(.title2.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 3)
                Text("Learn the process of getting a major in this field and more ...")
                    .font(.footnote)
                    .padding(.leading, 3)
            }
        }
    }
}

/*
struct ProgressBar1: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        withAnimation(.easeInOut(duration: 2.0)) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3.0)
                    .opacity(0.2)
                    .foregroundColor(Color.clear)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: 270))
            }
        }
    }
}

struct ProgressBar2: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        withAnimation(.easeInOut(duration: 2.0)) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3.0)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: 270))
            }
        }
    }
}

struct ProgressBar3: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        withAnimation(.easeInOut(duration: 2.0)) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3.0)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: 270))
            }
        }
    }
}

struct ProgressBar4: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        withAnimation(.easeInOut(duration: 2.0)) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3.0)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: 270))
            }
        }
    }
}

struct ProgressBar5: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        withAnimation(.easeInOut(duration: 2.0)) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3.0)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: 270))
            }
        }
    }
}

struct ProgressBar6: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        withAnimation(.easeInOut(duration: 2.0)) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3.0)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: 270))
            }
        }
    }
}
*/
 
struct BusinessDetailView_Previews: PreviewProvider {
    //@Namespace static var namespace
    static var previews: some View {
        BusinessDetailView(/*namespace: namespace, showBusiness: .constant(true)*/)
    }
}
//.withAnimation(.easeInOut(duration: 1))

/*
 Text("What makes a good applicant?")
 
 Text("""
      Evidence of genuine interest
      in subjects outside the
      classroom; awareness of
      global affairs and how they
      affect economy; some
      knowledge of organisations
      and how they work; good
      maths skills; communication,
      teamwork and leadership
      skills; work experience
     """)
 
 Text("Suggestions for extra / super / curricular activities")
 
 Text("""
      Extended Essay and interesting coursework projects;
      Read around the subject e.g.
      The Economist; The Financial
      Times and business pages of
      quality newspapers; online
      courses.
      CAS: MUN, International
      Award; Refugee Camp; Tafel;
      Young Enterprise; Team
      sports; at least one but
      preferably two work
      experience projects in a
      company, bank or business
      organisation
     """)
 
 Text("Requirements")
 
 Text("colleges ranking")
 */
