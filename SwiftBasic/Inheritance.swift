//
//   Inheritance .swift
//  SwiftBasic
//
//  Created by Young on 2021/08/30.
//

//base class => 어떠한 상속도 받지 않은것
//final 을 사용하면 재정의 불가능 (오버라이딩이나 상속불가)
import Foundation

class Vehicle{
    var currentSpeed = 0.0
    var description:String {
        return "travleling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        print("speaker on")
        
    }
}

//서브클래스(상속받음) 작성-------------------------------------------
class Bicycle : Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
print(bicycle.currentSpeed) //0.0
bicycle.currentSpeed = 15.0
print(bicycle.currentSpeed) //15.0

//오버라이딩-------------------------------------------------------
//메소드 오버라이딩
class Train : Vehicle{
    override func makeNoise() {
        super.makeNoise()       //super 키워드를 통해 슈퍼클래스의 속성도 같이 사용할수있음
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()   //speaker on
                    //choo choo


//프로퍼티 오버라이딩
class Car: Vehicle{
    var gear = 1
    override var description: String{
        get{
            return super.description + "in gear \(gear)"
        }
    }
}

let car  = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)


//프로퍼티 옵저버를 오버라이딩 가능
class AutomaticCar: Car {
    override var currentSpeed: Double{
        willSet{
            print("\(currentSpeed)에서 \(newValue)바뀝니다")
        }
        didSet{
            print("\(oldValue)에서 \(currentSpeed)로 바껴졌습니다")
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar:\(automatic.description)")
