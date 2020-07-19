//
//  ListModel.swift
//  SwiftUI-Stacks
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 19/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct ListModel: Identifiable, Hashable {
	let id: Int
	let title: String
	let subTitle: String
	let image: String

	static func getDummyData() -> [ListModel] {
		return [ListModel(id: 0, title: "title1", subTitle: "subTitle1", image: "Tree1"),
				ListModel(id: 1, title: "title2", subTitle: "subTitle2", image: "Tree2"),
				ListModel(id: 2, title: "title3", subTitle: "subTitle3", image: "Tree3")]
	}
}
