//
//  ContactsUICell.swift
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
					.foregroundColor(Color.black)
				Text(contactInfo.email)
					.fontWeight(.semibold)
					.font(.system(size: 14))
					.foregroundColor(Color.black)
			}
			Spacer()
			Button(action: sendMessages){
				Image(systemName: "message.fill")
					.frame(width: 40, height: 40, alignment: .center)
					.font(.body)
					.foregroundColor(Color.green)
			}.alert(isPresented: $isShowingAlert) {
				Alert(title: Text("In Progress"), message: Text("Once completed you will be able to send messages"), dismissButton: .default(Text("Got it")))
			}
			
			Button(action: makeVideoCall){
				Image(systemName: "video.fill")
					.frame(width: 40, height: 40, alignment: .center)
					.font(.body)
					.foregroundColor(Color.blue)
			}.alert(isPresented: $isShowingAlert) {
				Alert(title: Text("In Progress"), message: Text("Once completed you will be able to make a video call"), dismissButton: .default(Text("Got it")))
			}
		}.padding(10)
	}

	func sendMessages() {
		self.isShowingAlert = true
	}

	func makeVideoCall() {
		self.isShowingAlert = true
	}
}

struct ContactsUI_Previews: PreviewProvider {
    static var previews: some View {
		ContactsUICell(contactInfo: ContactInfo(name: "John", email: "john@apple.com", number: "1234567890"))
    }
}
