//
//  GroupPreviewCard.swift
//  acountability101
//
//  Created by Connor McEnery on 3/10/24.
//

import SwiftUI

struct GroupPreviewCard: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 15).frame(width: 175, height: 175)
            Text("Group name")
        }
    }
}

#Preview {
    GroupPreviewCard()
}
