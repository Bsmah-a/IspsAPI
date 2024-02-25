import Vapor
import Foundation
import Combine

func routes(_ app: Application) throws {
    app.get { req async in
        
        "It works!"
   
    }


    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    try app.register(collection: UserController())
   try app.register(collection: neighborIspController())
    try app.register(collection: NeighborhoodController())
    try app.register(collection: ISPConroller())
}


