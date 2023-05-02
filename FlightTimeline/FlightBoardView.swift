//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Max Franz Immelmann on 5/2/23.
//

import SwiftUI

struct FlightBoardView: View {
    let boardName: String
    
    var body: some View {
        Text(boardName)
        .font(.title)    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Arrival")
    }
}
