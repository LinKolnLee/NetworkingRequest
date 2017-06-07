//
//  ViewController.swift
//  NetworkingTool
//
//  Created by apple on 2017/6/7.
//  Copyright © 2017年 com.jinhu.caipiaoxo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        NetworkingClient.requestLoginInfo(params: ["":""], callback: { (result) in
            debugPrint(result?.model?.response)
        }) { (error) in
            debugPrint(error)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

