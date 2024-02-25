//
//  File.swift
//  
//
//  Created by Basmah Ali on 10/08/1445 AH.
//
import Foundation
import Fluent
import Vapor

final class neighborhood: Model, Content {
    
    static let schema = "neighborhood"
    
    @ID
    var id: UUID? // primary key
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "city")
    var city: String
    
    @Siblings(through: neighborhoodIsp.self, from: \.$neighberhood, to: \.$Isps)
    var isp: [Isps]
    
    init() {}
    
    init(id: UUID? = nil, name: String, City: String) {
        self.id = id
        self.name = name
        self.city = city
    }
    
}
