//
//  Protocol.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/30.
//

import Foundation
/*
프로토콜이란?
특정 역할을 하기 위한 메소드, 프로퍼티, 기타 요구사항 등의 청사진
 
프로토콜의 사용
 
=>  구조체, 클래스, 열거형은 프로토콜을 채택해서 "특정 기능"을 실행하기 위한 프로토콜의 요구사항을 실제로 구현할 수 있다.
    프로토콜은 정의를 하고 제시를 할 뿐 스스로 기능을 구현하지는 않는다. (조건만 정의)
    "하나의 타입"으로 사용되기 때문에 아래와 같이 타입 사용이 허용되는 모든 곳에 프로토콜을 사용할 수 있다.

- 함수, 메소드, 이니셜라이저의 파라미터 타입 혹은 리턴 타입
- 상수, 변수, 프로퍼티의 타입
- 배열, 딕셔너리의 원소타입
 */


//기본형태
protocol 프로토콜이름 {
 // 프로토콜 정의
}

//구조체, 클래스, 열거형 등에서 프로토콜을 채택하려면 타입 이름 뒤에 콜론“:”을 붙여준 후
//채택할 프로토콜 이름을 쉼표“,”로 구분하여 명시해준다. (SubClass의 경우 SuperClass를 가장 앞에 명시한다.)

struct SomeStruct: AProtocol, AnotherProtocol {
 // 구조체 정의
}

// 상속받는 클래스의 프로토콜 채택
class SomeClass: SuperClass, AProtocol, AnotherProtocol {
 // 클래스 정의
}

/*
 Property Requirments: 프로토콜에서는 프로퍼티가 저장프로퍼티인지 연산프로퍼티인지 명시하지 않고,
                       이름과 타입 그리고 gettable, settable한지 명시한다.(프로퍼티는 항상 var로 선언해야 한다.)
 */
protocol Student {
  var height: Double { get set }
  var name: String { get }
  static var schoolNumber: Int { get set }
}
/*
해당 프로토콜은 학생의 키, 이름, 학번을 정의하였고, 이를 체택하는 타입은 해당 프로퍼티를 구현해줘야한다.
프로퍼티는 저장 프로퍼티나 연산 프로퍼티 둘다 사용해서 구현할 수 있다.

 Method Requirements: 프로토콜에서는 인스턴스 메소드와 타입 메소드를 정의할 수 있다.
                      하지만 메소드 파라미터의 기본 값은 프로토콜 안에서 사용할 수 없다.
                      메소드를 정의할 때 함수명과 반환값을 지정할 수 있고, {}는 적지 않는다.
 mutating 키워드를 사용해 인스턴스에서 변경 가능하다는 것을 표시할 수 있다. (값 타입에서만 사용 가능)
 */
protocol Person {
  static func breathing()
  func sleeping(time: Int) -> Bool
  mutating func running()
}
/*
Initializer Requirements : 프로토콜에서는 이니셜라이저도 정의할 수 있다.
                           실패가능한 이니셜라이저도 선언할 수 있다.
 */
protocol SomeProtocol {
  init(someParameter: Int)
}

//프로토콜에서 특정 이니셜라이저가 필요하다고 명시했기 때문에 구현할때 해당 이니셜라이저에 required 키워드를 붙여줘야 한다.

class SomeClass: SomeProtocol {
  required init(someParameter: Int) {
    // 구현부
  }
}
//특정 프로토콜의 required 이니셜라이저를 구현하고, SuperClass의 이니셜라이저를 SubClass에 상속하는 경우
//SubClass의 이니셜라이저 앞에 required 키워드와 override 키워드를 붙여줘야 한다.

protocol SomeProtocol {
  init()
}

class SomeSuperClass {
  init() {
    // 구현부
  }
}

class SomeSubClass: SomeSuperClass, SomeProtocol {
  required override init() { //상속받은 슈퍼클래스에서 프로토콜의 이니셜라이징을 할때 서브클래스에서도 해줘야한다
    // 구현부
  }
}

