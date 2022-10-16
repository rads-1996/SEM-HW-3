//
//  integrationTest.swift
//  
//
//  Created by Radhika Gupta on 10/14/22.
//

import XCTest
@testable import MyLibrary

final class integrationTest: XCTestCase {

    func testMockServer() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        //Given
        let checkWeather = WeatherServiceImpl()
        //When
        let result = try await checkWeather.getTemperature()
        //print(result)
        //Then
        XCTAssertNotNil(result)
        
        
    }
}
