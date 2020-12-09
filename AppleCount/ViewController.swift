//
//  ViewController.swift
//  AppleCount
//
//  Created by Kai Pilgrim on 08/12/2020.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    
    
    @IBOutlet weak var buttonR0: UIButton!
    @IBOutlet weak var buttonR1: UIButton!
    @IBOutlet weak var buttonR2: UIButton!
    @IBOutlet weak var buttonR3: UIButton!
    @IBOutlet weak var buttonR4: UIButton!
    @IBOutlet weak var buttonR5: UIButton!
    @IBOutlet weak var buttonR6: UIButton!
    @IBOutlet weak var buttonR7: UIButton!
    @IBOutlet weak var buttonR8: UIButton!
    @IBOutlet weak var buttonR9: UIButton!
    
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var counter: UILabel!
    
    
    @IBOutlet weak var apple0: DragImageView!
    
    @IBOutlet weak var apple1: DragImageView!
    
    @IBOutlet weak var apple2: DragImageView!
    
    @IBOutlet weak var apple3: DragImageView!
    
    @IBOutlet weak var apple4: DragImageView!
    
    @IBOutlet weak var apple5: DragImageView!
    
    @IBOutlet weak var apple6: DragImageView!
    
    @IBOutlet weak var apple7: DragImageView!
    
    @IBOutlet weak var apple8: DragImageView!
    
    @IBOutlet weak var apple9: DragImageView!
    
    
    
    
    
    
    var scoreCounter = 0
    var leftNumber = 0
    var rightNumber = 0
    var answer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setQuiz()
        secondView.isHidden = true
    }
    
    
    func setQuiz(){
        
         leftNumber = Int.random(in: 0 ... 4)
         rightNumber = Int.random(in: 0 ... 4)
        
         answer = leftNumber + rightNumber
        
        questionLabel.text = String(format: "%d + %d = ?", leftNumber, rightNumber)
    }
     
    
    
    @IBAction func on0click(_ sender: UIButton) {
        checkAnswer(x: 0)
    }
    
    
    @IBAction func on1click(_ sender: UIButton) {
        checkAnswer(x: 1)
    }
    
    @IBAction func on2click(_ sender: UIButton) {
        checkAnswer(x: 2)
    }
    
    @IBAction func on3click(_ sender: UIButton) {
        checkAnswer(x: 3)
    }
    
    
    @IBAction func on4click(_ sender: UIButton) {
        checkAnswer(x: 4)
    }
    
    
    @IBAction func on5click(_ sender: UIButton) {
        checkAnswer(x: 5)
    }
    
    
    @IBAction func on6click(_ sender: UIButton) {
        checkAnswer(x: 6)
    }
    
    
    @IBAction func on7click(_ sender: UIButton) {
        checkAnswer(x: 7)
    }
    
    @IBAction func on8click(_ sender: UIButton) {
        checkAnswer(x: 8)
    }
    
    @IBAction func on9click(_ sender: UIButton) {
        checkAnswer(x: 9)
    }
    
    
    
    func checkAnswer(x: Int ){
        if x == answer{
            secondView.isHidden = false
            answerLabel.text = String(format: "%d + %d = %d", leftNumber, rightNumber, answer)
            scoreCounter += 1
            counter.text = String(format: "%d", scoreCounter)
        }
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        secondView.isHidden = true
        setQuiz()
    }
    
    
}

