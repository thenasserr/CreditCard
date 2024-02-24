//
//  CardCollectionViewCell.swift
//  CreditCard
//
//  Created by Ibrahim Nasser Ibrahim on 24/02/2024.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Constants
    static let identifier = String(describing: CardCollectionViewCell.self)
    
    // MARK: - Outlets
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
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    // MARK: - Configuration
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
        
        configureLabels()
    }
    
    private func configureLabels() {
        configureLabel(cardType, text: "CARD TYPE", font: UIFont(name: "Marker Felt", size: 12), textColor: .color)
        configureLabel(creditLabel, text: "CARD NUMBER", font: .systemFont(ofSize: 8, weight: .bold), textColor: .color)
        configureLabel(cardNumber, text: nil, font: .systemFont(ofSize: 16), textColor: .color)
        configureLabel(ownerLabel, text: "CARD HOLDER NAME", font: .systemFont(ofSize: 8, weight: .bold), textColor: .color)
        configureLabel(ownerName, text: nil, font: .boldSystemFont(ofSize: 10), textColor: .color)
        configureLabel(validLabel, text: "VALID THRU", font: .boldSystemFont(ofSize: 8), textColor: .color1)
        configureLabel(validDate, text: nil, font: .boldSystemFont(ofSize: 10), textColor: .color)
    }
    
    private func configureLabel(_ label: UILabel, text: String?, font: UIFont?, textColor: UIColor) {
        label.text = text
        label.font = font
        label.textColor = textColor
    }
}
