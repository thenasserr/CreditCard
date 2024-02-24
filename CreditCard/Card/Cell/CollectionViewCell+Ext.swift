//
//  CollectionViewCell+Ext.swift
//  CreditCard
//
//  Created by Ibrahim Nasser Ibrahim on 24/02/2024.
//

import UIKit

extension UICollectionViewCell {
    func transformToLarge() {
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }
    }
    
    func transformToStandard() {
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform.identity
        }
    }
}
