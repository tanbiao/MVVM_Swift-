//
//  TestViewModel.swift
//  MVVM
//
//  Created by 西乡流水 on 17/5/4.
//  Copyright © 2017年 西乡流水. All rights reserved.
//

import UIKit
import Alamofire

class TestViewModel: NSObject,Loadable
{
    /*重写协议的属性并且赋值*/
    typealias requestData = [giftModel]
    
    internal static var data: Array<giftModel>?
  
       
}

extension TestViewModel
{
    func dealData(_ result: Any) {
        
        TestViewModel.data = [giftModel]()
    }

}
