//
//  DetailViewController.swift
//  SwiftCoreData
//
//  Created by 有村 琢磨 on 2015/07/17.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {


    @IBOutlet var memberNameLabel: UITextField!
    @IBOutlet var campNameLabel: UITextField!
    @IBOutlet var courceLabel: UITextField!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.memberNameLabel{
                label.text = detailItem?.valueForKey("name")!.description
            }
            if let label = self.campNameLabel{
                label.text = detailItem?.valueForKey("campName")!.description
            }
            if let label = self.courceLabel{
                label.text = detailItem?.valueForKey("cource")!.description
            }
        }
    }

    func saveContext(){
        let context :NSManagedObjectContext? = self.detailItem?.managedObjectContext
        
    }
    
    @IBAction func changedName(sender: UITextField) {
        self.detailItem?.setValue(self.memberNameLabel.text, forKey: "name")
        self.saveContext()
    }
    
    @IBAction func changedCampName(sender: UITextField) {
        self.detailItem?.setValue(self.campNameLabel.text, forKey: "campName")
        self.saveContext()
    }
    
    @IBAction func changedCource(sender: AnyObject) {
        self.detailItem?.setValue(self.courceLabel.text, forKey: "cource")
        self.saveContext()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

