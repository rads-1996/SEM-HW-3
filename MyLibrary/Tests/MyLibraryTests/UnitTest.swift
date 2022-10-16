//
//  UnitTest.swift
//  
//
//  Created by Radhika Gupta on 10/13/22.
//

import XCTest
//import MyLibrary
@testable import MyLibrary

final class UnitTest: XCTestCase {

    func testWeatherStruct() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        //et myLibrary = MyLibrary(weatherService: mockWeatherService)
        // When
        //let isLuckyNumber = await myLibrary.isLucky(8)
        //let temps = WeatherServiceImpl()
        //let number  = try await temps.getTemperature()
        //When
        let checkTemp = try JSONDecoder().decode(Weather.self, from: testData)
        //Then
        XCTAssertTrue((checkTemp.main.temp) >= 27.70076970124)
        print(checkTemp)
        
    }
}
