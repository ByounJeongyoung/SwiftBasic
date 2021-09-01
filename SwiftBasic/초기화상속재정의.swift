//
//  초기화상속:재정의.swift
//  SwiftBasic
//
//  Created by Young on 2021/09/01.
//

import Foundation

class Vehicle {
    var numberOfWheels = 0
    var description : String {
        return "\(numberOfWheels) wheels"
    }
}

class Bicycle: Vehicle{
    
    var window : Int
       
        init(window : Int) {  //init()형태가 아니므로 오버리이드 아님
        self.window = window
        super.init()         //슈퍼클래스 호출 반드시 필요
        numberOfWheels = 2   //초기화의 2단계 값 설정
    }
}

var bicycle = Bicycle(window: 3)
print(bicycle.window)

class Hoverboard : Vehicle{
    var color: String = "yellow"
    //var color: String  =>     override init() 사용시
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
    //---------------------------------------------원칙------------------------------
    override init() {
        //저장속성이  var color: String라면
        self.color = "gg"      //저장속성을 정해주자
        super.init()           //상위 지정상태를 정해주자
    }
    
    init(color : String){
        self.color = color     //저장속성을 정해주자
        super.init()           //상위 지정상태를 정해주자
    }
}

var a = Hoverboard()
var b = Hoverboard(color: "blue")
print("\(a.color)")
print("\(b.color)")
