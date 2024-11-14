//
//  ContentView.swift
//  Step Tracker
//
//  Created by Sean Ryan on 12/11/2024.
//

import SwiftUI



enum HealthMetricContext: CaseIterable, Identifiable {
    case steps, weight
    
    var id: Self { self }
    var title: String {
        switch self {
        case.steps:
            return "Steps"
        case.weight:
            return "Weight"
        }
    }
    
}



struct ContentView: View {
    
    @State private var selectedStat: HealthMetricContext = .steps
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack(spacing: 20){
                    
                    Picker("Selected Stat", selection: $selectedStat) {
                        ForEach(HealthMetricContext.allCases) { metric in
                            Text(metric.title)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    VStack{
                        NavigationLink(value: selectedStat){
                            HStack{
                                VStack(alignment: .leading){
                                    Label("Steps", systemImage: "figure.walk")
                                        .font(.title3.bold())
                                        .foregroundStyle(.pink)
                                    
                                    
                                    Text("Avg: 10K Steps")
                                        .font(.caption)

                                }
                                
                                Spacer()
                                Image(systemName: "chevron.right")
                                
                            }
                        }
                        .foregroundStyle(.secondary)
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
            .navigationDestination(for: HealthMetricContext.self) { metric in
                Text(metric.title)
            }
        }
        
  
        
        
        
    }
}

#Preview {
    ContentView()
}
