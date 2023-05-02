//
//  FlightDetailsView.swift
//  FlightTimeline
//
//  Created by Max Franz Immelmann on 5/2/23.
//

import SwiftUI

struct FlightDetailsView: View {
    @Binding var isPresented: Bool
    let flight: FlightInformation
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .font(.largeTitle)
                Spacer()
                Button("Done") {
                    isPresented.toggle()
                }
            }
            Text("\(flight.direction == .arrival ? "From: " : "To: ") \(flight.otherAirport)")
            Text(flight.flightStatus)
                .foregroundColor(Color(flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
        .navigationTitle("Flight Information")
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView(isPresented: .constant(true),
                          flight: FlightInformation.generateFlight())
    }
}
