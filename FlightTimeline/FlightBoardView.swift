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
        VStack {
            Text(boardName)
                .font(.title)
            ForEach(flightInfo, id: \.self) { flight in
                Text("\(flight.airline) \(flight.number)")
            }
        }
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
