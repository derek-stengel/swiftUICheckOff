//
//  ContentView.swift
//  FavSport
//
//  Created by Derek Stengel on 5/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var sports: [Sports] = [
    Sports(name: "golf", isSelected: false),
    Sports(name: "soccer", isSelected: false),
    Sports(name: "football", isSelected: false),
    Sports(name: "baseball", isSelected: false)
    ]
    
    @State var showResult: Bool = false
    @State var selectedSport = ""
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
            VStack(spacing: 0) {
                Spacer()
                Text("Important Test")
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                
                LazyVGrid(columns: columns) {
                    ForEach($sports, id: \.name) { $sport in
                        SportsObjectView(sport: $sport, selectedSport: $selectedSport)
                            .padding(30)
                            
                    }
                }
                        
                Spacer()
                        
                Button {
                    showResult = true
                } label: {
                    Text("Submit")
                        .padding()
                        .frame(width: 250)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.blue)
                        )
                }
                .foregroundColor(.white)
                
                if showResult {
                    Text("You chose \(selectedSport)")
                        .padding(.top, 20)
                }
            }
            .padding()
        }
}


#Preview {
    ContentView()
}

