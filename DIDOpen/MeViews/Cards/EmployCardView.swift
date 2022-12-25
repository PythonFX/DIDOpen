//
//  EmployCardView.swift
//  DIDOpen
//
//  Created by VincentMing on 2022/12/14.
//

import SwiftUI

struct EmployCardView: View {
    
    @Binding var isShowSensitive: Bool
    
    var cardName: String = "Employ Info"
    
    var person: Person = .me
    
    var bgImageName: String = "EmployBackground"
    
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
                    
                    Text("Job Title: " + sensitiveReducer(content: "iOS Developer"))
                        .padding(.bottom, -3)
                        .font(Font.system(size: 16))
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
                        .shadow(radius: 6)
                    
                    Text("Employer: " + sensitiveReducer(content: "HSBC"))
                        .padding(.bottom, -3)
                        .font(Font.system(size: 16))
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
                        .shadow(radius: 6)
                    
                    Text("Office Address: " + sensitiveReducer(content: "Wall Street No.170"))
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

struct EmployCardView_Previews: PreviewProvider {
    
    @State static var isShow = true
    
    static var previews: some View {
        EmployCardView(
            isShowSensitive: $isShow
        )
    }
}

