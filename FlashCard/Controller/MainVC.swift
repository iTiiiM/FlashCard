//
//  ViewController.swift
//  FlashCard
//
//  Created by Piyatat  Thianboonsong on 3/4/2562 BE.
//  Copyright © 2562 iTiiiM. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    let toFlashCard = "toFlashCard"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lvlBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: toFlashCard, sender: sender.titleLabel?.text)
//        switch sender.titleLabel?.text {
//        case "Beginner":
//            print("beginner")
//        case "Intermediate":
//
//        case "Advanced":
//        default:
//
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toFlashCard{
            let destinationVC = segue.destination as? FlashCardVC
            destinationVC?.flashCardLvl = sender as! String
        }
    }
    
}

