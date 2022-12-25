//
//  FinancialView.swift
//  DIDOpen
//
//  Created by VincentMing on 2022/12/14.
//

import SwiftUI

struct FinancialView: View {
    
    @Binding var isShowSensitive: Bool
    
    var cardName: String = "Financial Info"
    
    var bgImageName: String = "FinancialBackground"
    
    var body: some View {
        
        ZStack {
            
            Image(bgImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 348, height: 180)
                .cornerRadius(25)
                .opacity(0.9)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(cardName)
                        .font(Font.system(size: 22))
                        .foregroundColor(.white)
                        .bold()
                        .padding(.top, 15)
                        .padding(.bottom, 10)
                        .shadow(radius: 3)
                        .shadow(radius: 6)
                        .shadow(radius: 9)
                        .shadow(radius: 12)
                    
                    Spacer()
                    
                    Text("Monthly Income: " + sensitiveReducer(content: "80000"))
                        .padding(.bottom, -3)
                        .font(Font.system(size: 16))
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
                        .shadow(radius: 6)
                    
                    Text("Credit Score: " + sensitiveReducer(content: "785"))
                        .padding(.bottom, 18)
                        .font(Font.system(size: 16))
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
                        .shadow(radius: 6)
                        
                }
                .padding(.leading, 20)
                Spacer()
            }
            
        }
        .frame(width: 348, height: 180)
        .shadow(radius: 10)
        
    }
    
    func sensitiveReducer(content: String) -> String {
        let count = content.count
        return isShowSensitive ? content : String(repeating: "*", count: count)
    }
}

struct FinancialView_Previews: PreviewProvider {
    
    @State static var isShow = true
    
    static var previews: some View {
        FinancialView(
            isShowSensitive: $isShow
        )
    }
}
