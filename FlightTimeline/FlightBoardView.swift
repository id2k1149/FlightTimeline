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
        List(flightInfo) { flight in
            Text("\(flight.airline) \(flight.number)")
            Text("\(flight.flightStatus)")
        }
        .navigationTitle(boardName)
        .listStyle(.plain)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(
            boardName: "Arrival",
            flightInfo: FlightInformation.generateFlights()
        )
    }
}
