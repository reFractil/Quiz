//
//  ViewController.swift
//  Quiz
//
//  Created by Efra Hdz on 13/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    private let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    private let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    private var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }
    
}

