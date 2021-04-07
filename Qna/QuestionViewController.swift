//
//  QuestionViewController.swift
//  Qna
//
//  Created by 黃昌齊 on 2021/4/6.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel! //問題欄
    var manyQuestions = Questions()
    var questionNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNewRound()
    }
    
    //傳資料到下個 controller
    @IBSegueAction func showResult(_ coder: NSCoder) -> AnswerViewController? {
        let controller = AnswerViewController(coder: coder)
        controller?.num = questionNum
        return controller
    }
    
    
    @IBAction func PressYesButton(_ sender: UIButton) {
        //檢查如果大於23 就將資料傳到下個 controller
        questionNum = manyQuestions.pressYesButton()
        if questionNum < 23  {
            startNewRound()
        }
        else {
            performSegue(withIdentifier: "showResult", sender: nil)
            manyQuestions.questionNumber = 0
            startNewRound()
        }
    }
    
    @IBAction func PressNoButton(_ sender: UIButton) {
        
        questionNum = manyQuestions.pressNoButton()
        if questionNum < 22 {
            startNewRound()
        }
        else {
            performSegue(withIdentifier: "showResult", sender: nil)
            manyQuestions.questionNumber = 0
            startNewRound()
        }
    }
    
    //更新問題 Label
    func startNewRound() {
        questionLabel.text = manyQuestions.updateQuestionLabel()
    }

}
