//
//  ArrayExt.swift
//  Yozi.Lib
//
//  Created by Олег Мишкин on 19/01/2020.
//  Copyright © 2020 Олег Мишкин. All rights reserved.
//

extension Array {
    func lastIndex() -> Int { return self.count - 1 }
    func lastIndex(offsetBy: Int) -> Int { return self.count - offsetBy - 1 }
}
