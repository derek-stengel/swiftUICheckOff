//
//  SportsRowView.swift
//  FavSport
//
//  Created by Derek Stengel on 5/17/24.
//

import SwiftUI

struct SportsObjectView: View {
    @Binding var sport: Sports
    @Binding var selectedSport: String
    
    var body: some View {
        Button {
            sport.isSelected.toggle()
            selectedSport = sport.name
        } label: {
            Text(sport.name)
                .frame(width: 100, height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.green)
                )
                .opacity(selectedSport == sport.name ? 1 : 0.5)
        }
        .foregroundColor(.white)
    }
}

struct SportsObjectView_Previews: PreviewProvider {
    @State static var sampleSport = Sports(name: "Soccer", isSelected: false)
    @State static var sampleSelectedSport = "Soccer"
    
    static var previews: some View {
        SportsObjectView(sport: $sampleSport, selectedSport: $sampleSelectedSport)
    }
}
   
