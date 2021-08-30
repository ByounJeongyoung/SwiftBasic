//
//  assert_guard.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/30.
//

/*
 assert:
    -특정 조건을 체크하고 조건이 성립되지 않으면 메세지를 출력하게 할수
    -assert함수는 디버깅 모드에서만 동작 하고 주로 디버깅 중 조건의 검증을 위하여 사용
 
 guard문
    -뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정하는것 => early exit
    -guard문에 주어진 조건문이 거짓일때 구문이 실행됨
 */
import Foundation

//assert
var value = 0
assert(value == 0)

//value = 2
//assert(value == 0, "값이 0이 아닙니다")   => error
//SwiftBasic/main.swift:23: Assertion failed: 값이 0이 아닙니다

//guard


func guardTest(value: Int?) {
    guard let value = value else {return}
    //이후에 계속해서 value를 사용할수있다.
    print("\(value)값이 있습니다." )
}

guardTest(value: 4)

