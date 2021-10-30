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
    
    @AppStorage("startTime") var startTime = Date()
    @AppStorage("preLaunchEndBellEnabled") var preLaunchEndBellEnabled = false
    @AppStorage("studyPeriod") var studyPeriod = 5
    @AppStorage("recessPeriod") var recessPeriod = 0
    @AppStorage("launchPeriod") var launchPeriod = 20
    @AppStorage("startLaunchAfter") var startLaunchAfter = 1
    @AppStorage("totalPeriodCount") var totalPeriodCount = 1

//    @State private var preLaunchEndBellEnabled = false
//    @State private var studyPeriod = 5
//    @State private var recessPeriod = 0
//    @State private var launchPeriod = 20
//    @State private var startLaunchAfter = 1
//    @State private var totalPeriodCount = 1
    let timeStep = 5
    
    
    
    
    var body: some View {
        Form {
            DatePicker(
                "수업 시작 시간",
                selection: $startTime,
                displayedComponents: [.hourAndMinute]
            )
            
            Text("\(startTime)")
            
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
                Stepper(value: $startLaunchAfter, in: 1...5) {
                    Text("\(startLaunchAfter) 교시 후에 점심시간")
                }
                
                Stepper(value: $launchPeriod, in: 20...90, step: timeStep) {
                    Text("점심 \(launchPeriod) 분")
                }
                
                Toggle("10분 전 예비종", isOn: $preLaunchEndBellEnabled)
                
            }
            
            Section(header: Text("하루동안 몇교시 할거냐는 말을 어떻게 깔끔하게 쓸 수 있을지")) {
                Stepper(value: $totalPeriodCount, in: 1...10, step: 1) {
                    Text("총 \(totalPeriodCount) 교시")
                }
                
                // todo : 몇시부터 시작해서 몇시에 끝난다는 요약 보여주기
                Text("")
            }
            
            Section(header: Text("프리셋")) {
                Button("요즘 고등학교 시간표") {
                    // todo
                }
                
                Button("예전 고등학교 시간표") {
                    // todo
                }
                
                
            }
        }
        .navigationBarTitle("시간 설정하기")
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct TimeSettingView_Previews: PreviewProvider {
    static var previews: some View {
        TimeSettingView()
    }
}
