//
//  ContentView.swift
//  War Card Game
//
//  Created by Chris Ching on 2022-12-02.
//

import SwiftUI

struct ContentView: View {
    
    @State var PlayerCard = "card7"
    @State var CpuCard = "card13"
    @State var PlayerScore = 0
    @State var CpuScore = 0
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(PlayerCard)
                    Spacer()
                    Image(CpuCard)
                    Spacer()
                }
                Spacer()
             
                Button {
                    Deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(PlayerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(CpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
        
    }
    
    func Deal()
    {
        var PlayerCardvalue = Int.random(in: 2...14)
        PlayerCard = "card" + String(PlayerCardvalue)
        
        var CpuCardValue = Int.random(in: 2...14)
        CpuCard = "card" + String(CpuCardValue)
        
        if PlayerCardvalue > CpuCardValue {
            PlayerScore += 1
        }
            else if PlayerCardvalue < CpuCardValue {
                CpuScore += 1
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
