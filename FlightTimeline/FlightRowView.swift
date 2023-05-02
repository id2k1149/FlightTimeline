//
//  FlightRowView.swift
//  FlightTimeline
//
//  Created by Max Franz Immelmann on 5/2/23.
//

import SwiftUI

struct FlightRowView: View {
    let flight: FlightInformation
    
    var body: some View {
        HStack {
            Text("\(flight.airline) \(flight.number)")
                .frame(width: 120, alignment: .leading)
            Text(flight.otherAirport)
                .frame(alignment: .leading)
            Text(flight.flightStatus)
                .frame(alignment: .trailing)
            
        }
    }
}

struct FlightRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRowView(flight: FlightInformation.generateFlight())
    }
}