//
//  ViewController.swift
//  simpleDraw
//
//  Created by Dor Rubin on 10/15/16.
//  Copyright © 2016 Dor Rubin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var drawView: DrawView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearTapped() {
        let theDrawView : DrawView = drawView as DrawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    }

    @IBAction func saveImage(sender: UIButton) {
        print("saveImage")
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        let sourceImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(sourceImage, nil, nil, nil)
    }
    
}

