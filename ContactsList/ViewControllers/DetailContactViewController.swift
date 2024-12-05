//
//  DetailContactViewController.swift
//  ContactsList
//
//  Created by Alexander Shevtsov on 04.12.2024.
//

import UIKit
import AlamofireImage

final class DetailContactViewController: UIViewController {
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var userImageView: UIImageView! {
        didSet {
            userImageView.layer.cornerRadius = userImageView.bounds.height / 2
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValues(with: user)
    }
    
    private func setValues(with user: User) {
        firstNameLabel.text = user.name.first
        lastNameLabel.text = user.name.last
        
        guard let imageURL = URL(string: user.picture.large) else { return }
        userImageView.af.setImage(withURL: imageURL)
    }
}
