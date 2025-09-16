//
//  HomePage.swift
//  youtubeSamuel
//
//  Created by COTEMIG on 16/09/25.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
            NavigationView{
                VStack{
                    YoutubeCard(image: "https://i.ytimg.com/vi/kXZ7tzh7nLQ/maxresdefault.jpg",title: "VAMOS SER O MVP?", chanelName: "CAIO TEIXEIRA", views: "726K")
                    
                    //YoutubeCard(image: "https://i.ytimg.com/vi/Y7QTwDWvQwQ/maxresdefault.jpg",title: "ESCADONA VOLTOU!", chanelName: "AM3NIC", views: "350K")
                    
        }
      }
   }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
