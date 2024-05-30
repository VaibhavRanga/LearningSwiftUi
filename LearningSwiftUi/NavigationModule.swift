//
//  NavigationModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 29/05/24.
//

import SwiftUI

struct NavigationModule: View {
    var body: some View {
        NormalNavigationLink()
    }
}











struct NormalNavigationLink: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Some text")
                
                NavigationLink("Tap Me") {
                    Text("Voila! A new screen.")
                }
                
                NavigationLink {
                    Text("Another new screen")
                } label: {
                    VStack {
                        Text("Some text for a link")
                        Image(systemName: "face.smiling")
                    }
                }
                
                List {
                    ForEach(0..<50) { row in
                        NavigationLink("Row \(row)") {
                            Text("Detail of row \(row)")
                        }
                    }
                }

            }
            .navigationTitle("SwiftUi")
        }
    }
}












struct NavigationDestination: View {
    struct Device: Hashable, Identifiable {
        var id = UUID()
        let name: String
        let image: String
        let color: Color
    }

    struct Game: Hashable, Identifiable {
        var id = UUID()
        let name: String
        let rating: Int
    }
    
    let devices: [Device] = [
        .init(name: "Xbox", image: "xbox.logo", color: .green),
        .init(name: "PC", image: "laptopcomputer", color: .indigo),
        .init(name: "Playstation", image: "playstation.logo", color: .red),
        .init(name: "iPhone", image: "iphone", color: .brown)
    ]
    
    let games: [Game] = [
        .init(name: "Midtown madness", rating: 93),
        .init(name: "Call of Duty", rating: 98),
        .init(name: "Prince of Persia", rating: 99),
        .init(name: "Roadrash", rating: 100)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Devices") {
                    ForEach(devices) { device in
                        NavigationLink(value: device) {
                            Label(device.name, systemImage: device.image)
                                .foregroundStyle(device.color)
                        }
                    }
                }
                Section("Games") {
                    ForEach(games) { game in
                        NavigationLink(value: game) {
                            Text(game.name)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Device.self) { device in
                ZStack {
                    device.color
                        .ignoresSafeArea()
                    HStack {
                        Image(systemName: device.image)
                        Text(device.name)
                    }
                }
            }
            .navigationDestination(for: Game.self) { game in
                VStack {
                    Text(game.name)
                    Text("Rating: \(game.rating)")
                }
            }
        }
    }
}











struct ProgrammaticNavigation: View {
    struct Device: Hashable, Identifiable {
        var id = UUID()
        let name: String
        let image: String
        let color: Color
    }

    struct Game: Hashable, Identifiable {
        var id = UUID()
        let name: String
        let rating: Int
    }
    
    let devices: [Device] = [
        .init(name: "Xbox", image: "xbox.logo", color: .green),
        .init(name: "PC", image: "laptopcomputer", color: .indigo),
        .init(name: "Playstation", image: "playstation.logo", color: .red),
        .init(name: "iPhone", image: "iphone", color: .brown)
    ]
    
    let games: [Game] = [
        .init(name: "Midtown madness", rating: 93),
        .init(name: "Call of Duty", rating: 98),
        .init(name: "Prince of Persia", rating: 99),
        .init(name: "Roadrash", rating: 100)
    ]
    
    @State private var path = [Game]()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Devices") {
                    ForEach(devices) { device in
                        NavigationLink(value: device) {
                            Label(device.name, systemImage: device.image)
                                .foregroundStyle(device.color)
                        }
                    }
                }
                Section("Games") {
                    Button("Add Game") {
                        path.append(games.first!)
                    }
                    
                    Button("Add all games") {
                        path = games
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Device.self) { device in
                ZStack {
                    device.color
                        .ignoresSafeArea()
                    HStack {
                        Image(systemName: device.image)
                        Text(device.name)
                    }
                }
            }
            .navigationDestination(for: Game.self) { game in
                VStack {
                    Text(game.name)
                    Text("Rating: \(game.rating)")
                }
                .toolbar {
                    Button("Go home") {
                        path = []
                    }
                }
            }
        }
    }
}











