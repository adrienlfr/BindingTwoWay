//
//  ProfileViewController.swift
//  MVVM
//
//  Created by Adrien Lefaure on 27/02/2019.
//  Copyright © 2019 Adrien Lefaure. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    
    var viewModel = ProfileViewModel()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupBinding()
    }

    func setupBinding() {
        textFieldFirstName.bind(with: viewModel.firstName)
        textFieldLastName.bind(with: viewModel.lastName)
        
        labelFirstName.bind(with: viewModel.firstName)
        labelLastName.bind(with: viewModel.lastName)
    }
}
