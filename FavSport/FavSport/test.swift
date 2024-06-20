//
//  test.swift
//  FavSport
//
//  Created by Derek Stengel on 5/17/24.
//
//
//import SwiftUI
//
//struct SportsObjectView: View {
//    @State var sports: Sports
//    @State var selectedSport = ""
//    @State var showResult: Bool = false
//    var body: some View {
//        VStack {
//            HStack {
//                Button {
//                    sports.soccer = false
//                    sports.golf = true
//                    sports.baseball = false
//                    sports.football = false
//                    selectedSport = "golf"
//                    showResult = false
//                } label: {
//                    Text("Golf")
//                        .padding()
//                        .frame(width: 100, height: 100)
//                        .background(
//                            RoundedRectangle(cornerRadius: 15)
//                                .fill(.green)
//                        )
//                        .opacity(sports.golf ? 1 : 0.5)
//                }
//                Button {
//                    sports.soccer = false
//                    sports.golf = false
//                    sports.baseball = false
//                    sports.football = true
//                    selectedSport = "football"
//                    showResult = false
//                } label: {
//                    Text("Football")
//                        .padding()
//                        .frame(width: 100, height: 100)
//                        .background(
//                            RoundedRectangle(cornerRadius: 15)
//                                .fill(.green)
//                        )
//                        .opacity(sports.football ? 1 : 0.5)
//                }
//            }
//            .foregroundColor(.white)
//            HStack {
//                Button {
//                    sports.soccer = true
//                    sports.golf = false
//                    sports.baseball = false
//                    sports.football = false
//                    selectedSport = "soccer"
//                    showResult = false
//                } label: {
//                    Text("Soccer")
//                        .padding()
//                        .frame(width: 100, height: 100)
//                        .background(
//                            RoundedRectangle(cornerRadius: 15)
//                                .fill(.green)
//                        )
//                        .opacity(sports.soccer ? 1 : 0.5)
//                }
//                Button {
//                    sports.soccer = false
//                    sports.golf = false
//                    sports.baseball = true
//                    sports.football = false
//                    selectedSport = "baseball"
//                    showResult = false
//                } label: {
//                    Text("Baseball")
//                        .padding()
//                        .frame(width: 100, height: 100)
//                        .background(
//                            RoundedRectangle(cornerRadius: 15)
//                                .fill(.green)
//                        )
//                        .opacity(sports.baseball ? 1 : 0.5)
//                }
//            }
//            .foregroundColor(.white)
//            
//        }
//    }
//}
