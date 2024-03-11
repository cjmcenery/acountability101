//
//  CreateGroupTypePopoverView.swift
//  acountability101
//
//  Created by Connor McEnery on 3/10/24.
//

import SwiftUI

struct Property: Identifiable {
    var propertyName: String
    var id: Int
}

struct CreatePostTypePopoverView: View {
    @Binding var showingCreatePostTypePopver: Bool
    @Binding var propertiesArray: [Property]
    @Binding var postTypeName: String
    @Binding var chosenPostType: String
    @Binding var wasEdited: Bool
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text("Post type name").bold()
                    Spacer()
                }
                TextField("Enter a name", text: $postTypeName)
                Text("Add properties")
                ForEach(0..<propertiesArray.count, id: \.self) { index in
                    HStack{
                        Text("Property " + (index + 1).formatted() + ": ")
                        TextField( propertiesArray[index].propertyName, text: $propertiesArray[index].propertyName).padding(5).background(.gray).clipShape(RoundedRectangle(cornerRadius: 5))
                        Button(action: {
                            propertiesArray.remove(at: index)
                        }) {
                            Image(systemName: "trash").foregroundStyle(.red)
                        }
                    }
                }
                Button("Add property") {
                    propertiesArray.append(Property(propertyName: "Property name", id: propertiesArray.count))
                }
                Button("Save post type") {
                    chosenPostType = "custom"
                    wasEdited = true
                    showingCreatePostTypePopver = false
                }.padding(20).bold().foregroundStyle(.white).background(.blue).clipShape(RoundedRectangle(cornerRadius: 15))
            }
        }.padding(.horizontal, 20)
    }
}

//#Preview {
//    CreatePostTypePopoverView(showingPopover: false)
//}
