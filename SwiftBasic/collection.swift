//
//  collection.swift
//  SwiftBasic
//
//  Created by Young on 2021/08/29.
//
/*
 Array : 데이터 타입의 값들을 순서대로 저장하는 리스트
 Dictionary : 순서없이 키와 값 한 쌍으로 데이터를 저장하는 컬렉션
 Set : 같은 데이터 타입의 값을 순서없이 저장하는 리스트
 */

import Foundation

//Array
var numbers: Array<Int> = Array<Int>() //Array 생성
numbers.append(1)
numbers.append(2)
numbers.append(3)
numbers.insert(4, at: 1)  //삽입, [1, 4, 2, 3]
numbers.remove(at: 0)     //제거 => remove(at: index) [4, 2, 3]


//Dictionary
var dictionary: Dictionary<String, Int> = Dictionary<String, Int>()
var dicSec: [String : Int] = ["변정영":1]   //축약형
dicSec["Swift"] = 2
dicSec["Python"] = 3  //추가 ,단 순서는 없다
dicSec["Python"] = 0  //값 변경["Swift": 2, "Python": 0, "변정영": 1]
dicSec.removeValue(forKey: "Python")  //Key값을 통해서 해당 key의 값을 제거한다 => ["변정영": 1, "Swift": 2]


//Set
var set: Set = Set<Int>()  //축약형이  따로없다

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)  //[20, 30, 10]

set.remove(20)  //순서가 없으므로 값으로 제거힌다  [10, 30]
