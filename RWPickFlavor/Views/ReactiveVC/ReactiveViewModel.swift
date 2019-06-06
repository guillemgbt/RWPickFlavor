//
//  ReactiveViewModel.swift
//  RWPickFlavor
//
//  Created by Guillem Budia Tirado on 06/06/2019.
//  Copyright © 2019 MonkingMe. All rights reserved.
//

import RxSwift

class ReactiveViewModel: NSObject {
    
    let tabs: Observable<Int>
    private let _tabs: Variable<Int>
    
    override init() {
        _tabs = Variable(0)
        tabs = _tabs.asObservable()
    }
    
    func handleTab() {
        _tabs.value += 1
    }
    

}
