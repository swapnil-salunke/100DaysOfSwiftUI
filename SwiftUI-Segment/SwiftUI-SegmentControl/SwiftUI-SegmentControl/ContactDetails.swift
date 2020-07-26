//
//  ContactDetails.swift
//  SwiftUI-SegmentControl
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 26/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct ContactDetails: View {
	var contactDetail: ContactInfo
    var body: some View {
		VStack {
			Text(contactDetail.name)
			Text(contactDetail.email)
			Text(contactDetail.number)
		}
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(contactDetail: ContactInfo(name: "Robert", email: "robert@apple.com", number: "1234567890"))
    }
}
