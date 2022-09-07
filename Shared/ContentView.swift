//
//  ContentView.swift
//  Shared
//
//  Created by 최현수 on 2022/09/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selectButton = false
    @State private var selectButton2 = false
    @State public var state: String = ""
    @State public var state2: String = ""
    
    func buttonAction(state: String) {
        self.state = state
        self.selectButton = false
        self.selectButton.toggle()
    }
    
    func buttonAction2(state: String) {
        self.state2 = state
        self.selectButton2 = false
        self.selectButton2.toggle()
    }
    
    var body: some View {
        VStack(alignment: .center){
            Text("Q1. 인생에서 가장 중요한 것은 무엇인가요?")
            VStack() {
                if selectButton {
                    if state == "love"{
                        Image(systemName: "heart")
                        Text("사랑")
                    }
                    if state == "friendShip"{
                        Image(systemName: "person")
                        Text("우정")
                    }
                    if state == "game"{
                        Image(systemName: "gamecontroller")
                        Text("게임")
                    }
                    if state == "exercise"{
                        Image("figure.run")
                        Text("운동")
                    }
                }
        
                HStack(){
                    Button {
                        buttonAction(state: "love")
                    } label: {
                        Image(systemName: "heart")
                        Text("사랑")
                    }
                    Button {
                        buttonAction(state: "friendShip")
                    } label: {
                        Image(systemName: "person")
                        Text("우정")
                    }
                }
                HStack(){
                    Button {
                        buttonAction(state: "game")
                    } label: {
                        Image(systemName: "gamecontroller")
                        Text("게임")
                    }
                    Button {
                        buttonAction(state: "exercise")
                    } label: {
                        Image("figure.run")
                        Text("운동")
                    }
                }
            }
            .padding()
            Text("Q2. 지금 가장 여행가고 싶은 곳은?")
            
            VStack() {
                if selectButton2 {
                    if state2 == "river"{
                        Image("fish")
                        Text("계곡")
                    }
                    if state2 == "sea"{
                        Image("beach.umbrella")
                        Text("바다")
                    }
                    if state2 == "baseball"{
                        Image("baseball")
                        Text("야구장")
                    }
                    if state2 == "city"{
                        Image(systemName: "car")
                        Text("도심")
                    }
                }
                HStack(){
                    Button {
                        buttonAction2(state: "river")
                    } label: {
                        Image("fish")
                        Text("계곡")
                    }
                    Button {
                        buttonAction2(state: "sea")
                    } label: {
                        Image("beach.umbrella")
                        Text("바다")
                    }
                }
                HStack(){
                    Button {
                        buttonAction2(state: "baseball")
                    } label: {
                        Image("baseball")
                        Text("야구장")
                    }
                    Button {
                        buttonAction2(state: "city")
                    } label: {
                        Image(systemName: "car")
                        Text("도심")
                    }
                }
            }
            .padding()
        }
        .frame(width: 300, height: 700, alignment: .topLeading)
    }
}

struct ContentView_Previewsi: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
