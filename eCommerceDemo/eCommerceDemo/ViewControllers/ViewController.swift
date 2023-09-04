//
//  ViewController.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateSearchVC(_ sender: Any) {
        
        guard let aVC = Storyboard.main.storyboard.instantiateViewController(withIdentifier: StoryboardId.SearchProductVC) as? SearchProductVC else { return }
        self.present(aVC, animated: true)
    }
    
}

