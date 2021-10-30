//
//  SettingsView.swift
//  SchoolBell
//
//  Created by 강태희 on 2021/09/04.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("alarmEnabled") var alarmEnabled = false
    @AppStorage("soundEnabled") var soundEnabled = false
//    @AppStorage("alarmEnabled") var alarmEnabled = UserDefaults.standard.bool(forKey: "alarmEnabled")
//    @AppStorage("soundEnabled") var soundEnabled = UserDefaults.standard.bool(forKey: "soundEnabled")
    
    var body: some View {
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
            
            
        }
        .navigationBarTitle("설정")
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
