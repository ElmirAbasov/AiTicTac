//
//  GameViewController.swift
//  AiTicTac
//
//  Created by Elmir Abasov on 2021-01-08.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var playerName: UILabel!
   
    @IBOutlet weak var playerScoreLbl: UILabel!
    
    @IBOutlet weak var computerScoreLbl: UILabel!
    
    @IBOutlet weak var box1: UIImageView!
    @IBOutlet weak var box2: UIImageView!
    @IBOutlet weak var box3: UIImageView!
    @IBOutlet weak var box4: UIImageView!
    @IBOutlet weak var box5: UIImageView!
    @IBOutlet weak var box6: UIImageView!
    @IBOutlet weak var box7: UIImageView!
    @IBOutlet weak var box8: UIImageView!
    @IBOutlet weak var box9: UIImageView!
    
    var playerNme: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerName.text = playerNme + ":"
    }
    @IBAction func closeBtnClicked(_ sender: UIButton) {
    }
    
    
}
