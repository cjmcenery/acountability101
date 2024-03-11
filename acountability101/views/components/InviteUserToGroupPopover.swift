//
//  InviteUserToGroupPopover.swift
//  acountability101
//
//  Created by Connor McEnery on 3/10/24.
//

import SwiftUI

struct SearchResult: Identifiable {
    var id: Int
    var image: String
    var userName: String
    var userId: String
    var isInvited: Bool
    var isFriend: Bool
}

struct InviteUserToGroupPopover: View {
    @State var groupName: String
    @State var searchBarInput = ""
//    @Binding var invitedList: [SearchResult]
        
    @State var searchResultsList: [SearchResult] = [
        SearchResult(id: 0, image: "person", userName: "cjmcenery", userId: "123", isInvited: false, isFriend: true)
    ]
    
    var body: some View {
        VStack {
            Text("Invite others to " + groupName).bold()
            TextField("Search", text: $searchBarInput).padding(10).background(.gray).clipShape(RoundedRectangle(cornerRadius: 5)).foregroundStyle(.black)
            ForEach(0..<$searchResultsList.count) { index in
                HStack {
                    Image(systemName: searchResultsList[index].image)
                    Text(searchResultsList[index].userName)
                }
            }
            Spacer()
        }.padding(.horizontal, 20)
    }
}

#Preview {
    InviteUserToGroupPopover(groupName: "AA Workout Group")
}
