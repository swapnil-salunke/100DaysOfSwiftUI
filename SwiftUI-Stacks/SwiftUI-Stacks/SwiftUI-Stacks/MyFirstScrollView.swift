//
//  MyFirstScrollView.swift
//  SwiftUI-Stacks
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 20/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct MyFirstScrollView: View {
    var body: some View {
		NavigationView {
			ScrollView {
				ForEach(ListModel.getDummyData(), id: \.self) { dataObj in
					VStack {
						Cell(cellData: dataObj)
						Divider()
					}
				}
			}
			.navigationBarTitle(Text("ScrollView"))
		}
    }
}

struct MyFirstScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyFirstScrollView()
    }
}
