//
//  ContentView.swift
//  Instagram
//
//  Created by Paulo Matos on 08/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack(spacing: 0.0) {
			Header()
			
			Stories()
			
			Divider()
			
			VStack(spacing: 0.0){
				ScrollView {
					PostHeader()
					PostContent(perfil: "profile")
					PostHeader()
					PostContent(perfil: "profile2")
					PostHeader()
					PostContent(perfil: "profile3")
				}
			}

			Spacer()
			
		}
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct Header: View {
	var body: some View {
		HStack {
			Image("logo")
			
			Spacer()
			
			HStack(spacing: 20.0) {
				Image("add")
				Image("heart")
				Image("messenger")
			}
		}
		.padding(.horizontal, 15 )
		.padding(.vertical, 3)
	}
}

x`

struct Story : View {
	
	var image: String = "profile"
	var name: String = "Antonio José"
	
	var body: some View {
		VStack {
			VStack {
				Image(image)
					.resizable()
					.frame(width: 60, height: 60)
					.cornerRadius(50)
			}
			.overlay(
				Circle()
					.stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
					.frame(width: 68, height: 68)
			)
			.frame(width: 70, height: 70)
			
			Text(name)
				.font(.caption)
		}
	}
}



struct Stories: View {
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(spacing: 15) {
				Story()
				Story(image: "profile2", name: "Francisco")
				Story(image: "profile3", name: "Maria")
				Story(image: "profile4", name: "Joaquina")
				Story(image: "profile5", name: "Raimundo")
				Story(image: "profile6", name: "Francisca")
				Story(image: "profile7", name: "Franciscleia")
			}
			.padding(.vertical, 8)

			
		}
		.padding(10)
	}
}


struct PostHeader: View {
	var body: some View {
		HStack {
			HStack {
				Image("profile")
					.resizable()
					.frame(width: 30, height: 30)
					.cornerRadius(50)

					Text("João Saldanha")
						.font(.caption)
						.fontWeight(.bold)
			}
			Spacer()
			Image("more")
		}
		.padding(.vertical, 10)
		.padding(.horizontal, 8)
	}
}


struct PostContent: View {
	var perfil: String = "profile"
	var body: some View {
		VStack(spacing: 0) {
			Image(perfil)
				.resizable()
				.frame(width: .infinity)
				.aspectRatio(contentMode: .fit)
			
			HStack(spacing: 10) {
				HStack {
					Image("heart")
						.frame(width: 24, height: 24)
					Image("comment")
						.frame(width: 24, height: 24)
					Image("share")
						.frame(width: 24, height: 24)
				}
				Spacer()
				
				Image("bookmark")
					.frame(width: 24, height: 24)
				
			}
			.padding(.horizontal, 12)
			.padding(.vertical, 9)
		}
	}
}
