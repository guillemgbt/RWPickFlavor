//
//  ReactiveViewController.swift
//  RWPickFlavor
//
//  Created by Guillem Budia Tirado on 06/06/2019.
//  Copyright © 2019 MonkingMe. All rights reserved.
//

import UIKit

class ReactiveViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    private var taps = 0 {
        didSet{
            label?.text = "\(taps)"
        }
    }
   
    init() {
        super.init(nibName: "ReactiveViewController",
                   bundle: Bundle(for: ReactiveViewController.self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        taps = 0
    }

    @IBAction func buttonAction(_ sender: Any) {
        taps += 1
    }
}
