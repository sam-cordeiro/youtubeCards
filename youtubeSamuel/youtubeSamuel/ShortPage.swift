//
//  ShortsPage.swift
//  youtubeSamuel
//
//  Created by COTEMIG on 16/09/25.
//

import SwiftUI

struct ShortsPage: View {
    var body: some View {

                ScrollView {
                    VStack(spacing: 20) {
                        
                        YoutubeShortCard(
                            image: "https://i.ytimg.com/vi/6Dh-RL__uN4/hq720.jpg",
                            title: "O MELHOR DRIBLE DE TODOS!",
                            channelName: "Futebol Skills",
                            views: "1.2M"
                        )
                    }
                    .padding()
                }
            }


    
}

struct ShortsPage_Previews: PreviewProvider {
    static var previews: some View {
        ShortsPage()
    }
}

struct YoutubeShortCard: View {
    var image: String
    var title: String
    var channelName: String
    var views: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            AsyncImage(url: URL(string: image)) { img in
                img
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 350)
                    .cornerRadius(12)
                    .clipped()
            } placeholder: {
                ProgressView()
            }
            
            Text(title)
                .font(.headline)
                .lineLimit(2)
            
            HStack {
                Text(channelName)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("\(views) views")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .frame(width: 200)
    }
}
