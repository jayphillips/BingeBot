//
//  ViewController.swift
//  BingeBot
//
//  Created by Jay Phillips on 9/6/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingeBotSpokenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowButton: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
        
        
    }
    
    func updateShowsLabel() {
        showsLabel.text = shows.joined(separator: ", ")
    }
    @IBAction func randomShowBingeButtonWasPressed(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        randomShowLabel.isHidden = false
        bingeBotSpokenLabel.isHidden = false
    }
    
    @IBAction func addShowButtonWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else { return }
        
        shows.append(showName)
        updateShowsLabel()
        addShowTextField.text = ""
        showsStackView.isHidden = false
        
        if shows.count > 1 {
            randomShowStackView.isHidden = false
            bingeBotSpokenLabel.isHidden = true
            randomShowLabel.isHidden = true
        }
    }
    

}

