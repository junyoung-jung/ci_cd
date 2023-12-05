//
//  ViewController.swift
//  ci_cd
//
//  Created by 정준영 on 12/4/23.
//

import UIKit

class ViewController: UIViewController {
    // test jhgjhgjh
    @IBOutlet weak var label: UILabel!
    
    var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let text = viewModel.transform(input: .init(inputString: "buttonTapped")).outputString
        label.text = text
    }
    
}

