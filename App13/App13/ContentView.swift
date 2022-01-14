//
//  ContentView.swift
//  App13
//
//  Created by Christopher on 1/11/22.
//  https://www.creatisoft.com


import SwiftUI

struct ContentView: View {
    
    
    @State var ourBool:Bool = false
    @State var ourBool1:Bool = false
    @State var ourBool2:Bool = false
    @State var ourBool3:Bool = false
    @State var ourBool4:Bool = false
    @State var winner = " "
    
    func something(){
        
        if ourBool && ourBool2 && ourBool4 == true{
            
            winner = "Winner"
            
            
        }
        
    }
        
    //@State var ourBool = false
    
    var body: some View {
        
        VStack {

            HStack{
                
                Toggle(isOn: $ourBool) {
       
                    if(ourBool){
                        
                        Text("0")
                            .foregroundColor(Color.green)
                    }else{
                        
                        Text("0")
                        
                    }
                }
                Toggle(isOn: $ourBool1) {
                    Text("1")
                }
                Toggle(isOn: $ourBool2) {
                    if(ourBool2){
                        
                        Text("2")
                            .foregroundColor(Color.green)
                    }else{
                        
                        Text("2")
                        
                    }
                }
                Toggle(isOn: $ourBool3) {
                    Text("3")
                }
                
                Toggle(isOn: $ourBool4) {
                   
                    if(ourBool4){
                        
                        Text("4")
                            .foregroundColor(Color.green)
                    }else{
                        
                        Text("4")
                        
                    }
                    
                }

            }
            
            
            Button(action: something) {
                Text("Check")
            }
            Text(winner)
            
            
            
            
        }.frame(width: 300, height: 300, alignment: .center)
    }
    
    

    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
