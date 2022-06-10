//
//  RatingSizesView.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import SwiftUI

struct RatingSizesView: View {
    // MARK: - Properties
    let sizes: [String] = ["XS", "S", "L", "M", "XL"]

    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            //RATINGS
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })//:Button
                    }//:Loop
                }//HStack
            }//VStack
            Spacer()
            //SIZES
            VStack(alignment: .trailing, spacing: 5) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                                
                        })//:Button
                    }//:Loop
                }//HStack
            }//VStack
            
            
        }//HStack
    }
}

// MARK: - Preview
struct RatingSizesView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
