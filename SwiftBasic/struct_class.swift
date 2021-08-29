//
//  struct_class.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/29.
//

import Foundation

//구조체
struct User {
    var nickName: String
    var age : Int
    
    func information() {
        print("\(nickName), \(age)")
    }
}

//인스턴스 생성 == 메모리에서 실행한다

var user = User(nickName: "william", age: 28) //구조체는 생성자를 따로 지정안해도 기본적으로 만들어진다
print(user.nickName)  //william
user.nickName = "Albert"
print(user.nickName)  //Albert
user.information()    //Albert, 28

//클래스

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init() {
        //인스턴스가 생성되면 호출
    }
    func introduce(){
        print("name:\(name) age:\(age)")
    }
}

var dog = Dog()
dog.name = "CoCo" //change value
dog.age = 3
dog.introduce() //name CoCo age 3
