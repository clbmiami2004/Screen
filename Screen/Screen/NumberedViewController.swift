//
//  NumberedViewController.swift
//  Screen
//
//  Created by Lambda_School_Loaner_201 on 10/1/19.
//  Copyright © 2019 Lambda_School_Loaner_201. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {
    
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))

    
    //Always super.
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.addSubview(label)
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = view.center
        
        //label.backgroundColor = .brown
    }
    
    
    //Always call super.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = "\(number)"
            //label.text = String(number)
            
    //label.backgroundColor = .brown // make sure view is where it's supposed to be. 
        }
    }
    
    
    @IBAction func goToRot(_ sender: Any) {

        navigationController?.popViewController(animated: true)
    }

}
