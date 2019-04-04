//
//  FlashCardVC.swift
//  FlashCard
//
//  Created by Piyatat  Thianboonsong on 3/4/2562 BE.
//  Copyright © 2562 iTiiiM. All rights reserved.
//

import UIKit

class FlashCardVC: UIViewController {

    var flashCardLvl = ""
    var cardList: FlashCard?
     @IBOutlet weak var flashCardView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setFlashCardLvl()
        flashCardView.isUserInteractionEnabled = true
        let tapViewGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapViewGesture))
        flashCardView.addGestureRecognizer(tapViewGesture)
        // Do any additional setup after loading the view.
    }
    
    @objc func tapViewGesture(){
        print("Tapped View")
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
    
    
    func setFlashCardLvl(){
        switch flashCardLvl {
        case "Beginner":
            cardList = FlashCard(words: ["Cry", "Draw"], meaning: ["shed tears, typically as an expression of distress, pain, or sorrow.", "produce (a picture or diagram) by making lines and marks, especially with a pen or pencil, on paper."])
            
//        case "Intermediate":
//
//        case "Advanced":
        default:
            break
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
