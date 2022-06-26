//
//  NavigationBar.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct NavigationBar: View {
    
    var title = ""
    @State var showSearch = false
    @AppStorage("isLiteMode") private var isLiteMode = false
    @EnvironmentObject var authentication: Authentication
    @State var SignedOut = false
    @State var showHome = false
    @State var showAccount = false
    @Binding var Account_View: Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .if(!isLiteMode, transform: { view in
                    view.blur(radius: 10)
                })
            
            HStack {
                Text(title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                
                Image(systemName: "magnifyingglass")
                    .font(.body.weight(.bold))
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(.ultraThinMaterial, in: Circle())
                    .sheet(isPresented: $showSearch, content: {
                        SearchViewSheet()
                    })
                    .onTapGesture {
                        showSearch = true
                    }
                
                Menu {
                    /*Button(action: {
                        showAccount = false
                        showSearch = false
                        showHome = false
                    }, label: {
                        Label(
                            title: { Text("Back") },
                            icon: { Image(systemName: "arrow.right.circle") }
                        )
                    })
                    
                    Button(action: {
                        //HomeViewTab()
                    }, label: {
                        Label(
                            title: { Text("Home") },
                            icon: { Image(systemName: "house") }
                        )
                    })*/
                    
                    Button(action: {
                        if Account_View == false {
                            showAccount.toggle()
                        }
                        
                    }, label: {
                        Label(
                            title: { Text("Account").foregroundColor(.red) },
                            icon: { Image(systemName: "person.crop.circle") }
                        )
                    })
                    
                    Button(action: {
                        authentication.updateValidation(success: false)
                        SignedOut = true
                    }, label: {
                        Label(
                            title: { Text("Log Out").foregroundColor(.red) },
                            icon: { Image(systemName: "rectangle.portrait.and.arrow.right") }
                        )
                    })
                    
                } label: {
                    Label(
                        title: {},
                        icon: { Image("Profile")
                                .resizable()
                                .frame(width: 30, height: 30, alignment: .center)
                                .clipShape(Circle())
                                .font(.body.weight(.bold))
                                .foregroundColor(.secondary)
                                .padding(8)
                                .background(.ultraThinMaterial, in: Circle()) }
                    )
                }
                .padding()
                
                
            }
            .frame(height: 60)
            .sheet(isPresented: $showAccount, content: {
                    AccountView1(showAccount: $showAccount)
                    .padding(.top, 30)
                })
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
        .alert("Signed Out", isPresented: $SignedOut, actions: {})
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "Featured", Account_View: .constant(false))
    }
}

struct AccountView1: View {
    
    @EnvironmentObject var authentication: Authentication
    @StateObject private var loginVM = LoginViewModel()
    @State var SignedOut = false
    @State var Account_View = true
    @Binding var showAccount: Bool
    
    var body: some View {
            VStack {
                Rectangle()
                    .frame(width: 380, height: 40, alignment: .center)
                    .opacity(0)
                Form {
                    Section {
                        Image("Profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 200, alignment: .center)
                            .padding(.leading, -50)
                            .padding(.bottom, 20)
                            .padding(.top, -30)
                    }
                    
                    Section {
                        HStack {
                            Text("Account Name:")
                            Spacer()
                            Text("Maximilian Miller")
                        }
                        HStack {
                            Text("Username:")
                            Spacer()
                            Text(loginVM.credentials.username)
                        }
                        HStack {
                            Text(" Password:")
                            Spacer()
                            Text(loginVM.credentials.password)
                        }
                    }
                    
                    Section {
                        Link(destination: URL(string: "https://www.youtube.com")!) {
                            HStack {
                                Image(systemName: "play.rectangle.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(.red)
                                    .cornerRadius(10)
                                Text("YouTube")
                                    .foregroundColor(Color("Mono"))
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.blue)
                                
                            }
                        }
                        
                        Link(destination: URL(string: "https://www.twitter.com")!) {
                            HStack {
                                Image(systemName: "arrowshape.turn.up.forward.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color("Twitter"))
                                    .cornerRadius(10)
                                Text("Twitter")
                                    .foregroundColor(Color("Mono"))
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.blue)
                                
                            }
                        }
                        
                        Link(destination: URL(string: "https://www.hackingwithswift.com")!) {
                            HStack {
                                Image(systemName: "network")
                                    .font(.system(size: 20))
                                    .foregroundColor(.gray)
                                    .cornerRadius(10)
                                Text("Website")
                                    .foregroundColor(Color("Mono"))
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.blue)
                                
                            }
                        }
                        
                    }
                    
                    
                    Section {
                        HStack {
                            Spacer()
                            Button("Sign out") {
                                authentication.updateValidation(success: false)
                                SignedOut = true
                            }
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                    
                    Section {
                        
                    }
                    
                }
            }
    .overlay(
        NavigationBar(title: "Account", Account_View: $Account_View)
    )
        
    .overlay(
        Button(action:{
            showAccount.toggle()
        }, label: {
        Image(systemName: "xmark")
            .font(.body.weight(.bold))
            .foregroundColor(.secondary)
            .padding(8)
            .background(.ultraThinMaterial, in: Circle())
            .padding(.bottom, 650)
            .padding(.leading, 20)
        })
    )
    
    
    }
}
/*
 Image("Profile")
     .resizable()
     .frame(width: 30, height: 30, alignment: .center)
     .clipShape(Circle())
     .font(.body.weight(.bold))
     .foregroundColor(.secondary)
     .padding(8)
     .background(.ultraThinMaterial, in: Circle())
 */
