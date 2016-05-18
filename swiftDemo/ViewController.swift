//
//  ViewController.swift
//  swiftDemo
//
//  Created by Kelly on 16/5/18.
//  Copyright © 2016年 Kelly. All rights reserved.
//

import UIKit
import SnapKit
import SwiftForms

class ViewController: FormViewController {
//    lazy var box = UIView()
    
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.addSubview(box)
//        box.backgroundColor = UIColor.redColor()
//        box.snp_makeConstraints { make in
//            make.width.height.equalTo(50)
//            make.center.equalTo(self.view)
//        }
        // Create form instace
        let form = FormDescriptor(title:"swift Demo 1")
        
        // Define first section
        let section1 = FormSectionDescriptor(headerTitle: "模块", footerTitle: "")
        
        var row: FormRowDescriptor! = FormRowDescriptor(tag: "name", rowType: .Email, title: "Email")
        section1.addRow(row)
        
        row = FormRowDescriptor(tag: "pass", rowType: .Password, title: "Password")
        section1.addRow(row)
        
        row = FormRowDescriptor(tag: "网络Alarmofire", rowType: .Button, title: "网络Alarmofire")
        row.configuration[FormRowDescriptor.Configuration.DidSelectClosure] = {
                NSLog("press")
            } as DidSelectClosure
        section1.addRow(row)
        
        row = FormRowDescriptor(tag: "数据存储", rowType: .Button, title: "数据存储")
        row.configuration[FormRowDescriptor.Configuration.DidSelectClosure] = {
            NSLog("press")
            } as DidSelectClosure
        section1.addRow(row)
        
        row = FormRowDescriptor(tag: "UI模块", rowType: .Button, title: "UI模块")
        row.configuration[FormRowDescriptor.Configuration.DidSelectClosure] = {
            NSLog("press")
            } as DidSelectClosure
        section1.addRow(row)
        
        form.sections = [section1]
        
        self.form = form
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

