//
//  DetailViewController.swift
//  3D Touch
//
//  Created by 蔡松樺 on 22/12/2017.
//  Copyright © 2017 蔡松樺. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var myName : String!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = myName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
