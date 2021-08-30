//
//  Optional.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/29.
//

import Foundation

//Optional
var name : String? //nil
var optionalName: String? = "William"
var requiredName: String = optionalName! // Optional("william") 포장지를 벗기자

//Optional Binding

var number: Int? = 3
print(number) //Optional(3)
print(number!)// 강제 해제 =>3

//if let 바인딩 => if 블록에서만 사용가능
if let result = number{
    print(result)
} else {}

//guard => guard다음 함수 전체에서 사용가능하다
func test() {
    let number : Int? = 5
    guard let result = number else {return}
    print(result)
}
test()

//컴파일러에 의한 자동해제 => 옵셔널 값을 비교연산자와 함께 사용시 컴파일러가 자동으로 옵셔널값을 해제시켜줌
let value : Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다")
}
//value가 6입니다.

//묵시적해제

let string = "11"
var stringToInt : Int! =  Int(string)
//이때 stringToInt는 optional(11) => string에 문자가 오면 nil이기 때문
//따라서 옵셔널 적용! => 이 예제에서는 반드시 값이 있다면 이렇게 사용할수 있다는것을 보여주는것일 뿐
print(stringToInt + 1)
