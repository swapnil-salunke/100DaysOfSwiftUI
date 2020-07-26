//
//  ContactsUI.swift
//  SwiftUI-SegmentControl
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 26/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

struct ContactsUICell: View {
	@State private var isShowingAlert = false

	let contactInfo: ContactInfo
	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 5) {
				Text(contactInfo.name)
					.fontWeight(.bold)
					.font(.system(size: 18))
				Text(contactInfo.email)
					.fontWeight(.semibold)
					.font(.system(size: 16))
			}
			Spacer()
			Button(action: makeVideoCall){
				Image(systemName: "message.fill")
					.frame(width: 40, height: 40, alignment: .center)
					.font(.body)
					.foregroundColor(Color.green)
			}.alert(isPresented: $isShowingAlert) {
				Alert(title: Text("In Progress"), message: Text("Once completed you will be able to send messages and make a call"), dismissButton: .default(Text("Got it")))
			}
		}
	}

	func makeVideoCall() {

	}
}

struct ContactsUI_Previews: PreviewProvider {
    static var previews: some View {
		ContactsUICell(contactInfo: <#ContactInfo#>)
    }
}
