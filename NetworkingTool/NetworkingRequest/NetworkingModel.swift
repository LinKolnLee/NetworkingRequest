//
//  NetworkingModel.swift
//  NetworkingTool
//
//  Created by apple on 2017/6/7.
//  Copyright © 2017年 com.jinhu.caipiaoxo. All rights reserved.
//

import UIKit
import MJExtension

protocol KResponseItemSerializable {
    init(anyObject:AnyObject)
}

protocol KResponseObjectSerializable {
    init(anyObject:AnyObject?)
}
class RequestResultModelV20:KResponseObjectSerializable {
    var ResponseStateCode:Int = -1
    /// 错误信息
    var Message:String = "未知错误"
    
    required init(anyObject:AnyObject?){
        if let anyObject = anyObject{
            debugPrint(anyObject)
            //可以在这里解析ResponseStateCode和请求消息
        }
    }
}

///返回纯数组对象，不包含errcode,用于实现带分页之类的model
class KRequestBaseList<T:KResponseItemSerializable>{
    ///返回对象数组
    var response:[T]
    
    init(anyObject: AnyObject){
        response = [T]()
        if let items = anyObject as? [NSDictionary]{
            for item in items{
                response.append(T(anyObject: item))
            }
        }else if let item = anyObject as? NSDictionary {
            response.append(T(anyObject: item))
        }
    }
}

///数据结构多层嵌套的时候使用
class KRequestBaseListWithJSON<T:NSObject>{
    ///返回对象数组
    var response:[T]
    
    init(anyObject: AnyObject){
        response = [T]()
        if let items = anyObject as? [NSDictionary]{
            for item in items{
                response.append(T.mj_object(withKeyValues: item))
            }
        }else if let item = anyObject as? NSDictionary {
            response.append(T.mj_object(withKeyValues: item))
        }
    }
}
