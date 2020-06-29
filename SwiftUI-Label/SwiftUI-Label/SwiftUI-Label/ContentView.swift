//
//  ContentView.swift
//  SwiftUI-Label
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		Text("Hello, Swifty People!\nI am loving this!")
			.padding()
			.foregroundColor(.white)
			.background(Color.blue)
			.cornerRadius(8.0)
			.shadow(color:.gray, radius: 8.0, x: 10.0, y: 10.0)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
