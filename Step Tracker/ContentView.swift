//
//  ContentView.swift
//  Step Tracker
//
//  Created by Sean Ryan on 12/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ScrollView{
               
                //MARK: - top card
                
                VStack(spacing: 20){
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                Label("Steps", systemImage: "figure.walk")
                                    .font(.title3.bold())
                                    .foregroundStyle(.pink)
                                
                                
                                Text("Avg: 10K Steps")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)

                            }
                            
                            Spacer()
                            Image(systemName: "chevron.right")
                            
                        }
                        .padding(.bottom, 12)
                        
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundStyle(.secondary)
                            .frame(height: 150)
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 12).fill(Color(.secondarySystemBackground)))
                    
                    //MARK: - Second Card
                    
                    VStack{
                        VStack(alignment: .leading){
                            HStack{
                                VStack{
                                    Label("Averages", systemImage: "calendar")
                                        .font(.title3.bold())
                                        .foregroundStyle(.pink)
                                    
                                    
                                    Text("Last 28 Days")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)

                                }
                                
                               
                                
                            }
                            .padding(.bottom, 12)
                            
                            RoundedRectangle(cornerRadius: 6)
                                .foregroundStyle(.secondary)
                                .frame(height: 240)
                            
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color(.secondarySystemBackground)))
                    }
                    
                    
                    
                }
  
                
                
                
                //MARK: - Nav etc
                
                
            }
            .padding()
            .navigationTitle("Dashboard")
        }
        
  
        
        
        
    }
}

#Preview {
    ContentView()
}
