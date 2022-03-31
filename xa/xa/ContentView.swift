//
//  ContentView.swift
//  xa
//
//  Created by lole la on 2022/3/31.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSubscribed = false
    @State private var animatingCircle = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            //list cell
            VStack (spacing: 50.0){
                HStack{
                    Text("一个按钮还有一堆信息")
                        .bold()
                        .opacity(isSubscribed ? 1.0 : 0.5)
                    Spacer()
                    Image(systemName: isSubscribed ? "checkmark.seal.fill": "checkmark")
                        .font(.system(size: 30))
                        .scaleEffect(isSubscribed ? 1.25 :1.0)
                        .foregroundColor(isSubscribed ?.green :.black)
                        .padding()
                        .blur(radius: 0.5)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.3)){isSubscribed.toggle()}
                        }
                }.padding().background(Color.white.opacity(0.6).cornerRadius(60).blur(radius: 1))
                //shape with spring
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .blur(radius: 1)
                    .opacity(0.8)
                    .offset(x: animatingCircle ? 30 :0, y: animatingCircle ? -100 : 0)
                    .scaleEffect(animatingCircle ? 2.0 : 1.0)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0)){
                            animatingCircle.toggle()
                        }
                    }
                
                //button example
                //这个版本用不了lable,没有button{action}
                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
