//
//  PeekViewController.swift
//  3DTouchDemo
//
//  Created by HLH on 2017/2/24.
//  Copyright © 2017年 胡良海. All rights reserved.
//

import UIKit

class PeekAndPopViewController: UIViewController {

    let contentLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkGray
        
        contentLabel.text = "Peek View"
        contentLabel.frame = CGRect.init(origin: .zero, size: CGSize.init(width: 200, height: 100))
        contentLabel.textColor = UIColor.brown
        contentLabel.font = UIFont.boldSystemFont(ofSize: 17)
        contentLabel.center = view.center
        view.addSubview(contentLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
