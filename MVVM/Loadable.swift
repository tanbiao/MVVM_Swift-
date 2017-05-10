//
//  Loadable.swift
//  MVVM
//
//  Created by 西乡流水 on 17/5/4.
//  Copyright © 2017年 西乡流水. All rights reserved.
//

import UIKit


protocol Loadable
{
    associatedtype requestData
    static var data : requestData? {get set}
    
    func dealData(_ result :Any)
}

extension Loadable
{
//    static var data : requestData? {
//    
//        return nil
//    }
}

extension Loadable
{
    func requstData(completion :()->())
    {
        let dict = ["name" : "张三"]
        self.dealData(dict)
        completion()
    }
}
