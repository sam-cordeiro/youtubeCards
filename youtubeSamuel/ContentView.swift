import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                
            VStack {
                YoutubeCard(image: "https://i.ytimg.com/vi/kXZ7tzh7nLQ/maxresdefault.jpg",title: "VAMOS SER O MVP?", chanelName: "CAIO TEIXEIRA", views: "726K")
                YoutubeCard(image: "https://i.ytimg.com/vi/Y7QTwDWvQwQ/maxresdefault.jpg",title: "ESCADONA VOLTOU!", chanelName: "AM3NIC", views: "350K")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
