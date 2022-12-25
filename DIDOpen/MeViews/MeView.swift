//
//  MeView.swift
//  DIDOpen
//
//  Created by VincentMing on 2022/12/14.
//

import SwiftUI

struct MeView: View {
    
    @State var isShowSensitive = true
    @State var isShowTopCard = false
    
    @State var isShowContactCard = false
    
    @State private var selectedCardIdx: Int? = nil
    
    private var offsetY: CGFloat = -130
    
    var body: some View {
        
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        HStack {
                            PersonCell()
                                .onTapGesture {
                                    isShowSensitive.toggle()
                                }
                            Spacer()
                        }
                        .padding()
                        
                        PersonCardView(isShowSensitive: $isShowSensitive)
                            .tag(1)
                            .onTapGesture {
                                showTopCard(tag: 1)
                            }
                        ContactCardView(isShowSensitive: $isShowSensitive)
                            .tag(2)
                            .offset(y: offsetY)
                            .onTapGesture {
                                showTopCard(tag: 2)
                            }
                        EmployCardView(isShowSensitive: $isShowSensitive)
                            .tag(3)
                            .offset(y: offsetY * 2)
                            .onTapGesture {
                                showTopCard(tag: 3)
                            }
                        FinancialView(isShowSensitive: $isShowSensitive)
                            .tag(4)
                            .offset(y: offsetY * 3)
                            .onTapGesture {
                                showTopCard(tag: 4)
                            }
                    }
                }
                .blur(radius: isShowTopCard ? 10 : 0)
                
                if isShowTopCard {
                    VStack {
                        if selectedCardIdx == 1 {
                            VStack {
                                ZStack(alignment: .top) {
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.white)
                                        .shadow(radius: 10)
                                        .frame(width: 348, height: 180 + 480)
                                    
                                    PersonCardView(isShowSensitive: $isShowSensitive)
                                }
                                .padding(.top, 20)
                                .onTapGesture {
                                    cancelTopCard()
                                }
                                
                                Spacer()
                            }
                            
                        } else if selectedCardIdx == 2 {
                            ContactCardView(isShowSensitive: $isShowSensitive)
                                .padding()
                                .onTapGesture {
                                    cancelTopCard()
                                }
                        } else if selectedCardIdx == 3 {
                            EmployCardView(isShowSensitive: $isShowSensitive)
                                .padding()
                                .onTapGesture {
                                    cancelTopCard()
                                }
                        } else if selectedCardIdx == 4 {
                            FinancialView(isShowSensitive: $isShowSensitive)
                                .padding()
                                .onTapGesture {
                                    cancelTopCard()
                                }
                        }
                        
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("Me")
    }
    
    func showTopCard(tag: Int) {
        isShowTopCard = true
        print(tag)
        selectedCardIdx = tag
    }
    
    func cancelTopCard() {
        isShowTopCard = false
        isShowContactCard = false
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}

