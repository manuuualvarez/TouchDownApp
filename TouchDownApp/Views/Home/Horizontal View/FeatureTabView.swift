//
//  FeatureTabView.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import SwiftUI

struct FeatureTabView: View {
    //    MARK: - Properties
    //    MARK: - Body
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }//:Loop
        }//:Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

//    MARK: - Preview
struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
