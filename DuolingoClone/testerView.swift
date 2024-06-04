//
//  testerView.swift
//  DuolingoClone
//
//  Created by Victor Soares on 04/06/24.
//

import SwiftUI

struct testerView: View {
    var body: some View {
        HStack { // Header
            
            
            Image("us")
                .resizable()
                .scaledToFit()
                .frame(width: 35)
                .padding(.trailing)
            
            Spacer()
            
            HStack {
                Image("fireGray")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                
                Text("0")
                    .foregroundColor(Color("fireGrayColor"))
                    .bold()
                    .font(.title3)
            }
            
            Spacer()
            
            HStack {
                Image("diamond")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                
                Text("3702")
                    .foregroundColor(Color("blue1"))
                    .bold()
                    .font(.title3)
            }
            
            Spacer()
            
            HStack {
                Image("heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                
                Text("5")
                    .foregroundColor(Color.red)
                    .bold()
                    .font(.title3)
            }
            

        }// Header
        .frame(maxWidth: .infinity, maxHeight: 60)
        .padding(.horizontal)
        .background(Color.white)
    }
}

struct testerView_Previews: PreviewProvider {
    static var previews: some View {
        testerView()
    }
}
