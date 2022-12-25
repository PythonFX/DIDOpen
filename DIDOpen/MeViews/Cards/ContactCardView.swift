//
//  ContactCardView.swift
//  DIDOpen
//
//  Created by VincentMing on 2022/12/14.
//

import SwiftUI

struct ContactCardView: View {
    
    @Binding var isShowSensitive: Bool
    
    var cardName: String = "Contact Info"
    
    var person: Person = .me
    
    var bgImageName: String = "ContactBackground"
    
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
                    
                    Text("Phone Number: " + sensitiveReducer(content: "+86 18666888999"))
                        .padding(.bottom, -3)
                        .font(Font.system(size: 16))
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
                        .shadow(radius: 6)
                    
                    Text("Address: " + sensitiveReducer(content: "London King Street No.1865"))
                        .padding(.bottom, -3)
                        .font(Font.system(size: 16))
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
                        .shadow(radius: 6)
                    
                    Text("E-mail: " + sensitiveReducer(content: "example@gmail.com"))
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

struct ContactCardView_Previews: PreviewProvider {
    
    @State static var isShow = true
    
    static var previews: some View {
        ContactCardView(
            isShowSensitive: $isShow
        )
    }
}
