//
//  ContentView.swift
//  Simon Tells
//
//  Created by Brody Dickson on 9/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var color = "green"
    @State var pick = 0
    @State var LightUpRed = 0.5
    @State var LightUpBlue = 0.5
    @State var LightUpGreen = 0.5
    @State var LightUpYellow = 0.5
    @State var RunningArray = [String]()
    @State var StartOpac = 1.0
    @State var Clicked = ""
    @State var gameOver = false
    @State var RedSound = ""
    @State var GreenSound = ""
    @State var YellowSound = ""
    @State var BlueSound = ""
    var body: some View {
        ZStack{
            
            VStack {
                HStack{
                    Rectangle()
                        .fill(.green)
                        .opacity(LightUpGreen)
                        .frame(width: 200, height: 450)
                        .onTapGesture {
                            if color == "green" {
                                score += 1
                                LightUpGreen = 0.5
                                Picker()
                            } else {
                                score = 0
                                LightUpGreen = 0.5
                                Picker()
                            }
                        }
                    Rectangle()
                        .fill(.red)
                        .opacity(LightUpRed)
                        .frame(width: 200, height: 450)
                        .onTapGesture {
                            if color == "red" {
                                score += 1
                                LightUpRed = 0.5
                                Picker()
                            } else {
                                score = 0
                                LightUpRed = 0.5
                                Picker()
                            }
                        }
                    
                }
                HStack{
                    Rectangle()
                        .fill(.yellow)
                        .opacity(LightUpYellow)
                        .frame(width: 200, height: 450)
                        .onTapGesture {
                            if color == "yellow" {
                                score += 1
                                LightUpYellow = 0.5
                                Picker()
                                
                            } else {
                                score = 0
                                LightUpYellow = 0.5
                                Picker()
                            }
                        }
                    Rectangle()
                        .fill(.blue)
                        .opacity(LightUpBlue)
                        .frame(width: 200, height: 450)
                        .onTapGesture {
                            if color == "blue" {
                                score += 1
                                LightUpBlue = 0.5
                                Picker()
                                
                            } else {
                                score = 0
                                LightUpBlue = 0.5
                                Picker()
                                
                            }
                        }
                    
                }
                
            }
            Text(String(score))
                .font(.system(size: 36))
            Button("Start"){
                Picker()
                StartOpac = 0.0
            }
            .font(.system(size: 36))
            .opacity(StartOpac)
                
        }
        
    }
    private func Picker(){
        color = ""
        pick = Int.random(in: 1..<5)
        switch pick {
        case 1:
                color = "red"
            LightUpRed = 1
        case 2:
                color = "green"
            LightUpGreen = 1
        case 3:
                color = "yellow"
            LightUpYellow = 1
        case 4:
                color = "blue"
            LightUpBlue = 1
        default:
            color = "blue"
        }
        RunningArray.append(color)
        }
    private func Repeater(){
        ForEach(0 ..< RunningArray.count) {value in
                   RunningArray[value]
            if value == "red"{
                
            }
            if Clicked == false{
                gameOver = true
            }
            
               }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
