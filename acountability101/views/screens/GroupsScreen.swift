//
//  GroupsScreen.swift
//  acountability101
//
//  Created by Connor McEnery on 3/10/24.
//

import SwiftUI

struct GroupsScreen: View {
    var body: some View {
        VStack {
            Text("Accountability101").foregroundStyle(Color.red).bold().font(.system(size: 32))
            Text("Groups").bold()
            NavigationLink {
                CreateGroupScreen()
            } label: {
                Text("Create a new group")
            }.foregroundStyle(.black).bold().padding(.horizontal, 40).padding(.vertical, 15).background(.red).clipShape(RoundedRectangle(cornerRadius: 15)).padding(.vertical, 25)
            HStack {
                VStack{
                    HStack{
                        Text("Invites").padding(.leading, 10).bold()
                        Spacer()
                    }
                    ScrollView(.horizontal) {
                        HStack{
                            Spacer()
                            GroupPreviewCard()
                            GroupPreviewCard()
                            GroupPreviewCard()
                        }
                    }
                }
            }.padding(.vertical, 10)
            HStack {
                VStack{
                    HStack{
                        Text("Public Groups").padding(.leading, 10).bold()
                        Spacer()
                    }
                    ScrollView(.horizontal) {
                        HStack{
                            Spacer()
                            GroupPreviewCard()
                            GroupPreviewCard()
                            GroupPreviewCard()
                        }
                    }
                }
            }.padding(.vertical, 10)
            Spacer()
        }.padding(.horizontal, 20)
    }
}

#Preview {
    GroupsScreen()
}
