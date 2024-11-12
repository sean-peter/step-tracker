//
//  ContentView.swift
//  Step Tracker
//
//  Created by Sean Ryan on 12/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                            VStack {
                                HStack {
                                    
                                    Image(systemName: "figure.walk")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 30, alignment: .center)
                                        .imageScale(.large)
                                        .foregroundStyle(.tint)
                                        
                                    
                                    Text("Steps")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.tint)
                                
                                }
                               
                                Text("Avg: 10K Steps")
                                    .font(.footnote)
                                    
                
                                
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                            
                          
                    }
                
                    
                    Rectangle()
                        .frame(width: .infinity, height: 200, alignment: .center)
                        .cornerRadius(20)
                }
            
                .padding(15)
                .background(Color.gray)
            .cornerRadius(24)
            .navigationTitle("hello")
        }
        .padding()

        
    }
}

#Preview {
    ContentView()
}
