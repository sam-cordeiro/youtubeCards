import SwiftUI

struct YoutubeCard: View {
    var image: String
    var title: String
    var chanelName: String
    var views: String

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(alignment: .leading, spacing: 8) {
                
                AsyncImage(url: URL(string: image)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(height: 200)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                            .cornerRadius(10)
                    case .failure(_):
                        Color.gray
                            .frame(height: 200)
                            .overlay(
                                Image(systemName: "photo")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            )
                    @unknown default:
                        EmptyView()
                    }
                }

                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(title)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Text("\(chanelName) • \(views) visualizações")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .background(Color.black)
            .cornerRadius(12)
        }
    }
}

struct YoutubeCard_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeCard(
            image: "https://i.ytimg.com/vi/kXZ7tzh7nLQ/maxresdefault.jpg",
            title: "Nos é bom",
            chanelName: "Michael Douglas e Companhia",
            views: "15K"
        )
        .previewLayout(.sizeThatFits)
        .background(Color.gray)
    }
}
