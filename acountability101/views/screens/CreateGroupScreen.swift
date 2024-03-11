//
//  CreateGroupScreen.swift
//  acountability101
//
//  Created by Connor McEnery on 3/10/24.
//

import SwiftUI

struct CreateGroupScreen: View {
    @State var groupName = "Group name"
    @State var isPrivate = true
    @State var groupBio = ""
    @State var chosenPostType = ""
    
    //Create new post type variables
    @State private var showingCreatePostTypePopver = false
    @State private var propertiesArray: [Property] = [
        Property(propertyName: "Property name", id: 0)
    ]
    @State private var wasEdited = false
    @State private var postTypeName = ""
    
    //Invite users to group
    @State private var showingInviteUserToGroupPopover = false
    
    
    var body: some View {
        VStack{
            Text("Accountability101").foregroundStyle(Color.red).bold().font(.system(size: 32))
            Text("Create a group").bold()
            ScrollView{
                VStack(spacing: 20) {
                    HStack {
                        Text("Group name").bold()
                        Spacer()
                    }
                    TextField("Group name", text: $groupName)
                    RoundedRectangle(cornerRadius: 15).frame(width: 250, height: 250)
                    HStack(spacing: 0) {
                        Button("Private"){
                            isPrivate = true
                        }.padding(10).bold().background(isPrivate ? .blue : .gray).foregroundStyle(.white).clipShape(.rect(topLeadingRadius: 10, bottomLeadingRadius: 10))
                        Button("Public") {
                            isPrivate = false
                        }.padding(10).bold().background(isPrivate ? .gray : .blue).foregroundStyle(.white).clipShape(.rect(bottomTrailingRadius: 10, topTrailingRadius: 10))
                    }
                    HStack {
                        Text("Group bio").bold()
                        Spacer()
                    }
                    TextField("Group bio", text: $groupBio)
                    HStack {
                        Text("Post type").bold()
                        Spacer()
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            Button(action: {
                                showingCreatePostTypePopver = true
                            }) {
                                    VStack {
                                        if chosenPostType != "custom" && postTypeName == "" && wasEdited == false {
                                            Image(systemName: "plus.app.fill").resizable().frame(width: 150, height: 150).foregroundStyle(.red)
                                                .overlay(RoundedRectangle(cornerRadius: chosenPostType == "custom" ? 10 : 0).inset(by: chosenPostType == "custom" ? 2 : 0).stroke(.red, lineWidth: chosenPostType == "custom" ? 2: 0))
                                            Text("Create new").foregroundStyle(.black)
                                        } else {
                                            Image(systemName: "pencil").resizable().frame(width: 100, height: 100).foregroundStyle(.red).padding(25).background(.gray).clipShape(RoundedRectangle(cornerRadius: 15))
                                                
                                                .overlay(RoundedRectangle(cornerRadius: chosenPostType == "custom" ? 10 : 0).inset(by: chosenPostType == "custom" ? 2 : 0).stroke(.red, lineWidth: chosenPostType == "custom" ? 2: 0))
                                            Text("Custom type").foregroundStyle(.black)
                                        }
                                }
                            }.popover(isPresented: $showingCreatePostTypePopver, content: {
                                CreatePostTypePopoverView(showingCreatePostTypePopver: $showingCreatePostTypePopver, propertiesArray: $propertiesArray, postTypeName: $postTypeName, chosenPostType: $chosenPostType, wasEdited: $wasEdited)
                            })
                            Button(action: {
                                chosenPostType = "workout"
                            }) {
                                VStack {
                                    RoundedRectangle(cornerRadius: 15).frame(width: 150, height: 150)
                                        .overlay(RoundedRectangle(cornerRadius: chosenPostType == "workout" ? 10 : 0).inset(by: chosenPostType == "workout" ? 2 : 0).stroke(.red, lineWidth: chosenPostType == "workout" ? 2: 0))
                                    Text("Workout").foregroundStyle(.black)
                                }
                            }
                            Button(action: {
                                chosenPostType = "reading"
                            }) {
                                VStack {
                                    RoundedRectangle(cornerRadius: 15).frame(width: 150, height: 150)
                                        .overlay(RoundedRectangle(cornerRadius: chosenPostType == "reading" ? 10 : 0).inset(by: chosenPostType == "reading" ? 2 : 0).stroke(.red, lineWidth: chosenPostType == "reading" ? 2: 0))
                                    Text("Reading").foregroundStyle(.black)
                                }
                            }
                        }
                    }
                    HStack {
                        Text("Invite members").bold()
                        Spacer()
                    }
                    ScrollView(.horizontal) {
                        LazyHStack{
                            Button(action: {
                                showingInviteUserToGroupPopover = true
                            }) {
                                VStack{
                                    HStack {
                                        Image(systemName: "person.fill.badge.plus").resizable().frame(width: 75, height: 75).foregroundStyle(.white)
                                    }.frame(width: 100, height: 100).background(.red).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    Text("Find user")
                                }
                            }.popover(isPresented: $showingInviteUserToGroupPopover, content: {
                                InviteUserToGroupPopover(groupName: groupName)
                            })
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                            VStack{
                                Circle().frame(width: 100, height: 100)
                                Text("Username")
                            }
                        }
                    }
                    Button("Create group") {
                        
                    }.padding(20).bold().foregroundStyle(.white).background(.blue).clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
        }.padding(.horizontal, 20)
    }
}

#Preview {
    CreateGroupScreen(groupName: "")
}
