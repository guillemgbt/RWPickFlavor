//
//  ReactiveViewController.swift
//  RWPickFlavor
//
//  Created by Guillem Budia Tirado on 06/06/2019.
//  Copyright © 2019 MonkingMe. All rights reserved.
//

import UIKit
import RxSwift

class ReactiveViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let viewModel = ReactiveViewModel()
    
    private let bag = DisposeBag()
   
    init() {
        super.init(nibName: "ReactiveViewController",
                   bundle: Bundle(for: ReactiveViewController.self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bindTabs()
    }
    
    private func bindTabs() {
        viewModel.tabs.subscribe(onNext: { [weak self] (taps) in
            self?.label.text = "\(taps)"
        }).disposed(by: bag)
    }

    @IBAction func buttonAction(_ sender: Any) {
        viewModel.handleTab()
    }
}
