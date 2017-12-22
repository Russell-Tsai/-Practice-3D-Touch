//
//  ViewController.swift
//  3D Touch
//
//  Created by 蔡松樺 on 22/12/2017.
//  Copyright © 2017 蔡松樺. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "3D Touch Practice"
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        //確認有 3D touch 功能
        if traitCollection.forceTouchCapability == .available {
            registerForPreviewing(with: self as UIViewControllerPreviewingDelegate, sourceView: self.view)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue" {
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.myName = "Russell SHOP"
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = "MY SHOP"
        cell.detailTextLabel?.text = "One Product in there"
        
        return cell
    }
}

extension ViewController: UIViewControllerPreviewingDelegate {
    //按壓時提供預覽
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        //產生跳出的 ViewController (Peek)
        guard let detailViewController = storyboard?.instantiateViewController(withIdentifier: "myDetailViewController") as? DetailViewController else {
            return nil
        }
        
        return detailViewController
    }
    //提交 ViewController 時發動 (Pop)
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        show(viewControllerToCommit, sender: self)
    }
    
}

