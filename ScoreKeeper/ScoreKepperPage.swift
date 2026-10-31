//
//  ScoreKepperPage.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 31/10/26.
//

import SwiftUI

struct ScoreKepperPage: View {
    @State private var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmine", score: 0),
    ]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.largeTitle)
                .bold()
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                        .gridColumnAlignment(.leading)
                }
                .font(.headline)
                
                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        
                       Text("\(player.score)")
                        
                        Stepper("\(player.score)", value: $player.score).labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus") {
                players.append(Player())
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ScoreKepperPage()
}
