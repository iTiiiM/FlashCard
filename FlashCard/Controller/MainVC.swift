//
//  ViewController.swift
//  FlashCard
//
//  Created by Piyatat  Thianboonsong on 3/4/2562 BE.
//  Copyright © 2562 iTiiiM. All rights reserved.
//

import UIKit

enum FlashCardDifficulty {
    case beginner, intermediate, advanced
}

class MainVC: UIViewController {
    let toFlashCard = "toFlashCard"
    var flashCardDifficulty: FlashCardDifficulty?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lvlBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: toFlashCard, sender: nil)
        switch sender.tag {
        case 1:
            flashCardDifficulty = .intermediate
        case 2:
            flashCardDifficulty = .advanced
        default:
            flashCardDifficulty = .beginner
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toFlashCard{
            let destinationVC = segue.destination as? FlashCardVC
            destinationVC?.flashCardDifficulty = flashCardDifficulty
        }
    }
    
}

