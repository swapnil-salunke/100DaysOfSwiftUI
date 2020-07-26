//
//  ContactsUIList.swift
//  SwiftUI-SegmentControl
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 26/07/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import SwiftUI

enum SortBySegments: Int {
	case name, email
}

struct ContactsUIList: View {
	@State private var sortingIndex: SortBySegments = .name
	@State var contacts: [ContactInfo] = ContactInfo.getDummyData()
    var body: some View {
		NavigationView {
			VStack {
				Spacer(minLength: 10)
				Picker("Picker for Sorts", selection: $sortingIndex) {
					Text("Name").tag(SortBySegments.name)
					Text("Email").tag(SortBySegments.email)
				}.pickerStyle(SegmentedPickerStyle())
					.onReceive([sortingIndex].publisher.first()) { (tag) in
						switch tag {
						case .name:
							self.contacts.sort(){ $0.name > $1.name }
						case .email:
							self.contacts.sort(){ $0.email < $1.email }
						}
				}.padding(.horizontal, 10)
				Spacer(minLength: 10)
				if #available(iOS 14.0, *) {
					List {
						ForEach(contacts, id: \.self) { contact in
							NavigationLink(destination: ContactDetails(contactDetail: contact)) {
								ContactsUICell(contactInfo: contact)
							}
						}
					}.listStyle(InsetListStyle())
					.navigationBarTitle(Text("Contacts via List"))
				} else {
					// Fallback on earlier versions
					List {
						ForEach(contacts, id: \.self) { contact in
							NavigationLink(destination: ContactDetails(contactDetail: contact)) {
								ContactsUICell(contactInfo: contact)
							}
						}
					}.listStyle(GroupedListStyle())
					.navigationBarTitle(Text("Contacts via List"))
				}
			}
		}
    }
}

struct ContactsUIList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsUIList()
    }
}
