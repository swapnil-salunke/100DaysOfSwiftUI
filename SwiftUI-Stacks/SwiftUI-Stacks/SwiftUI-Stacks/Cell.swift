//
//  Cell.swift
//  SwiftUI-Stacks
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 19/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct Cell: View {
	let cellData: ListModel
    var body: some View {
		HStack(spacing: 10) {
			Image(cellData.image)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 30, height: 30)
				.cornerRadius(5.0)

			VStack(alignment: .leading, spacing: 3) {
				Text(cellData.title)
					.font(.headline)
				Text(cellData.subTitle)
					.font(.subheadline)

			}
			Spacer()
			Button(action: buttonAction){
				Image(systemName: "chevron.right")
					.frame(width: 20, height: 20)
					.foregroundColor(Color.black)
			}
		}
		.padding(10)

    }

	private func buttonAction () {
		// TODO: Week 4
	}
}

struct Cell_Previews: PreviewProvider {
	static let data = ListModel(id: 0, title: "title", subTitle: "subTitle", image: "Tree1")
    static var previews: some View {
        Cell(cellData: data)
    }
}
