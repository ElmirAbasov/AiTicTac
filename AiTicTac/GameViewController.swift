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
    var lastValue = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerName.text = playerNme + ":"
        
        createTap(on: box1, type: .one)
        createTap(on: box2, type: .two)
        createTap(on: box3, type: .three)
        createTap(on: box4, type: .four)
        createTap(on: box5, type: .five)
        createTap(on: box6, type: .six)
        createTap(on: box7, type: .seven)
        createTap(on: box8, type: .eight)
        createTap(on: box9, type: .nine)
       
        
    }
    func createTap(on imageView: UIImageView, type box: Box) {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.boxClicked(_:)))
        tap.name = box.rawValue
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tap)
    }
    @objc func boxClicked(_ sender: UITapGestureRecognizer){
        let selectedBox = getBox(from: sender.name ?? "")
      makeChoice(selectedBox)
        
    }
    func aiPlay() {
        var availableSpaces = [UIImageView]()
        for name in Box.allCases {
            let box = getBox(from: name.rawValue)
            if box.image == nil {
                availableSpaces.append(box)
            }
        }
        let randIndex = Int.random(in: 0 ..< availableSpaces.count)
        makeChoice(availableSpaces[randIndex])
    }
    
    func makeChoice(_ selectedBox: UIImageView) {
        guard selectedBox.image == nil else { return }
        if lastValue == "x" {
            selectedBox.image = #imageLiteral(resourceName: "ic_o")
            lastValue = "0"
        } else {
            selectedBox.image = #imageLiteral(resourceName: "ic_x")
            lastValue = "x"
        }
    }
    func getBox(from name: String) -> UIImageView {
        let box = Box(rawValue: name) ?? .one
        
        switch box {
        case .one:
            return box1
        case .two:
            return box2
        case .three:
            return box3
        case .four:
            return box4
        case .five:
            return box5
        case .six:
            return box6
        case .seven:
            return box7
        case .eight:
            return box8
        case .nine:
            return box9
        }
    }
    
    @IBAction func closeBtnClicked(_ sender: UIButton) {
       
    }
    
}
enum Box: String, CaseIterable {
    case one, two, three, four, five, six, seven, eight, nine
    
}
