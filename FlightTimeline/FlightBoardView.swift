//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Max Franz Immelmann on 5/2/23.
//

import SwiftUI

struct FlightBoardView: View {
    let boardName: String
    let flightInfo: [FlightInformation]
    
    var body: some View {
        Text(boardName)
        .font(.title)    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(
            boardName: "Arrival",
            flightInfo: FlightInformation.generateFlights()
        )
    }
}
