//
//  Location.swift
//  BucketList
//
//  Created by David Lee on 6/19/22.
//
import MapKit
import Foundation

struct Location: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    // the reason to separate latitude and logitude with primitive data type
    // (instead coordinate (my thinking) is to comform to Codable protocol
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    static let example = Location(id: UUID(), name: "DAVID LEE", description: "Test Description", latitude: 51.501, longitude: -0.141)
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
