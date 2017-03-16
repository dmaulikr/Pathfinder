//
//  PathfinderTests.swift
//  PathfinderTests
//
//  Created by Vegard Solheim Theriault on 09/10/15.
//  Copyright © 2015 Vegard Solheim Theriault. All rights reserved.
//

import XCTest
@testable import Pathfinder

class PathfinderTests: XCTestCase {
    
    fileprivate let algorithmToTest = Algorithm.bfs
    
    func testBoard_1_1() { measure { self.testBoardWithName("board-1-1", algorithm: self.algorithmToTest) } }
    
    func testBoard_1_2() { measure { self.testBoardWithName("board-1-2", algorithm: self.algorithmToTest) } }
    
    func testBoard_1_3() { measure { self.testBoardWithName("board-1-3", algorithm: self.algorithmToTest) } }
    
    func testBoard_1_4() { measure { self.testBoardWithName("board-1-4", algorithm: self.algorithmToTest) } }
    
    func testBoard_2_1() { measure { self.testBoardWithName("board-2-1", algorithm: self.algorithmToTest) } }
    
    func testBoard_2_2() { measure { self.testBoardWithName("board-2-2", algorithm: self.algorithmToTest) } }
    
    func testBoard_2_3() { measure { self.testBoardWithName("board-2-3", algorithm: self.algorithmToTest) } }
    
    func testBoard_2_4() { measure { self.testBoardWithName("board-2-4", algorithm: self.algorithmToTest) } }
    
    
    
    
    fileprivate func testBoardWithName(_ name: String, algorithm: Algorithm) {
        if let map = MapLoader.loadMapWithName(name) {
            var pathfinder = Pathfinder(map: map, algorithm: algorithm)
            let _ = pathfinder.aStar()
        }
    }
    
    fileprivate func getPathString(_ path: [Node]) -> String {
        var pathString = ""
        for node in path {
            pathString += "(\(node.coordinate.x),\(node.coordinate.y)), "
        }
        
        return pathString
    }
}
