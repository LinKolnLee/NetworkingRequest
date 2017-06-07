//
//  LoginInfoModel.swift
//  NetworkingTool
//
//  Created by apple on 2017/6/7.
//  Copyright © 2017年 com.jinhu.caipiaoxo. All rights reserved.
//

import UIKit
class LoginInfoItem:KResponseItemSerializable{
    var name = ""
    var age  = ""
    var sex = ""
    required init(anyObject: AnyObject) {
        debugPrint(anyObject)
        //在这里根据类型解析出数据来绑定
    }
}
class LoginInfoModel: RequestResultModelV20 {
    var model : KRequestBaseList<LoginInfoItem>?
    required init(anyObject: AnyObject?) {
        super.init(anyObject: anyObject)
        if let v = anyObject{
            //基本信息在父类里解析
            if let r = v.value(forKeyPath: "Data"){
                model = KRequestBaseList<LoginInfoItem>(anyObject:r as AnyObject)
            }
        }
    }
}
