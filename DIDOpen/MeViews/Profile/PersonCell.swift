//
//  PersonCell.swift
//  DIDOpen
//
//  Created by VincentMing on 2022/12/14.
//

import SwiftUI

struct PersonCell: View {
    
    var person: Person = Person.me
    
    var body: some View {
        
        HStack {
            
            AvatarView(imageName: person.imageName,
                       size: 60,
                       isRound: true)
            .padding(.trailing, 2)
            
            VStack(alignment: .leading) {
                Text(person.name)
                    .font(Font.system(size: 20))
                    .padding(.bottom, -1)
                
                Text("LV. 18")
                    .font(Font.system(size: 12))
                    .foregroundColor(Color.gray)
            }
            
            
            
            
        }
        
        
    }
}

struct PersonCell_Previews: PreviewProvider {
    static var previews: some View {
        PersonCell()
    }
}
