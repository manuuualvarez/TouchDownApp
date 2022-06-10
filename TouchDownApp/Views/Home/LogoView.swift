//
//  LogoView.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import SwiftUI

struct LogoView: View {
    //    MARK: - Body
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down-App".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }//:Stack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
