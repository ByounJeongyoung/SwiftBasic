//
//  편의생성자.swift
//  SwiftBasic
//
//  Created by Young on 2021/09/01.
//

import Foundation

class Aclass{
    var x : Int
    var y : Int
    
    init(x : Int, y: Int){
        self.x = x
        self.y = y
    }
    
    convenience init(){
        self.init(x: 0 , y : 0)
    }
}

class Bclass : Aclass {
    var z : Int
    
    init(x : Int, y : Int, z: Int){  //지정생성자는 자신의 저장속성 초기화 먼저 후 상위 지정생성자 호출
        self.z = z
        super.init(x: x, y: y)
    
    }
    
    convenience init(z: Int){
       // self.z = z   오류 메모리 접근 전 접근!
        self.init(x: 0 , y : 0, z:z )

    }
}

var bclass = Bclass(z: 3)
print("\(bclass.z)")
