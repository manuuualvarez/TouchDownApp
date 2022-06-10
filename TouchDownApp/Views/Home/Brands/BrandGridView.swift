//
//  BrandGridView.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties


    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, spacing: columSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//:Loop
            }//Grid
            .frame(height: 200)
            .padding(15)
        }//:Scroll
    }
}

// MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
