//
//  TimeSettingView.swift
//  SchoolBell
//
//  Created by 강태희 on 2021/09/04.
//

/**
 todo list
 
 요일 지정 가능해야할듯??
 그리고 최상단에 화면 타이틀 추가하기
 */


import SwiftUI

struct TimeSettingView: View {
    @State private var startTime = Date()
    @State private var preLaunchEndBellEnabled = false
    @State private var studyPeriod = 5
    @State private var recessPeriod = 0
    @State private var launchPeriod = 20
    @State private var totalPeriodCount = 0
    let timeStep = 5
    
    var body: some View {
        NavigationView {
            Form {
                DatePicker(
                    "수업 시작 시간",
                    selection: $startTime,
                    displayedComponents: [.hourAndMinute]
                )
                
                Section(header: Text("한 교시당 시간")) {
                    Stepper(value: $studyPeriod, in: 5...60, step: timeStep) {
                        Text("수업 \(studyPeriod) 분")
                    }
                    
                    Stepper(value: $recessPeriod, in: 0...60, step: timeStep) {
                        Text("쉬는시간 \(recessPeriod) 분")
                    }
                    
                    Text("총 \(studyPeriod + recessPeriod) 분 ")
                }
                
                Section(header: Text("점심시간")) {
                    Stepper(value: $launchPeriod, in: 20...90, step: timeStep) {
                        Text("점심 \(launchPeriod) 분")
                    }
                    
                    Toggle("10분 전 예비종", isOn: $preLaunchEndBellEnabled)
                    
                    // todo : 몇교시 후에 점심시간을 가질껀지
                }
                
                Section(header: Text("하루동안 몇교시 할거냐는 말을 어떻게 깔끔하게 쓸 수 있을지")) {
                    Stepper(value: $totalPeriodCount, in: 1...10, step: 1) {
                        Text("총 \(totalPeriodCount) 교시")
                    }
                    
                    // todo : 몇시부터 시작해서 몇시에 끝난다는 요약 보여주기
                }
                
                Section(header: Text("프리셋")) {
                    Button("요즘 고등학교 시간표") {
                        // todo
                    }
                    
                    Button("예전 고등학교 시간표") {
                        // todo
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
