//
//  ViewController.swift
//  3DTouchDemo
//
//  Created by HLH on 2017/2/24.
//  Copyright © 2017年 胡良海. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIViewControllerPreviewingDelegate {

    let imageView = UIImageView.init(image: #imageLiteral(resourceName: "cat"))
    override func viewDidLoad() {
        super.viewDidLoad()
        var imageSize = #imageLiteral(resourceName: "cat").size
        let ratio = view.frame.size.width / imageSize.width
        imageSize.width *= ratio
        imageSize.height *= ratio
        imageView.frame = CGRect.init(origin: .zero, size: imageSize)
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        imageView.center = view.center
        imageView.isUserInteractionEnabled = true
        view.addSubview(imageView)
        if self.traitCollection.forceTouchCapability == UIForceTouchCapability.available {
            // 先检测3dtouch是否可用
            self.registerForPreviewing(with: self, sourceView: view)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UIViewControllerPreviewingDelegate
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        // pop操作
        viewControllerToCommit.view.backgroundColor = UIColor.green
        self.show(viewControllerToCommit, sender: self) // 展示视图
        
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        // peek 操作
        let peekViewController = PeekAndPopViewController()
        peekViewController.preferredContentSize = CGSize.init(width: 0, height: 350)
        
        // 用于将imageview周围的视图产生模糊效果
        previewingContext.sourceRect = imageView.frame
        return peekViewController
    }
    
    // peek 上滑显示actions
    override var previewActionItems: [UIPreviewActionItem]{
        let firstItem = UIPreviewAction.init(title: "firstAction", style: UIPreviewActionStyle.default) { (action, controller) in
            
        }
        
       let secondItem = UIPreviewAction.init(title: "secondAction", style: UIPreviewActionStyle.selected) { (action, controller) in
        
        }
        let thirdItem = UIPreviewAction.init(title: "thirdAction", style: UIPreviewActionStyle.destructive) { (action, controller) in
            
        }
        return [firstItem,secondItem,thirdItem]
        
    }
}

