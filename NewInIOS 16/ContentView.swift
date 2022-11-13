//
//  ContentView.swift
//  NewInIOS 16
//
//  Created by Sraavan Chevireddy on 11/14/22.
//

import SwiftUI

class RouterConfig : ObservableObject{
    @Published var routerConfig =  NavigationPath()
    
    public init(){}
    
    public func reset(){
        routerConfig = .init()
    }
}

struct ContentView: View {
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Red",value: Color.red)
                NavigationLink("Mint Color",value: Color.mint)
                NavigationLink("Yellow Color",value: Color.yellow)
            }.navigationDestination(for: Color.self) { color in
                ColorView(color: color)
            }
            .navigationTitle("Test Colors")
           
        }
    }
}

struct ColorView: View {
    var color: Color
    
    var body: some View {
            color
            .ignoresSafeArea(.all)
            .navigationTitle("Test Full Screen")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
