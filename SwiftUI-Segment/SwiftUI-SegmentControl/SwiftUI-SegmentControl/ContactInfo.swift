//
//  ContactInfo.swift
//  SwiftUI-SegmentControl
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 26/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct ContactInfo: Identifiable, Hashable {
	let id = UUID()
	let name: String
	let email: String
	let number: String

	static func getDummyData() -> [ContactInfo] {
		return [ContactInfo(name: "John", email: "john@apple.com", number: "1234567890"),
				ContactInfo(name: "Robert", email: "robert@apple.com", number: "1234567890"),
				ContactInfo(name: "Albert", email: "ablert@apple.com", number: "1234567890"),
				ContactInfo(name: "Tim", email: "tim@apple.com", number: "1234567890"),
				ContactInfo(name: "Steve", email: "steve@apple.com", number: "1234567890"),
				ContactInfo(name: "Bruce", email: "john@apple.com", number: "1234567890"),
				ContactInfo(name: "Stephanie", email: "stephanie@apple.com", number: "1234567890"),
				ContactInfo(name: "Michelle", email: "michelle@apple.com", number: "1234567890"),
				ContactInfo(name: "Dorothy", email: "dorothy@apple.com", number: "1234567890")]
	}
}
