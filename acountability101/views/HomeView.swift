//
//  HomeView.swift
//  acountability101
//
//  Created by Connor McEnery on 3/9/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Accountability101").foregroundStyle(Color.red).bold().font(.system(size: 32))
            Button("Create or join a group") {
                
            }.foregroundStyle(.black).bold().padding(.horizontal, 40).padding(.vertical, 15).background(.red).clipShape(RoundedRectangle(cornerRadius: 15)).padding(.vertical, 25)
            ScrollView {
                GroupCard(groupName: "AA Workout Group")
                GroupCard(groupName: "Reading Group")
            }
            Spacer()
        }.padding(.horizontal, 20)
    }
}

#Preview {
    HomeView()
}
