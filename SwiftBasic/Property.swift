//
//  Property.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/29.
//

import Foundation

//저장 프로퍼티 => 인스턴스에 프로퍼티의 값이 저장되어있는것을 칭한다 (구조체, 클래스에서만 사용)
//구조체는 값 타입이기 때문에 내부 저장 프로퍼티가 변수여도 구조체를 상수로 설정한다면 프로퍼티를 변경할수없다

struct Dog {
    var name : String
    let gender: String
}
var dog = Dog(name: "pomerain", gender: "Male")
print(dog) //Dog(name: "pomerain", gender: "Male")

dog.name = "will" //가능

let dogLet = Dog(name: "Buldok", gender: "Male")
//dogLet.name = "change" 불가능 =>전체가 상수(클래스는 가능)


class Cat {
    var name : String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

//cat은 Cat(name: "json", gender: "male")이라는 인스턴스 주소를가리킴
//즉 바라보는 그 주소의 값을 변경하지 마시요
//물론 당연히 상수인 gender는 바꾸지 못한다
let cat = Cat(name: "json", gender: "male")
print(cat.gender) //male
cat.name = "Xml"
print(cat.name)   //Xml


//결론 : 클래스,구조체 모두 1차적으로 내부 프로퍼티를 따른다 하지만 인스턴스를 시켰을때
//상수로 정의 한다면 클래스는 단지 주소를 가리키므로 상관없지만 구조체는 내부 프로퍼티와 상관없이 변경시키지 못한다


//-------------------------------------------------------------------------------------
//계산 프로퍼티 (구조체. 클래스. 열거형에서 사용)

struct Stock {
    var averagePrice : Int
    var quantity: Int
    var purchasePrice: Int{
        get { //읽기 (get 생략가능)
            return averagePrice * quantity
        }
        
        set { //쓰기
            averagePrice = newValue / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print("\(stock.averagePrice), \(stock.quantity)") //2300, 3
print(stock.purchasePrice) //6900  =>get
stock.purchasePrice = 3000 //      =>set
print("\(stock.averagePrice), \(stock.quantity)") //1000, 3

//-------------------------------------------------------------------------------------
//프로퍼티 observe

//class도 가능
struct Account{
    var credit : Int = 0{ //현재 값을 초기화 해준 상태이다 => 나중에 초기화 안해줘도 됌
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다")
        }
        didSet{
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다")
        }
    }
}

var account = Account() //"인스턴스 생성후 사용해야한다 ,생성과 동시에 변경은 안된다!(접근불가)"
account.credit = 1000

//-------------------------------------------------------------------------------------
//타입 프로퍼티  => 저장과 연산 프로 퍼티에서만 사용가능

class SomeStructure{
    static var storedTypeProperty = "Some Value" //스토어
    static var computedTypeProperty: Int {
        get{
            return 1
        }
    }
}

print(SomeStructure.storedTypeProperty)
print(SomeStructure.computedTypeProperty)
SomeStructure.storedTypeProperty = "hello"
print(SomeStructure.storedTypeProperty)

