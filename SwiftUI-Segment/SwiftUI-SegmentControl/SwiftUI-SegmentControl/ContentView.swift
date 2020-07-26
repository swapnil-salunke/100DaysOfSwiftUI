//
//  ContentView.swift
//  SwiftUI-SegmentControl
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 26/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			ContactsUIScrollView()
			.tabItem{
				Image(systemName: "list.dash")
				Text("C-Scroll")
			}
			ContactsUIList()
				.tabItem{
					Image(systemName: "list.bullet")
					Text("C-List")
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
