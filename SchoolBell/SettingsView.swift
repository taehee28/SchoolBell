//
//  SettingsView.swift
//  SchoolBell
//
//  Created by 강태희 on 2021/09/04.
//

import SwiftUI

struct SettingsView: View {
    @State private var alarmEnabled = false
    @State private var soundEnabled = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("알림")) {
                    Toggle("알림 켜기", isOn: $alarmEnabled)
                    Toggle("종소리 없이 진동만", isOn: $soundEnabled)
                        .disabled(!alarmEnabled)
                }
                
                if alarmEnabled {
                    Section(header: Text("시간")) {
                        NavigationLink(
                            destination: TimeSettingView(),
                            label: {
                                Text("시간 설정하기")
                            })
                    }
                }
                
                
            }.navigationBarTitle("설정")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
