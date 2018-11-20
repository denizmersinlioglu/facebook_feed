//
//  Extensions.swift
//  FacebookFeed
//
//  Created by Deniz Mersinlioğlu on 20.06.2018.
//  Copyright © 2018 ArcheTech. All rights reserved.
//

import UIKit

extension UIView{
    func addConstraintsWithFormat(format: String, views: UIView...){
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated(){
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

extension UIColor{
    static func rgb(red redValue: CGFloat, green:CGFloat, blue:CGFloat) -> UIColor{
        return UIColor(red: redValue/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
