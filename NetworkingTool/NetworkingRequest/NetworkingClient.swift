//
//  NetworkingClient.swift
//  NetworkingTool
//
//  Created by apple on 2017/6/7.
//  Copyright © 2017年 com.jinhu.caipiaoxo. All rights reserved.
//

import UIKit

class NetworkingClient: NSObject {
    //把Url 和Header放在这里 也可以放在外边
    static func requestLoginInfo (params:[String : Any],callback:@escaping (_ result:LoginInfoModel?) -> Void,errorCallBack:@escaping (_ error:Error?) -> Void){
        NetworkingRequest.sharedInstance.postRequest(urlString: "url", params: params, header: ["summer":"iOS"], success: callback,failture:errorCallBack)
    }
}
