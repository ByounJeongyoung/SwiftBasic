//
//  struct_class.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/29.
//

/*
 클래스와 구조체의 공통점
     -값을 저장할 프로퍼티를 선언할수있다
     -함수적 기능을 하는 메서드를 선언할수있다
     -내부 값에 . 을 사용하여 접근할수있다
     -생성자를 사용해 초기 상태를 설정할수있다
     -extension을 사용해서 기능을 확장할수있다
     -Protocol을 채택하여 기능을 설정할수있다

 차이점
    클래스
         -참조타입 => stack영역에 pointer즉 instance의 메모리 주소만 할당 실질 데이터는 힙에 할당(ARC로 메모리 관리)
         -같은 클래스의 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 준다 (메모리가 복사됨)
         -deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제할수있음
         -타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인 할 수있음
         -상속이 가능
 
    구조체
         -값타입
         -스택영역에 저장되어 ARC로 메모리 관리를 하지않는다
         -구조체 변수를 새로운 변수에 할당할때마다  새로운 구조체(메모리)가 할당(값 자체를 복사)
 */

import Foundation

//Basic
class SomeClas {
    var count : Int = 0
    
}

struct SomeStruct {
    var count : Int = 0
}

var class1 = SomeClas()
var class2 = class1
var class3 = class1

class3.count = 12
print(class1.count) //12 모두 같은 값을 가리킴
print(class2.count) //12

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

print(struct2.count) //3 다른값을 가리킴
print(struct3.count) //4


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
