//
//  PredatorDetail.swift
//  JPApexPredators
//
//  Created by Sergey on 27.10.25.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    var body: some View {
        GeometryReader {geo in
            ScrollView{
                ZStack(alignment: .bottomTrailing){
                    //background image
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    
                    //dino image
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width:geo.size.width/1.5,height: geo.size.height/3.7)
                        .scaleEffect(x:-1)
                        .shadow(color: .black,radius: 7)
                        .offset(y:20)
                    
                }
                //Dino name
//                Text(predator.name).multilineTextAlignment(.leading)
                
                //map
                
                //appearances
                
                
                // movie moments
                
                //link to web
            }
            
        }.ignoresSafeArea()
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[0])
//        .preferredColorScheme(.dark)
}