struct ProgrammaticNavigationPath: View {
    struct Device: Hashable, Identifiable {
        var id = UUID()
        let name: String
        let image: String
        let color: Color
    }

    struct Game: Hashable, Identifiable {
        var id = UUID()
        let name: String
        let rating: Int
    }
    
    let devices: [Device] = [
        .init(name: "Xbox", image: "xbox.logo", color: .green),
        .init(name: "PC", image: "laptopcomputer", color: .indigo),
        .init(name: "Playstation", image: "playstation.logo", color: .red),
        .init(name: "iPhone", image: "iphone", color: .brown)
    ]
    
    let games: [Game] = [
        .init(name: "Midtown madness", rating: 93),
        .init(name: "Call of Duty", rating: 98),
        .init(name: "Prince of Persia", rating: 99),
        .init(name: "Roadrash", rating: 100)
    ]
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Devices") {
                    ForEach(devices) { device in
                        NavigationLink(value: device) {
                            Label(device.name, systemImage: device.image)
                                .foregroundStyle(device.color)
                        }
                    }
                }
                Section("Games") {
                    ForEach(games) { game in
                        NavigationLink(value: game) {
                            Text(game.name)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Device.self) { device in
                ZStack {
                    device.color
                        .ignoresSafeArea()
                    VStack {
                        HStack {
                            Image(systemName: device.image)
                            Text(device.name)
                        }
                        
                        List {
                            ForEach(games) { game in
                                NavigationLink(value: game) {
                                    Text(game.name)
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Game.self) { game in
                VStack {
                    Text("\(game.name), rating: \(game.rating)")
                    
                    Button("Recommended game") {
                        path.append(games.randomElement()!)
                    }
                    
                    Button("Go to another device") {
                        path.append(devices.randomElement()!)
                    }
                    
                    Button("Go home") {
                        path.removeLast(2)
                        path.removeLast(path.count)
                        path = NavigationPath()
                    }
                }
            }
        }
    }
}











//@Observable
//class PathStore {
//    var path: [Int] {
//        didSet {
//            save()
//        }
//    }
//    
//    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
//    
//    init() {
//        if let data = try? Data(contentsOf: savePath) {
//            if let decoded = try? JSONDecoder().decode([Int].self, from: data) {
//                path = decoded
//                return
//            }
//        }
//        
//        path = []
//    }
//    
//    func save() {
//        do {
//            let data = try JSONEncoder().encode(path)
//            try data.write(to: savePath)
//        } catch {
//            print("Failed to save navigation data.")
//        }
//    }
//}
//
//struct DetailView: View {
//    var number: Int
//    
//    
//    var body: some View {
//        NavigationLink("Go to a random number", value: Int.random(in: 1...1000))
//            .navigationTitle("Number \(number)")
//    }
//}
//
//struct SaveIntNavigationStackPath: View {
//    @State private var pathStore = PathStore()
//    
//    var body: some View {
//        NavigationStack(path: $pathStore.path) {
//            DetailView(number: 0)
//                .navigationDestination(for: Int.self) { i in
//                    DetailView(number: i)
//                }
//        }
//    }
//}












@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
        
        path = NavigationPath()
    }
    
    func save() {
        guard let representation = path.codable else { return }
        do {
            let data = try? JSONEncoder().encode(representation)
            try data?.write(to: savePath)
        } catch {
            print("Failed to save navigation data.")
        }
    }
}

struct DetailView: View {
    var number: Int
    
    
    var body: some View {
        NavigationLink("Go to a random number", value: Int.random(in: 1...1000))
            .navigationTitle("Number \(number)")
    }
}

struct SaveNavigationStackPath: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i)
                }
        }
    }
}

#Preview {
    NavigationModule()
}
