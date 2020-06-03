//
//  TutorDetail.swift
//  Simple TableView App Swift UI
//
//  Created by Jeffrey Almonte on 6/3/20.
//  Copyright © 2020 Jeffrey Almonte. All rights reserved.
//

import SwiftUI

struct TutorDetail: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        VStack {
            VStack {
                Image(name)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.orange, lineWidth: 4))
                    .shadow(radius: 10)
                Text(name)
                    .font(.title)
            }
            Text("Founder of AppCoda")
                .font(.subheadline)
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
            .lineLimit(50)
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS programming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
    }
}
