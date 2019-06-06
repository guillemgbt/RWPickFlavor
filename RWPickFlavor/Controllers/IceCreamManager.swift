//
//  IceCreamManager.swift
//  Alamofire
//
//  Created by Guillem Budia Tirado on 06/06/2019.
//

import UIKit

public class IceCreamManager: NSObject {
    
    public static func show() -> UIViewController {
        let bundle = Bundle(for: PickFlavorViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        return storyboard.instantiateInitialViewController() ?? UIViewController()
    }

}
