//
//  MyFirstListView.swift
//  SwiftUI-Stacks
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 19/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct MyFirstListView: View {
    var body: some View {
		NavigationView {
			List {
				ForEach(ListModel.getDummyData(),id: \.self) { listObject in
					Cell(cellData: listObject)
				}
			}.navigationBarTitle(Text("List View"))
		}
	}
}

struct MyFirstListView_Previews: PreviewProvider {
    static var previews: some View {
        MyFirstListView()
    }
}
