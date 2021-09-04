//
//  MainView.swift
//  SchoolBell
//
//  Created by 강태희 on 2021/09/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Text("지금은 \n @@시간!")
            .font(.title)
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
