//
//  ProductItemView.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import SwiftUI

struct ProductItemView: View {
    //    MARK: - Properties
    let product: Product
    //    MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //PHOTO
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//:ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue
                             ))
            .cornerRadius(12)
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //PRICE
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//:VStack
    }
}

//    MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
