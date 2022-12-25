//
//  CardView.swift
//  DIDOpen
//
//  Created by VincentMing on 2022/12/14.
//

import SwiftUI

struct PersonCardView: View {
    
    @Binding var isShowSensitive: Bool
    
    var cardName: String = "Personal Info"
    
    var person: Person = .me
    
    var bgImageName: String = "PersonBackground"
    
    var body: some View {
        
        ZStack {
            
            Image(bgImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(25)
            
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
                    
                    Text("Name: " + sensitiveReducer(content: person.name))
                        .font(Font.system(size: 16))
                        .padding(.bottom, -3)
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
                    
                    Text("Nationality: " + sensitiveReducer(content: person.nationality))
                        .font(Font.system(size: 16))
                        .padding(.bottom, 18)
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .shadow(radius: 4)
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

struct CardView_Previews: PreviewProvider {
    
    @State static var isShow = true
    
    static var previews: some View {
        PersonCardView(
            isShowSensitive: $isShow,
            cardName: "Personal Info",
            person: Person.me,
            bgImageName: "PersonBackground"
        )
    }
}
