//
//  quotesView.swift
//  Movie Quotes
//
//  Created by لمياء فالح الدوسري on 17/05/1443 AH.
//

import UIKit

class quotesView: UIViewController {

    @IBOutlet weak var textLable: UILabel!
var qText=""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textLable.text=qText
    }
    

    
}
