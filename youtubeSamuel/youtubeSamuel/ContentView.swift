import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomePage()
                .tabItem{
                    TabItemView(icon: "house")
                }
            ShortsPage()
                .tabItem{
                    TabItemView(icon: "square.stack")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
