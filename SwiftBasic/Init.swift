//
//  Init.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/29.
//

import Foundation

/*
 초기화?
 
 프로퍼티 초기화
 "인스턴스 생성시" 필요한 설정을 해주는 코드 작성

 =>매개변수만 다르게 해준다면 여러가지 생성자를 정의 할 수있다
*/

class UserInint{
    var nickname: String
    var age : Int
    
    init(nickname: String, age : Int){
        self.nickname = nickname
        self.age = age
    }
    
    // 사용자 정의 생성자
    init(age : Int){
        self.nickname = "age만 초기화"
        self.age = age
    }
    
    deinit {
        print("deinit user")
    }
}

var userInit = UserInint(nickname: "Young", age: 28)
print(userInit.nickname,userInit.age)               //Young 28

var anotherUserInit = UserInint(age: 10)

print(anotherUserInit.nickname,anotherUserInit.age) //age만 초기화 10

var deinitUser: UserInint? = UserInint(age: 3)
deinitUser = nil //UserInint? 통해 가능
