//
//  GroupCard.swift
//  acountability101
//
//  Created by Connor McEnery on 3/9/24.
//

import SwiftUI

struct GroupCard: View {
    @State var groupName: String
    
    
    var body: some View {
        VStack {
            Text(groupName).font(.system(size: 20, weight: .bold))
            ScrollView(.horizontal) {
                LazyHStack{
                    VStack {
                        HStack(spacing: 10) {
                            RoundedRectangle(cornerRadius: 10).frame(width: 160, height: 190)
                            VStack {
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                            }
                            VStack {
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                            }
                        }
                    }
                    VStack {
                        HStack(spacing: 10) {
                            VStack {
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 11))
                            }
                            VStack {
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                            }
                            VStack {
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                            }
                            VStack {
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                                Circle().frame(width: 75, height: 75)
                                Text("5 min ago").font(.system(size: 10))
                            }
                        }
                    }
                }.scrollTargetLayout()
            }.padding(10).background(Color(red: 0.9, green: 0.9, blue: 0.9)).clipShape(RoundedRectangle(cornerRadius: 15)).overlay(RoundedRectangle(cornerRadius: 10).inset(by: 1).stroke(.red, lineWidth: 1)).frame(width: 350, height: 210).scrollTargetBehavior(.viewAligned)
        }
    }
}

#Preview {
    GroupCard(groupName: "AA Workout Group")
}
