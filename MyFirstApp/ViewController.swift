//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Nick LAM YEE MAN on 26/03/2020.
//  Copyright © 2020 Nick LAM YEE MAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black;
    }

    @IBAction func showMessage(sender: UIButton) {

        let emojiDict: [String: String] = ["👾": "Alien",
                                           "🤖": "Robot",
                                           "☠️": "Skull",
                                           "👹": "Demon"];
        let selectedButton = sender;

        if let wordToLookup = selectedButton.titleLabel?.text {

            let meaning = emojiDict[wordToLookup];
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert);

            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }

}

