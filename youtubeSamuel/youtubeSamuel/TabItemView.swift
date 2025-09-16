//
//  TabItemView.swift
//  navegacao_3A21
//
//  Created by COTEMIG on 16/09/25.
//

import SwiftUI

struct TabItemView: View {
    let icon: String
    var body: some View {
        Image(systemName: icon)
            .imageScale(.large)
            .foregroundColor(.accentColor)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(icon: "heart")
    }
}
