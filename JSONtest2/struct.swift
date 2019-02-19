//
//  struct.swift
//  JSONtest2
//
//  Created by Milos Otasevic on 15/02/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import Foundation

struct Welcome: Decodable {
    let  title: String
    let link: String
    let date: String
    let content: String
    let image: String?
}


struct WelcomeElement: Decodable {
    let id: Int
    let name: String
    let link, imageUrl: String
    let number_of_lessons: Int
}


struct Lik: Decodable {
    let coord: coord
    let weather: [weather]
    let base: String
    let main: main
    let visibility: Int
    let wind: wind
    let clouds: clouds
    let dt: Int
    let sys: sys
    let id: Int
    let name: String
    let cod: Int
}

struct clouds: Decodable {
    let all: Int
}

struct coord: Decodable {
    let lon, lat: Double
}

struct main: Decodable {
    let temp: Double
    let pressure, humidity: Int
    let temp_min, temp_max: Double
}

struct sys: Decodable {
    let type, id: Int
    let message: Double
    let country: String
    let sunrise, sunset: Int
}

struct weather: Decodable {
    let id: Int
    let main, description, icon: String
}

struct wind: Decodable {
    let speed: Double
    let deg: Int
}


