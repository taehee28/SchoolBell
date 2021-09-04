//
//  TimeSettingView.swift
//  SchoolBell
//
//  Created by 강태희 on 2021/09/04.
//

import SwiftUI

struct TimeSettingView: View {
    @State private var startTime = Date()
    @State private var preLaunchEndBellEnabled = false
    
    var body: some View {
        NavigationView {
            Form {
                DatePicker(
                    "수업 시작 시간",
                    selection: $startTime,
                    displayedComponents: [.hourAndMinute]
                )
                
                Section(header: Text("한 교시당 시간")) {
                    DatePicker(
                        "수업 시간",
                        selection: $startTime,
                        displayedComponents: [.hourAndMinute]
                    )
                    
                    DatePicker(
                        "쉬는 시간",
                        selection: $startTime,
                        displayedComponents: [.hourAndMinute]
                    )
                }
                
                Section(header: Text("점심 시간")) {
                    DatePicker(
                        "점심 시간",
                        selection: $startTime,
                        displayedComponents: [.hourAndMinute]
                    )
                    
                    Toggle("10분 전 예비종", isOn: $preLaunchEndBellEnabled)
                    
                    
                }
                
                Section(header: Text("프리셋")) {
                    Button("요즘 고등학교 시간표") {
                        
                    }
                    
                    Button("예전 고등학교 시간표") {
                        
                    }
                    
                    
                }
            }.navigationBarHidden(true)
        }
    }
}

struct TimeSettingView_Previews: PreviewProvider {
    static var previews: some View {
        TimeSettingView()
    }
}
