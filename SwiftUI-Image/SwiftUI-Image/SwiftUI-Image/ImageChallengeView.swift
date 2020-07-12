//
//  ImageChallengeView.swift
//  SwiftUI-Image
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 12/07/20.
//

import SwiftUI

struct ImageChallengeView: View {
    var body: some View {
		VStack {
			Text("Text with Image")
				.font(.largeTitle)
			Image("Tree1")
				.resizable()
				.scaledToFill()
				.frame(width: 300, height: 300, alignment: .center)
				.border(Color.blue, width: 2)
				.cornerRadius(16.0)
				.clipped()
			Image(systemName: "cloud.heavyrain.fill")
				.resizable()
				.font(.largeTitle)
				.frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
				.foregroundColor(.green)
		}
    }
}

struct ImageChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ImageChallengeView()
    }
}
