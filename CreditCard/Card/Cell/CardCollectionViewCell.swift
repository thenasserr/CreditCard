//
//  CardCollectionViewCell.swift
//  CreditCard
//
//  Created by Ibrahim Nasser Ibrahim on 24/02/2024.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CardCollectionViewCell.self)

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var ownerName: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var creditLabel: UILabel!
    @IBOutlet weak var cardType: UILabel!
    @IBOutlet weak var bankLogo: UIImageView!
    @IBOutlet weak var cvvNumber: UILabel!
    @IBOutlet weak var cvvLabel: UILabel!
    @IBOutlet weak var validDate: UILabel!
    @IBOutlet weak var validLabel: UILabel!
    @IBOutlet weak var cardNumber: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    func setup(card: Card) {
        cardNumber.text = card.number
        validDate.text = card.date
        cvvNumber.text = card.cvv
        bankLogo.image = UIImage(named: card.logo)
        cardImage.image = UIImage(named: card.image)
        ownerName.text = card.name
        cardType.text = card.type
    }
    
    private func configureUI() {
        stackView.layer.cornerRadius = 15
        cardImage.layer.cornerRadius = 15
        layer.cornerRadius = 15
        
        cardType.textColor = .color
        cardType.font = UIFont(name: "Marker Felt", size: 12)
        
        creditLabel.text = "CARD NUMBER"
        creditLabel.font = .systemFont(ofSize: 8, weight: .bold)
        creditLabel.textColor = .color
        
        cardNumber.textColor = .color
        cardNumber.font = .systemFont(ofSize: 16)
        
        ownerLabel.text = "CARD HOLDER NAME"
        ownerLabel.textColor = .color
        ownerLabel.font = .systemFont(ofSize: 8, weight: .bold)
        
        ownerName.textColor = .color
        ownerName.font = .boldSystemFont(ofSize: 10)
        
        validLabel.text = "VALID THRU"
        validLabel.textColor = .color1
        validLabel.font = .boldSystemFont(ofSize: 8)
        
        validDate.font = .boldSystemFont(ofSize: 10)
        validDate.textColor = .color
    }

}

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
